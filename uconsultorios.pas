unit uconsultorios;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, mysql80conn, SQLDB, DB, Forms, Controls, Graphics, Dialogs,
  StdCtrls, DBCtrls, PReport;

type

  { TfrmConsultorios }

  TfrmConsultorios = class(TForm)
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
    Button2: TButton;
    Connection: TMySQL80Connection;
    DataSource1: TDataSource;
    eDBDireccion: TDBEdit;
    eDBFechaNac: TDBEdit;
    eDBNombre: TDBEdit;
    eDBTelefono: TDBEdit;
    impresora: TPReport;
    Label14: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    lblConectar: TLabel;
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
  private

  public

  end;

var
  frmConsultorios: TfrmConsultorios;

implementation

{$R *.lfm}

end.

