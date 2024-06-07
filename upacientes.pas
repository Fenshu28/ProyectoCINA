unit uPacientes;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, mysql80conn, SQLDB, DB, Forms, Controls, Graphics, Dialogs,
  StdCtrls, DBCtrls, ExtCtrls, PReport,uBuscarNutriologos;

type

  { TfrmPacientes }

  TfrmPacientes = class(TForm)
    btnAltas: TButton;
    btnAnterior: TButton;
    btnBuscar: TButton;
    btnEliminar: TButton;
    btnExportar: TButton;
    btnModificar: TButton;
    btnPrimero: TButton;
    btnSalir: TButton;
    btnSiguiente: TButton;
    btnUltimo: TButton;
    Button1: TButton;
    Button2: TButton;
    Connection: TMySQL80Connection;
    DataSource1: TDataSource;
    eDBFechaNac: TDBEdit;
    eDBDireccion: TDBEdit;
    eDBTelefono: TDBEdit;
    eDBNombre: TDBEdit;
    impresora: TPReport;
    Label2: TLabel;
    Label3: TLabel;
    Label14: TLabel;
    Label5: TLabel;
    lblConectar: TLabel;
    Panel2: TPanel;
    panelReport: TPRLayoutPanel;
    PRLabel1: TPRLabel;
    PRLabel2: TPRLabel;
    PRLabel3: TPRLabel;
    PRLabel4: TPRLabel;
    PRLabel5: TPRLabel;
    PRPage1: TPRPage;
    PRRect1: TPRRect;
    Query: TSQLQuery;
    Transacion: TSQLTransaction;
    procedure btnAltasClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnEliminarClick(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure img1Click(Sender: TObject);
    function obNumero():Integer;

    procedure nRegistros;
  private

  public
    procedure ConectarBD;
    procedure createColumnNombre(nombre : string; x, y : integer);
   procedure createColumnFechaNac(fechaNac : string; x, y : integer);
   procedure createColumnTelefono(telefono:  string; x, y : integer);
   procedure createColumnDireccion(direccion : string; x, y : integer);
  end;

var
  frmPacientes: TfrmPacientes;

implementation

{$R *.lfm}
function TfrmPacientes.obNumero():Integer;
var
  numRegActual:Integer;
  begin
    Query.Last;
    numRegActual:=Query.RecNo;
    Result:=numRegActual;
  end;

procedure TfrmPacientes.FormClose(Sender: TObject; var CloseAction: TCloseAction
  );
begin
   Connection.Close();
end;

procedure TfrmPacientes.Button2Click(Sender: TObject);
begin

end;

procedure TfrmPacientes.btnAltasClick(Sender: TObject);
var
  numReg:Integer;
begin
    if btnAltas.Caption='Altas' then
    begin
      numReg:=obNumero;
      Query.Open;
      Query.Insert;
      btnAltas.Caption:='Guardar';
      Exit

    end
    else
    begin
      Query.Post;
      Query.ApplyUpdates;
      btnAltas.Caption:='Altas';
      Query.Refresh;
      nRegistros;
    end;

    end;

procedure TfrmPacientes.btnBuscarClick(Sender: TObject);
begin
  frmBuscarNutriologos.ShowModal;
end;

procedure TfrmPacientes.btnEliminarClick(Sender: TObject);
begin
  if Query.RecordCount>0 then
  begin
    Query.Delete;
    Query.UpdateMode:=upWhereAll;
    Query.ApplyUpdates;
    Query.Close;
    Query.Open;
    nRegistros();
  end;
end;

procedure TfrmPacientes.btnExportarClick(Sender: TObject);
 var
  relativeY : integer;
begin


  relativeY:=120;

  Query.First;
  while not Query.EOF do
  begin

    relativeY += 40;
    createColumnNombre(Query.FieldByName('nombre').AsString, 40, relativeY);
    createColumnFechaNac(Query.FieldByName('fechaNac').AsString, 192, relativeY);
    createColumnTelefono(Query.FieldByName('telefono').AsString, 508, relativeY);
    createColumnDireccion(Query.FieldByName('direccion').AsString, 352, relativeY);

    Query.Next;
  end;

  impresora.FileName:='Reporte de PACIENTES.pdf';
  impresora.BeginDoc;
  impresora.Print(PRPage1);
  impresora.EndDoc;

  ShowMessage('Reporte generado!');

end;

procedure TfrmPacientes.btnModificarClick(Sender: TObject);
begin
  if btnModificar.Caption = 'Modificar' then
  begin
    Query.Open;
    Query.Edit;

    btnModificar.Caption:='Guardar';
  end
  else
  begin
    Query.Post;
    Query.UpdateMode:=upWhereAll;
    Query.ApplyUpdates;
    btnModificar.Caption:='Modificar';

    Query.Refresh;
    nRegistros();

    ShowMessage('Registro actualizado');

  end;

end;

procedure TfrmPacientes.btnSalirClick(Sender: TObject);
begin
  Close;
end;


  procedure TfrmPacientes.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
    Query.Close;
    CanClose:=True;
end;

procedure TFrmPacientes.FormCreate(Sender: TObject);
begin

  conectarBD;

  Query.DataBase:=Connection;
  Query.UsePrimaryKeyAsKey:=False;
  Query.SQL.Text:='Select * from Pacientes';
  DataSource1.DataSet:=Query;
  if Connection.Connected then
  begin
    lblConectar.Caption:='Conectada';
  end;
    Query.Open;
    eDBNombre.DataField:='nombre';
    eDBNombre.DataSource:=DataSource1;
    eDBFechaNac.DataField:='fechaNac';
    eDBFechaNac.DataSource:=DataSource1;
    eDBTelefono.DataField:='telefono';
    eDBTelefono.DataSource:=DataSource1;
    eDBDireccion.DataField:='Direccion';
    eDBDireccion.DataSource:=DataSource1;

    nRegistros;

end;

procedure TfrmPacientes.img1Click(Sender: TObject);
begin

end;

 procedure TfrmPacientes.conectarBD;
begin
  Connection.HostName:='localhost';
  Connection.Password:='root';
  Connection.Port:=3306;
  Connection.DatabaseName:='ProgramacionVisual';
  Connection.UserName:='root';
  Connection.Connected:=True;
  Connection.KeepConnection:=True;

  Transacion.DataBase:=Connection;
  Transacion.Action:=caCommit;
  Transacion.Active:=True;
end;

 procedure TfrmPacientes.nRegistros();
var
  i:Integer;
  begin
    i:=Query.RecNo;
  end;

 procedure TfrmPacientes.createColumnNombre(nombre: string; x, y: integer);
var
  labelNombre : TPRLabel;
begin
  labelNombre := TPRLabel.Create(nil);

  with labelNombre do
  begin
    Parent := panelReport;
    left := x;
    Top:= y;
    Caption:=nombre;
  end;
end;

procedure TfrmPacientes.createColumnfechaNac(fechaNac: string; x, y: integer);
var
  labelfechaNac : TPRLabel;
begin
  labelfechaNac := TPRLabel.Create(nil);

  with labelfechaNac do
  begin
    Parent := panelReport;
    left := x;
    Top:= y;

    Caption:=fechaNac;
  end;
end;

procedure TfrmPacientes.createColumnTelefono(telefono: string; x, y: integer);
var
  labelTelefono : TPRLabel;
begin
  labelTelefono:= TPRLabel.Create(nil);

  with labelTelefono do
  begin
    Parent := panelReport;
    left := x;
    Top:= y;

    Caption:=telefono;
  end;

end;

procedure TfrmPacientes.createColumnDireccion(direccion: string; x, y: integer);
var
  labelDireccion : TPRLabel;
begin
  labelDireccion := TPRLabel.Create(nil);

  with labelDireccion do
  begin
    Parent := panelReport;
    left := x;
    Top:= y;

    Caption:=direccion;
  end;

end;
end.

