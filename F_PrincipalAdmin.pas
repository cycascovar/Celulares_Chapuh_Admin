unit F_PrincipalAdmin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Grids, DBGrids, ZAbstractConnection, ZConnection,
  DB, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFPrincipalAdmin = class(TForm)
    Garantias: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DBGrid1: TDBGrid;
    ZQGarantias: TZQuery;
    DSGarantias: TDataSource;
    ZConexion: TZConnection;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label4: TLabel;
    addEmployee: TButton;
    Label5: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Label5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipalAdmin: TFPrincipalAdmin;

implementation
uses
    F_Usuarios;


{$R *.dfm}

procedure TFPrincipalAdmin.FormShow(Sender: TObject);
begin
//
    ZQGarantias.Close;
    ZQGarantias.SQL.Clear;
    ZQGarantias.SQL.Add('SELECT sucursal, empleado AS "Recibido por", marca_equipo AS Marca, nombre_cliente AS Titular, observaciones');
    ZQGarantias.SQL.Add('FROM sucursal');
    ZQGarantias.SQL.Add('JOIN equipo_garantia ON equipo_garantia.idsucursal = sucursal.idsucursal');
    ZQGarantias.SQL.Add('JOIN cliente_garantia ON cliente_garantia.idequipo_garantia = equipo_garantia.idequipo_garantia');
    ZQGarantias.SQL.Add('JOIN empleado ON empleado.idempleado = equipo_garantia.idempleado');
    ZQGarantias.Open;
    DBGrid1.Update;
end;

procedure TFPrincipalAdmin.Label5Click(Sender: TObject);
begin
    FUsuarios.Enabled := false;
    FUsuarios := TFUsuarios.Create(self);
    FUsuarios.ShowModal;
end;

end.
