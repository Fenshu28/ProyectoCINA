unit ulogin;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,uPacientes,uNutriologos,uhome,uNutriologos1;

type

  { TLogin }

  TLogin = class(TForm)
    Button1: TButton;
    eContrasena: TEdit;
    eUsuario: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Login: TLogin;

implementation

{$R *.lfm}

{ TLogin }

procedure TLogin.Button1Click(Sender: TObject);
begin
   //form1.ShowModal;
  frmHome.ShowModal;

end;

procedure TLogin.FormCreate(Sender: TObject);
begin
   Image1.Picture.LoadFromFile('C:\Users\Shell\Desktop\ProyectoCINA2.0\imgs\logouni.png');
end;



end.

