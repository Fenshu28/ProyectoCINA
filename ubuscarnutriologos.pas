unit uBuscarNutriologos;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, SQLDB, DB, mysql80conn, Forms, Controls, Graphics, Dialogs,
  StdCtrls, ComCtrls;

type

  { TfrmBuscarNutriologos }

  TfrmBuscarNutriologos = class(TForm)
    buttonSearch: TButton;
    Conexion: TMySQL80Connection;
    DataSource: TDataSource;
    txtMatricula: TEdit;
    Label1: TLabel;
    lst: TListView;
    Query: TSQLQuery;
    Transacion: TSQLTransaction;
    procedure buttonSearchClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormHide(Sender: TObject);
  private

  public

  end;

var
  frmBuscarNutriologos: TfrmBuscarNutriologos;

implementation

{$R *.lfm}

{ TfrmBuscarNutriologos }

procedure TfrmBuscarNutriologos.buttonSearchClick(Sender: TObject);
var
  i : integer;
begin
  Conexion.Connected := true;
  Query.SQL.Text := 'Select * from Nutris where matricula = "' + txtMatricula.Text + '"';
  Query.Open;
  Query.First;

  lst.Clear;
  while not Query.EOF do
  begin
    with lst.Items.Add.SubItems do
    begin
      add(Query.FieldByName('matricula').AsString);
      add(Query.FieldByName('nombre').AsString);
      add(Query.FieldByName('edad').AsString);
      add(Query.FieldByName('grupo').AsString);
    end;
    Query.Next;
  end;
end;

procedure TfrmBuscarNutriologos.FormCreate(Sender: TObject);
begin     
  Conexion.HostName:='localhost';
  Conexion.Password := 'root';
  Conexion.Port := 3306;
  Conexion.DatabaseName := 'ProgramacionVisual';
  Conexion.UserName := 'root';
  Conexion.Connected := True;
  Conexion.KeepConnection := True;

  Transacion.DataBase := Conexion;
  Transacion.Action:=caCommit;
  Transacion.Active:=True;

  Query.DataBase := Conexion;
  Query.UsePrimaryKeyAsKey := False;

end;

procedure TfrmBuscarNutriologos.FormHide(Sender: TObject);
begin
  Conexion.Connected := False;
end;

end.

