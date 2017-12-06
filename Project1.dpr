program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2},
  Unit3 in 'Unit3.pas' {Form3},
  UAction in 'UAction.pas' {form4},
  UAction2 in 'UAction2.pas' {Action2},
  UAction3 in 'UAction3.pas' {Action3},
  U_horor1 in 'U_horor1.pas' {Form5},
  U_horor2 in 'U_horor2.pas' {Form6},
  U_horor3 in 'U_horor3.pas' {Form7},
  U_Pindai in 'U_Pindai.pas' {Form8},
  U_Save in 'U_Save.pas' {Form10},
  U_Scan in 'U_Scan.pas' {Form11},
  U_kartun1 in 'U_kartun1.pas' {Form12},
  U_kartun2 in 'U_kartun2.pas' {Form13},
  U_kartun3 in 'U_kartun3.pas' {Form14};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(Tform4, form4);
  Application.CreateForm(TAction2, Action2);
  Application.CreateForm(TAction3, Action3);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm10, Form10);
  Application.CreateForm(TForm11, Form11);
  Application.CreateForm(TForm12, Form12);
  Application.CreateForm(TForm13, Form13);
  Application.CreateForm(TForm14, Form14);
  Application.Run;
end.
