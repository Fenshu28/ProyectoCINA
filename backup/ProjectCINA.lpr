program ProjectCINA;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  {$IFDEF HASAMIGA}
  athreads,
  {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, uNutriologos,
uBuscarNutriologos, ulogin, uPacientes, uHome, uNutriologos1, uconsultorios
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TLogin, Login);
  Application.CreateForm(TfrmNutriologos, frmNutriologos);
  Application.CreateForm(TfrmBuscarNutriologos, frmBuscarNutriologos);
  Application.CreateForm(TfrmPacientes, frmPacientes);
  Application.CreateForm(TfrmHome, frmHome);
  Application.CreateForm(TfrmConsultorios, frmConsultorios);
  Application.Run;
end.

