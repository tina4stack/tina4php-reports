{*******************************************************}
{                                                       }
{       Report Manager                                  }
{                                                       }
{       TRpInfoProvider GDI                             }
{       Provides information about fonts                }
{                                                       }
{       Copyright (c) 1994-2019 Toni Martir             }
{       toni@reportman.es                                   }
{                                                       }
{                                                       }
{*******************************************************}

unit rpinfoprovgdi;

{$I rpconf.inc}


interface

uses Classes,SysUtils,Windows,rpinfoprovid,SyncObjs,
{$IFDEF DOTNETD}
 System.Runtime.InteropServices,
{$ENDIF}
    rpmdconsts,rptypes, VCL.Graphics;

const
 MAXKERNINGS=10000;

type

 //TGetCharPlac=function (DC: HDC; p2: PWideChar; p3, p4:integer;
 //  var p5: TGCPResults; p6: DWORD): DWORD;stdcall;
 // external 'gdi32.dll' name 'GetCharacterPlacementW'
 TRpGDIInfoProvider=class(TRpInfoProvider)
  adc:HDC;
  fonthandle:THandle;
  //bitmap: VCL.Graphics.TBitmap;
  currentname:String;
  currentstyle:integer;
  //GetCharPlac:TGetCharPlac;
  //gdilib:THandle;
  procedure SelectFont(pdffont:TRpPDFFOnt);
  procedure FillFontData(pdffont:TRpPDFFont;data:TRpTTFontData);override;
  function GetCharWidth(pdffont:TRpPDFFont;data:TRpTTFontData;charcode:widechar):Integer;override;
  function GetKerning(pdffont:TRpPDFFont;data:TRpTTFontData;leftchar,rightchar:widechar):integer;override;
  constructor Create;
  destructor Destroy;override;
 end;

implementation

//var
// adc:ThAndle;
// critsec:TCriticalSection;
const
 TTF_PRECISION=1000;


constructor TRpGDIInfoProvider.Create;
var
 ddc:THandle;
begin
 inherited Create;
 currentname:='';
 currentstyle:=0;
 fonthandle:=0;
//  gdilib:=LoadLibrary('gdi32.dll');
//  if gdilib=0 then
//   RaiseLastOsError;
//  GetCharPlac:=GetProcAddress(gdilib,'GetCharacterPlacementW');
//  if not Assigned(GetCharPlac) then
//   RaiseLastOsError;
// bitmap:=VCL.Graphics.TBitmap.Create;
// bitmap.PixelFormat:=pf32bit;
// bitmap.Width:=10;
// bitmap.Height:=10;
 adc:=GetDc(0);
// adc:=bitmap.Canvas.Handle;
end;

destructor TRpGDIInfoProvider.destroy;
begin
 if fonthandle<>0 then
  DeleteObject(fonthandle);
// if gdilib<>0 then
//  FreeLibrary(gdilib);
// bitmap.Free;
 inherited destroy;
end;

procedure TRpGDIInfoProvider.SelectFont(pdffont:TRpPDFFOnt);
var
 LogFont:TLogFont;
 i:integer;
{$IFDEF DOTNETD}
 afontname:string;
{$ENDIF}
 lastError:Integer;
begin
 if ((currentname=pdffont.WFontName) and (currentstyle=pdffont.Style)) then
  exit;
 currentname:=pdffont.WFontName;
 currentstyle:=pdffont.Style;
 if fonthandle<>0 then
 begin
  DeleteObject(fonthandle);
  fonthandle:=0;
 end;
 LogFont.lfHeight:=Round(-TTF_PRECISION*GetDeviceCaps(adc,LOGPIXELSX)/72);

 LogFont.lfWidth:=0;
 LogFont.lfEscapement:=0;
 LogFont.lfOrientation:=0;

 if (pdffont.style and 1)>0 then
  LogFont.lfWeight:=FW_BOLD
 else
  LogFont.lfWeight:=FW_NORMAL;
 if (pdffont.style and (1 shl 1))>0 then
  LogFont.lfItalic:=1
 else
  LogFont.lfItalic:=0;
 if (pdffont.style and (1 shl 2))>0 then
  LogFont.lfUnderline:=1
 else
  Logfont.lfUnderline:=0;
 if (pdffont.style and (1 shl 3))>0 then
  LogFont.lfStrikeOut:=1
 else
  LogFont.lfStrikeOut:=0;
 LogFont.lfCharSet:=DEFAULT_CHARSET;
 lOGfONT.lfOutPrecision:=OUT_tt_onLy_PRECIS;
 LogFont.lfClipPrecision:=CLIP_DEFAULT_PRECIS;
 LogFont.lfEscapement:=0;
 LogFont.lfOrientation:=0;
 // Low Quality high measurement precision
 // LogFont.lfQuality:=Draft_QUALITY;
 // Improving quality
 LogFont.lfQuality:=PROOF_QUALITY;
 LogFont.lfPitchAndFamily:=FF_DONTCARE or DEFAULT_PITCH;
 for i := 0 to LF_FACESIZE-1 do
 begin
  logfont.lfFaceName[i]:=WideChar(0);
 end;
 StrPCopy(LogFont.lffACEnAME,Copy(pdffont.WFontName,1,LF_FACESIZE));

 Fonthandle:= CreateFontIndirect(LogFont);
 if (FontHandle=0) then
 begin   
  lasterror:=System.GetLastError();
  raise Exception.Create('Error calling CreateFontIndirect for font: ' + pdffont.WFontName + 
   ' System Error Code: ' + IntToStr(lasterror));   
 end;

 SelectObject(adc,fonthandle);
