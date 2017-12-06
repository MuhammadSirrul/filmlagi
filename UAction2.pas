unit UAction2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Grids, DBGrids, ExtCtrls, jpeg, ShellAPI,
  DelphiTwain, MemDS, VirtualTable;

type
  TAction2 = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    dbgrd1: TDBGrid;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    ds1: TDataSource;
    VirtualTable1: TVirtualTable;
    DelphiTwain1: TDelphiTwain;
    img1: TImage;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure DelphiTwain1TwainAcquire(Sender: TObject;
      const Index: Integer; Image: TBitmap; var Cancel: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    function NamaGambar : string;
  end;

var
  Action2: TAction2;
  JPGku : TJPEGImage;
  asalScan : Integer;

implementation

uses
  UAction3, UAction, Unit1;

{$R *.dfm}

procedure TAction2.btn1Click(Sender: TObject);
begin
if VirtualTable1.IsEmpty then
ShowMessage('Data Masih Kosong') else
Close;
Action3.ShowModal;
end;

procedure TAction2.btn2Click(Sender: TObject);
var
  sourceIndex : Integer;
  source : TTwainSource;
begin
  DelphiTwain1.LibraryLoaded := True ;
  DelphiTwain1.SourceManagerLoaded := True ;
  SourceIndex := DelphiTwain1.SelectSource();

  if (sourceIndex <> -1) then
  begin
    source := DelphiTwain1.Source[sourceIndex];
    source.Loaded := True;
    source.Enabled:= True;
  end;

end;

procedure TAction2.btn3Click(Sender: TObject);
begin
if VirtualTable1.IsEmpty then
ShowMessage('Data Kosong') else
VirtualTable1.Delete;
end;

procedure TAction2.DelphiTwain1TwainAcquire(Sender: TObject;
  const Index: Integer; Image: TBitmap; var Cancel: Boolean);
  var Lokasi, Gambar : String;
begin
  Img1.Picture.Assign(Image);
  Cancel := True;
  Gambar := NamaGambar;
  Lokasi := ExtractFilePath(Application.ExeName)+'\HGambar\';
  JPGku := TJPEGImage.Create;
  JPGku.Assign(Img1.Picture.Bitmap);
  JPGku.Free;
  VirtualTable1.Append;
  VirtualTable1['Image'] := Gambar;
  VirtualTable1.Post;


end;

function TAction2.NamaGambar: string;
begin

end;

end.
