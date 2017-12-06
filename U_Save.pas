unit U_Save;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShellAPI, frxClass, frxDBSet, frxExportPDF, frxPreview,
  StdCtrls, ExtCtrls;

type
  TForm10 = class(TForm)
    pnl1: TPanel;
    btn1: TButton;
    pnl2: TPanel;
    frxprvw1: TfrxPreview;
    frxrprt1: TfrxReport;
    frxpdfxprt1: TfrxPDFExport;
    frxdbdtst1: TfrxDBDataset;
    procedure frxrprt1BeforePrint(Sender: TfrxReportComponent);
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure DelFilesFrom(Directory, filemask : string; DelSubDirs: Boolean);
    function waktu : string;
  end;

var
  Form10: TForm10;

implementation

uses Unit2, Unit1, U_Scan, U_Pindai;

{$R *.dfm}

procedure TForm10.DelFilesFrom(Directory, filemask: string;
  DelSubDirs: Boolean);
  var sourcelst : string ;
  FOS : TSHFileOpStruct;
begin
 FillChar (FOS, SizeOf(FOS), 0);
 FOS.Wnd := Application.MainForm.Handle;
 FOS.wFunc := FO_DELETE;
 sourcelst := Directory+'\'+Filemask+ #0;
 FOS.pFrom := PChar (sourcelst);
 if not DelSubDirs then
 FOS.fFlags := FOS.fFlags or FOF_FILESONLY;
 FOS.fFlags := FOS.fFlags or FOF_NOCONFIRMATION;
 SHFileOperation(FOS)
end;

function TForm10.waktu: string;
var tgl : TDateTime;
begin
 tgl:=Now ();
 Result := FormatDateTime('yyyy', tgl);
end;

procedure TForm10.frxrprt1BeforePrint(Sender: TfrxReportComponent);
var img : TfrxComponent;
begin
try
  img := frxrprt1.FindObject('Picture1');
  TfrxPictureView (img).Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+
  'Gambar_scan\'+ Form11.vrtltbl1.FieldValues['Image']);
  except
    ShowMessage('Objek Tidak ditemukan');
  end;

end;
procedure TForm10.FormShow(Sender: TObject);
begin
frxrprt1.LoadFromFile(ExtractFilePath(Application.ExeName)+'PreviewScanPdf.fr3');
frxrprt1.FileName:=ExtractFilePath(Application.ExeName)+'PreviewScanPdf.fr3';
frxrprt1.ShowReport();
end;

procedure TForm10.btn1Click(Sender: TObject);
var PDFku: TfrxCustomExportFilter;
namapdf, lokasihapus : string;
begin
 if asalScan = 0 then
 begin
   namapdf := Form8.edt1.text+'-'+Form8.edt2.text+'-'+waktu+'Surat-Masuk.pdf';
   PDFku := TfrxCustomExportFilter (frxpdfxprt1);
   PDFku.ShowDialog:= False;
   PDFku.FileName :=ExtractFilePath(Application.ExeName)+'\FilePDF\'+namapdf;
   frxrprt1.PrepareReport(False);
   frxrprt1.Export(PDFku);
   Form8.lbl8.Caption := namapdf;
 end;

 Form11.vrtltbl1.Clear;
 lokasihapus := (ExtractFilePath(Application.ExeName)+'\Gambar_scan\');
 DelFilesFrom(lokasihapus, '*.*', False);
 Close;
end;

end.