end;




{$IFNDEF DOTNETD}
procedure TRpGDIInfoProvider.FillFontData(pdffont:TRpPDFFont;data:TRpTTFontData);
var
 potm:POUTLINETEXTMETRIC;
 asize:integer;
 embeddable:boolean;
 logx:integer;
 multipli:double;
 apchar:string;
 alog:LOGFONT;
 acomp:byte;
{$IFDEF USEKERNING}
 akernings:array [0..MAXKERNINGS] of KERNINGPAIR;
 numkernings:integer;
 langinfo:DWord;
 i:integer;
 index:integer;
 newsize:integer;
 klist:TStringList;
{$ENDIF}
 table: Cardinal;
begin
   // See if data can be embedded
   embeddable:=false;
   SelectFont(pdffont);
   logx:=GetDeviceCaps(adc,LOGPIXELSX);
   data.postcriptname:=StringReplace(pdfFont.WFontName,' ','',[rfReplaceAll]);
   data.Encoding:='WinAnsiEncoding';
   asize:=GetOutlineTextMetricsW(adc,0,nil);
   if asize>0 then
   begin
    potm:=AllocMem(asize);
    try
     newsize:=GetOutlineTextMetricsW(adc,asize,potm);

     if (newsize<>0) then
     begin
      if (potm^.otmfsType AND $8000)=0 then
       embeddable:=true;
      multipli:=1/logx*72000/TTF_PRECISION;
      data.Ascent:=Round(potm^.otmTextMetrics.tmAscent*multipli);
      data.Descent:=-Round(potm^.otmTextMetrics.tmDescent*multipli);
      data.FontWeight:=potm^.otmTextMetrics.tmWeight;
      data.FontBBox:=potm^.otmrcFontBox;
      data.FontBBox.Left:=Round(data.FontBBox.Left*multipli);
      data.FontBBox.Right:=Round(data.FontBBox.Right*multipli);
      data.FontBBox.Bottom:=Round(data.FontBBox.Bottom*multipli);
      data.FontBBox.Top:=Round(data.FontBBox.Top*multipli);
      // CapHeight is not really correct, where to get?
      data.CapHeight:=Round(potm^.otmAscent*multipli);
      data.StemV:=0;
      data.MaxWidth:=Round(potm^.otmTextMetrics.tmMaxCharWidth*multipli);
      data.AvgWidth:=Round(potm^.otmTextMetrics.tmAveCharWidth*multipli);

      data.Leading:=Round((potm^.otmTextMetrics.tmExternalLeading+potm^.otmTextMetrics.tmInternalLeading)*multipli);
      // Windows does not allow Type1 fonts
      data.Type1:=false;

     if (Is64BitPlatform) then
     begin
      apchar:=PWideChar(Long64(potm)+Long64(potm^.otmpFamilyName));
      UniqueString(apchar);
      data.FamilyName:=apchar;
      UniqueString(data.FamilyName);
      apchar:=PWideChar(Long64(potm)+Long64(potm^.otmpFullName));
      UniqueString(apchar);
      data.FullName:=apchar;
      apchar:=PWideChar(Long64(potm)+Long64(potm^.otmpStyleName));
      UniqueString(apchar);
      data.StyleName:=apchar;
      apchar:=PWideChar(Long64(potm)+Long64(potm^.otmpFaceName));
      uniqueString(apchar);
      data.FaceName:=apchar;
     end
     else
     begin
      apchar:=PWideChar(Integer(potm)+Integer(potm^.otmpFamilyName));
      data.FamilyName:=StrPas(PWideChar(apchar));
      apchar:=PWideChar(Integer(potm)+Integer(potm^.otmpFullName));
      data.FullName:=apchar;
      apchar:=PWideChar(Integer(potm)+Integer(potm^.otmpStyleName));
      data.StyleName:=apchar;
      apchar:=PWideChar(Integer(potm)+Integer(potm^.otmpFaceName));
      data.FaceName:=apchar;
     end;


      data.ItalicAngle:=Round(potm^.otmItalicAngle/10);
      if ((potm^.otmTextMetrics.tmPitchAndFamily AND TMPF_TRUETYPE)=0) then
       Raise Exception.Create(SRpNoTrueType+'-'+data.FaceName);
      data.postcriptname:=StringReplace(data.familyname,' ','',[rfReplaceAll]);
      // Italic emulation
      if pdffont.Bold then
        data.postcriptname:=data.postcriptname+',Bold';
      if pdffont.Italic then
