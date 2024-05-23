unit uPacientes;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,uAgregarPaciente,
  ComCtrls, ButtonPanel;

type

  { TfrmPacientes }

  TfrmPacientes = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    ButtonPanel1: TButtonPanel;
    Label1: TLabel;
    lstOpinion: TListView;
    Panel1: TPanel;
    procedure Button10Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private

  public

  end;

var
  frmPacientes: TfrmPacientes;

implementation

{$R *.lfm}

{ TfrmPacientes }

procedure TfrmPacientes.Button10Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmPacientes.Button6Click(Sender: TObject);
begin
   button2.color:=clred;
end;

procedure TfrmPacientes.Button7Click(Sender: TObject);
begin
  frmAgregarPacientes.ShowModal;
end;

end.

