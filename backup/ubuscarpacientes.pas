unit uBuscarpacientes;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, SQLDB, DB, mysql80conn, Forms, Controls, Graphics, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls;

type

  { TfrmBuscarPacientes }

  TfrmBuscarPacientes = class(TForm)
    Conexion: TMySQL80Connection;
    DataSource: TDataSource;
    Label1: TLabel;
    lst: TListView;
    Panel1: TPanel;
    Query: TSQLQuery;
    Transacion: TSQLTransaction;
    txtNombre: TEdit;
    procedure buttonSearchClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
  private

  public

  end;

var
  frmBuscarPacientes: TfrmBuscarPacientes;

implementation

{$R *.lfm}

{ TfrmBuscarPacientes }

procedure TfrmBuscarPacientes.buttonSearchClick(Sender: TObject);
begin

end;

procedure TfrmBuscarPacientes.FormCreate(Sender: TObject);
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

procedure TfrmBuscarPacientes.Panel1Click(Sender: TObject);
var
  i : integer;
begin
  Conexion.Connected := true;
  Query.SQL.Text := 'Select * from paciente where nombre = "' + txtNombre.Text + '"';
  Query.Open;
  Query.First;

  lst.Clear;
  while not Query.EOF do
  begin
    with lst.Items.Add.SubItems do
    begin
      add(Query.FieldByName('nombre').AsString);
      add(Query.FieldByName('fechaNac').AsString);
      add(Query.FieldByName('telefono').AsString);
      add(Query.FieldByName('direccion').AsString);
    end;
    Query.Next;
  end;
end;

end.

