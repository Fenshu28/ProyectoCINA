unit uMenuPrincipal;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls, uNutriologos, uPacientes, uconsultorios, uCreditos;

type

  { TfrmMenuPrincipal }

  TfrmMenuPrincipal = class(TForm)
    Agenda: TImage;
    Consultorios: TImage;
    Estadisticas: TImage;
    frmHome3: TImage;
    Label1: TLabel;
    Label10: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Nutriologos: TImage;
    Pacientes: TImage;
    Panel1: TPanel;
    Panel10: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    procedure AgendaClick(Sender: TObject);
    procedure ConsultoriosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure NutriologosClick(Sender: TObject);
    procedure PacientesClick(Sender: TObject);
    procedure Panel10Click(Sender: TObject);
  private

  public

  end;

var
  frmMenuPrincipal: TfrmMenuPrincipal;

implementation

{$R *.lfm}

{ TfrmMenuPrincipal }

procedure TfrmMenuPrincipal.AgendaClick(Sender: TObject);
begin

end;

procedure TfrmMenuPrincipal.ConsultoriosClick(Sender: TObject);
begin
  frmConsultorios.ShowModal;
end;

procedure TfrmMenuPrincipal.FormCreate(Sender: TObject);
begin
    Agenda.Picture.LoadFromFile(Application.Location + 'imgs/agendaIMG.png');
    Nutriologos.Picture.LoadFromFile(Application.Location + 'imgs/enfermeraIMG.png');
    Pacientes.Picture.LoadFromFile(Application.Location + 'imgs/pacientesIMG.png');
    Consultorios.Picture.LoadFromFile(Application.Location + 'imgs/hospitalIMG.png');
    Estadisticas.Picture.LoadFromFile(Application.Location + 'imgs/estadisticasIMG.png');

end;

procedure TfrmMenuPrincipal.NutriologosClick(Sender: TObject);
begin
  frmNutriologos.ShowModal;
end;

procedure TfrmMenuPrincipal.PacientesClick(Sender: TObject);
begin
  frmPacientes.ShowModal;
end;

procedure TfrmMenuPrincipal.Panel10Click(Sender: TObject);
begin
     frmCreditos.ShowModal;
end;

end.