//       if data.ItalicAngle=0 then
//       begin
      if pdffont.Bold then
        data.postcriptname:=data.postcriptname+'Italic'
      else
        data.postcriptname:=data.postcriptname+',Italic';
//       end;
      //
      data.Flags:=32;
      // Fixed pitch? Doc says inverse meaning
      if ((potm^.otmTextMetrics.tmPitchAndFamily AND TMPF_FIXED_PITCH)=0) then
       data.Flags:=data.Flags+1;
      if GetObject(FontHandle,sizeof(alog),@alog)>0 then
      begin
       acomp:=(alog.lfPitchAndFamily AND $C0);
       if ((acomp or FF_SCRIPT)=alog.lfPitchAndFamily) then
        data.Flags:=data.Flags+8;
       if ((acomp or FF_ROMAN)=alog.lfPitchAndFamily) then
        data.Flags:=data.Flags+2;
      end;
      if Round(potm^.otmItalicAngle/10)<>0 then
//      if potm^.otmTextMetrics.tmItalic<>0 then
       data.Flags:=data.Flags+64;
      data.FontStretch:='/Normal';
     end;
    finally
     FreeMem(potm);
    end;
{$IFNDEF USEKERNING}
    data.havekerning:=false;
{$ENDIF}
{$IFDEF USEKERNING}
    // Get kerning pairs feature
    langinfo:=GetFontLanguageInfo(adc);
    data.havekerning:=(langinfo AND GCP_USEKERNING)>0;
    numkernings:=0;
    if data.havekerning then
    begin
     numkernings:=GetKerningPairs(adc,MAXKERNINGS,akernings[0]);
     if numkernings<0 then
     begin
      numkernings:=0;
     end;
    end;
    if numkernings>0 then
    begin
     for i:=0 to numkernings-1 do
     begin
      data.loadedk[akernings[i].wFirst]:=true;
      index:=data.kerningsadded.IndexOf(FormatFloat('000000',akernings[i].wFirst));
      if index>=0 then
       klist:=data.loadedkernings[akernings[i].wFirst]
      else
      begin
       klist:=TStringList.Create;
       klist.sorted:=true;
       data.loadedkernings[akernings[i].wFirst]:=klist;
       data.kerningsadded.Add(FormatFloat('000000',akernings[i].wFirst));
      end;
      klist.AddObject(FormatFloat('000000',akernings[i].wSecond),
       TObject(Round(-akernings[i].iKernAmount/logx*72000/TTF_PRECISION)));
     end;
    end;
{$ENDIF}
   end;

   if embeddable then
   begin
    data.FontData.SetSize(4);
    table:=$66637474;
    // Detect font collection
{$R-} // disable range checking
// do non-range-checked operations here
   asize:=GetFontData(adc,table,0,data.FontData.Memory,4);
{$R+} // turn range checking back on
    if (asize <> 4) then
    begin
     table:=0;
    end;
    asize:=GetFontData(adc,table,0,nil,0);
    if asize>0 then
    begin
     // Gets the raw data of the font
     data.FontData.SetSize(asize);
     if GDI_ERROR=GetFontData(adc,table,0,data.FontData.Memory,asize) then
      RaiseLastOSError;
     data.FontData.Seek(0,soFromBeginning);
    end;
   end;
