unit uHome;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,uPacientes,uNutriologos,uConsultorios;

type

  { TfrmInicio }

  TfrmInicio = class(TForm)
    Agenda: TImage;
    Nutriologos: TImage;
    frmHome3: TImage;
    Estadisticas: TImage;
    Pacientes: TImage;
    Consultorios: TImage;
    Label1: TLabel;
    Label10: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Panel1: TPanel;
    Panel10: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure NutriologosClick(Sender: TObject);
    procedure frmHome3Click(Sender: TObject);
    procedure EstadisticasClick(Sender: TObject);
    procedure AgendaClick(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
  private

  public

  end;

var
  Agenda: TfrmInicio;

implementation

{$R *.lfm}

{ TfrmInicio }

procedure TfrmInicio.Label3Click(Sender: TObject);
begin

end;

procedure TfrmInicio.Label1Click(Sender: TObject);
begin

end;

procedure TfrmInicio.FormCreate(Sender: TObject);
begin
  Agenda.Picture.LoadFromFile('imgs\agendaIMG.png');
  Nutriologos.Picture.LoadFromFile('imgs\enfermeraIMG.png');
  Estadisticas.Picture.LoadFromFile('imgs\estadisticasIMG.png');
  Pacientes.Picture.LoadFromFile('imgs\pacientesIMG.png');
  Consultorios.Picture.LoadFromFile('imgs\hospitalIMG.png');






end;

procedure TfrmInicio.NutriologosClick(Sender: TObject);
begin
  frmNutriologos.ShowModal;
end;

procedure TfrmInicio.frmHome3Click(Sender: TObject);
begin
  frmPacientes.ShowModal;
end;

procedure TfrmInicio.EstadisticasClick(Sender: TObject);
begin

end;

procedure TfrmInicio.AgendaClick(Sender: TObject);
begin

end;

end.

