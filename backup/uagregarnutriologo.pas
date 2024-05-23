unit uAgregarNutriologo;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TAgregarNutriologo }

  TAgregarNutriologo = class(TForm)
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
  AgregarNutriologo: TAgregarNutriologo;

implementation

{$R *.lfm}

{ TAgregarNutriologo }

procedure TAgregarNutriologo.Button2Click(Sender: TObject);
begin
  Close;
end;

end.

