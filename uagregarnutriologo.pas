unit uAgregarNutriologo;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TfrmAgregarNutriologo }

  TfrmAgregarNutriologo = class(TForm)
    Button1: TButton;
    Button2: TButton;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit4: TLabeledEdit;
    LabeledEdit5: TLabeledEdit;
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  frmAgregarNutriologo: TfrmAgregarNutriologo;

implementation

{$R *.lfm}

{ TfrmAgregarNutriologo }

procedure TfrmAgregarNutriologo.Button2Click(Sender: TObject);
begin
  Close;
end;

end.

