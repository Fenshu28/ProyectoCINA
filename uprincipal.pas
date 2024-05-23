unit uPrincipal;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,uNutriologos,uPacientes;

type

  { TFrmMenuPrincipal }

  TFrmMenuPrincipal = class(TForm)
    Button10: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  FrmMenuPrincipal: TFrmMenuPrincipal;

implementation

{$R *.lfm}

{ TFrmMenuPrincipal }

procedure TFrmMenuPrincipal.Button6Click(Sender: TObject);
begin
  frmNutriologos.ShowModal;
end;

procedure TFrmMenuPrincipal.Button7Click(Sender: TObject);
begin
  frmNutriologos.ShowModal;
end;

procedure TFrmMenuPrincipal.Button8Click(Sender: TObject);
begin
  frmPacientes.ShowModal;
end;

procedure TFrmMenuPrincipal.FormCreate(Sender: TObject);
begin
   //Image1.Picture.LoadFromFile('medicamento.png');
end;

end.

