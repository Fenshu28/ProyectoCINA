unit uLogin;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,uPrincipal;

type

  { TMenuPrincipal }

  TMenuPrincipal = class(TForm)
    Button1: TButton;
    eUsuario: TEdit;
    eContrasena: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private

  public

  end;

var
  MenuPrincipal: TMenuPrincipal;

implementation

{$R *.lfm}

{ TMenuPrincipal }

procedure TMenuPrincipal.FormCreate(Sender: TObject);
begin
  // Cargar la imagen desde un archivo en la misma carpeta que el proyecto
  Image1.Picture.LoadFromFile('logouni.png');
end;

procedure TMenuPrincipal.Button1Click(Sender: TObject);
begin
  frmMenuPrincipal.ShowModal;
end;

procedure TMenuPrincipal.Image1Click(Sender: TObject);
begin

end;

end.

