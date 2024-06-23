unit uBuscarconsultorios;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, SQLDB, DB, mysql80conn, Forms, Controls, Graphics, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls;

type

  { TfrmBuscarConsultorios }

  TfrmBuscarConsultorios = class(TForm)
    Conexion: TMySQL80Connection;
    DataSource: TDataSource;
    Label1: TLabel;
    lst: TListView;
    Panel1: TPanel;
    Query: TSQLQuery;
    Transacion: TSQLTransaction;
    txtNombreAula: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
  private

  public

  end;

var
  frmBuscarConsultorios: TfrmBuscarConsultorios;

implementation

{$R *.lfm}

{ TfrmBuscarConsultorios }

procedure TfrmBuscarConsultorios.Panel1Click(Sender: TObject);
var
  i : integer;
begin
  Conexion.Connected := true;
  Query.SQL.Text := 'Select * from consultorio where nombreAula = "' + txtNombreAula.Text + '"';
  Query.Open;
  Query.First;

  lst.Clear;
  while not Query.EOF do
  begin
    with lst.Items.Add.SubItems do
    begin
      add(Query.FieldByName('nombreAula').AsString);
      add(Query.FieldByName('ubicacion').AsString);
      add(Query.FieldByName('nota').AsString);
    end;
    Query.Next;
  end;

end;

procedure TfrmBuscarConsultorios.FormCreate(Sender: TObject);
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

end.

