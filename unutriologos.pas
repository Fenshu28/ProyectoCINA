unit uNutriologos;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,uAgregarNutriologo,
  ComCtrls;

type

  { TfrmNutriologos }

  TfrmNutriologos = class(TForm)
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
    Label1: TLabel;
    lstOpinion: TListView;
    Panel1: TPanel;
    procedure Button10Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private

  public

  end;

var
  frmNutriologos: TfrmNutriologos;

implementation

{$R *.lfm}

{ TfrmNutriologos }

procedure TfrmNutriologos.Button10Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmNutriologos.Button7Click(Sender: TObject);
begin
  frmAgregarNutriologo.ShowModal;
end;

end.