end;
{$ENDIF}



function TRpGDIInfoProvider.GetCharWidth(pdffont:TRpPDFFont;data:TRpTTFontData;charcode:widechar):integer;
var
 logx:integer;
 aabc:array [1..1] of ABC;
 aint:Word;
 glyphindexes:array[0..5] of UInt;
 glyphindexes2:array[0..1] of DWORD;
{$IFNDEF DELPHI2009UP}
{$IFDEF VER180}
// gcp:windows.tagGCP_RESULTSW;
{$ENDIF}
{$IFNDEF VER180}
// gcp:windows.tagGCP_RESULTSA;
{$ENDIF}
{$ENDIF}
{$IFDEF DELPHI2009UP}
 gcp:windows.tagGCP_RESULTSW;
{$ENDIF}
 astring:WideString;
begin
 // glyphindex:=0;
 aint:=Ord(charcode);
 if aint>255 then
   data.isunicode:=true;
 if data.loaded[aint] then
 begin
  Result:=data.loadedwidths[aint];
   exit;
 end;
 glyphindexes[0]:=0;
 glyphindexes[1]:=0;
 glyphindexes[2]:=0;
 glyphindexes[3]:=0;
 glyphindexes[4]:=0;
 glyphindexes[5]:=0;
 SelectFont(pdffont);
 logx:=GetDeviceCaps(adc,LOGPIXELSX);
 if not GetCharABCWidthsW(adc,aint,aint,aabc[1]) then
   RaiseLastOSError;
  gcp.lStructSize:=sizeof(gcp);
  gcp.lpOutString:=nil;
  gcp.lpOrder:=nil;
  gcp.lpDx:=nil;
  gcp.lpCaretPos:=nil;
  gcp.lpClass:=nil;
  gcp.lpGlyphs:=@glyphindexes;
  gcp.nGlyphs:=1;
  gcp.nMaxFit:=1;
  astring:='';
  astring:=astring+charcode+Widechar(0);
//  if GetCharPlac(adc,PWideChar(astring),1,0,gcp,GCP_DIACRITIC)=0 then
//   RaiseLastOSError;
  if GetCharacterPlacementW(adc,PWideChar(astring),1,0,gcp,GCP_DIACRITIC)=0 then
  begin
   glyphindexes2[0] := 0;
   glyphindexes2[1] := 0;
   if (GetGlyphIndicesW(adc,PWideChar(astring),Length(astring), @glyphindexes2, GGI_MARK_NONEXISTING_GLYPHS) = 0) then
   begin
    // ussupported glyph
    glyphindexes2[0]:=0;
   end
   else
   begin
     if (glyphindexes2[0] = $ffff) then
     begin
       RaiseLastOSError;
     end
     else
     begin
      glyphindexes[0] := glyphindexes2[0];
     end;
   end;
  end;
  data.loadedglyphs[aint]:=WideChar(glyphindexes[0]);
  data.loadedg[aint]:=true;

//    if not GetCharABCWidthsI(adc,glyphindexes[0],1,nil,aabc[1]) then
//     RaiseLastOSError;

 Result:=Round(
   (Integer(aabc[1].abcA)+Integer(aabc[1].abcB)+Integer(aabc[1].abcC))/logx*72000/TTF_PRECISION
   );
 data.loadedwidths[aint]:=Result;
 data.loaded[aint]:=true;
 if data.firstloaded>aint then
  data.firstloaded:=aint;
 if data.lastloaded<aint then
  data.lastloaded:=aint;
end;


function TRpGDIInfoProvider.GetKerning(pdffont:TRpPDFFont;data:TRpTTFontData;leftchar,rightchar:widechar):integer;
{$IFDEF USEKERNING}
var
 index:integer;
 alist:TStringList;
 aint:Integer;
{$ENDIF}
begin
{$IFNDEF USEKERNING}
 Result:=0;
 exit;
{$ENDIF}
{$IFDEF USEKERNING}
 // Looks for the cached kerning
 Result:=0;
 aint:=Integer(leftchar);
 if data.loadedk[aint] then
 begin
  alist:=data.loadedkernings[aint];
  index:=alist.IndexOf(FormatFloat('000000',Integer(rightchar)));
  if index>=0 then
   Result:=Integer(alist.Objects[index])
 end;
{$ENDIF}
end;

initialization
finalization

end.
