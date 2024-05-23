unit uAgregarPaciente;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TfrmAgregarPacientes }

  TfrmAgregarPacientes = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    LabeledEdit1: TLabeledEdit;
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  frmAgregarPacientes: TfrmAgregarPacientes;

implementation

{$R *.lfm}

{ TfrmAgregarPacientes }

procedure TfrmAgregarPacientes.Button2Click(Sender: TObject);
begin
  Close;
end;

end.

