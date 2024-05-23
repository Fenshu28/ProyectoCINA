program ProyectoCINA;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  {$IFDEF HASAMIGA}
  athreads,
  {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, uLogin, uPrincipal, uNutriologos, uPacientes, uAgregarPaciente, 
uAgregarNutriologo
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TMenuPrincipal, MenuPrincipal);
  Application.CreateForm(TFrmMenuPrincipal, FrmMenuPrincipal);
  Application.CreateForm(TfrmNutriologos, frmNutriologos);
  Application.CreateForm(TfrmPacientes, frmPacientes);
  Application.CreateForm(TfrmAgregarPacientes, frmAgregarPacientes);
  Application.CreateForm(TAgregarNutriologo, AgregarNutriologo);
  Application.Run;
end.

