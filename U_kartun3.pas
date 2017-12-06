unit U_kartun3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, frxExportPDF, frxPreview, StdCtrls,
  ExtCtrls,ShellAPI;

type
  TForm14 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    frxPreview1: TfrxPreview;
    frxPDFExport1: TfrxPDFExport;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    procedure frxReport1BeforePrint(Sender: TfrxReportComponent);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure DelFilesFrom (Directory,Filemask : string; DelSubDirs: Boolean);
 function waktu:string;
  end;
var
  Form14: TForm14;

implementation

uses
  Unit2, Unit1, U_kartun1;

{$R *.dfm}

{ TForm3 }

procedure TForm14.DelFilesFrom(Directory, Filemask: string;
  DelSubDirs: Boolean);
  var Sourcelst: string;
  FOS : TSHFileOpStruct;
begin
FillChar(FOS, SizeOf (FOS),0);
FOS.Wnd :=Application.MainForm.Handle;
FOS.wFunc :=FO_DELETE;
Sourcelst :=Directory+'\'+Filemask+#0;
FOS.pFrom :=pChar(Sourcelst);
if not DelSubDirs then
FOS.fFlags := FOS.fFlags or FOF_FILESONLY;
FOS.fFlags := FOS.fFlags or FOF_NOCONFIRMATION;
SHFileOperation(FOS);
end;

function TForm14.waktu: string;
var tgl  : TDateTime;
begin
tgl:=Now();
result:= FormatDateTime('yyy',tgl);
end;

procedure TForm14.frxReport1BeforePrint(Sender: TfrxReportComponent);
var img:TfrxComponent;
begin
try
  img:=frxReport1.FindObject('Picturel');
  TfrxPictureView (img).Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Gambar_scan\'+Form2.VirtualTable1.FieldValues['Image']);
  except
    showMessage ('Objek Tidak Ditemukan');
    end;
    end;
 procedure TForm14.Button1Click(Sender: TObject);
 var PDFku:TfrxCustomExportFilter;
 namapdf,lokasihapus: string;
begin
 if asalscan = 0 then
 begin
   namapdf := Form12.Edit1.Text+'-'+Form12.Edit2.Text+'-'+waktu+'surat-masuk.pdf';
   PDFku:=TfrxCustomExportFilter(frxPDFExport1);
   PDFku.ShowDialog := False;
   PDFku.FileName:=ExtractFilePath(Application.ExeName)+'\FilePDF\'+namapdf;
   frxReport1.PrepareReport(False);
   frxReport1.Export(PDFku);
   Form12.Label8.caption := namapdf;
 end;
 Form2.VirtualTable1.Clear;
 lokasihapus := (ExtractFilePath(Application.ExeName)+'\Gambar_scan\');
 DelFilesFrom(lokasihapus,'*.*',FALSE);
 Close;
end;



procedure TForm14.FormShow(Sender: TObject);
begin
frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'PreviewScanPdf.fr3');
frxReport1.FileName:=ExtractFilePath(Application.ExeName)+'PreviewScanPdf.fr3';
frxReport1.ShowReport();
end;

end.
