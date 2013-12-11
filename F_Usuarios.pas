unit F_Usuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFUsuarios = class(TForm)
    Label1: TLabel;
    nombreEmpleado: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    PasswordEmpleado: TEdit;
    Button1: TButton;
    DSEmpleados: TDataSource;
    ZQEmpleados: TZQuery;
    listaSucursales: TDBLookupComboBox;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUsuarios: TFUsuarios;

implementation
uses
    F_PrincipalAdmin;

{$R *.dfm}

procedure TFUsuarios.Button1Click(Sender: TObject);
var
    idSucursal : Integer;
begin
    idSucursal := listaSucursales.KeyValue;

    ZQEmpleados.Close;
    ZQEmpleados.SQL.Clear;
    ZQEmpleados.SQL.Add('INSERT INTO empleado (empleado,password,idsucursal)');
    ZQEmpleados.SQL.Add('VALUES ("'+nombreEmpleado.Text+'",MD5("'+passwordEmpleado.Text+'"),'+IntToStr(idSucursal)+')');
    ZQEmpleados.ExecSQL;

    Application.MessageBox('Usuario agregado exitosamente.','Información',MB_ICONINFORMATION);

    ZQEmpleados.Close;
    ZQEmpleados.SQL.Clear;
    ZQEmpleados.SQL.Add('SELECT * FROM sucursal');
    ZQEmpleados.ExecSQL;
    ZQEmpleados.Open;

    listaSucursales.ListField := 'sucursal';
    listaSucursales.KeyField := 'idsucursal';
end;

procedure TFUsuarios.FormShow(Sender: TObject);
begin
//Agregar el LookupComboBox
    ZQEmpleados.Close;
    ZQEmpleados.SQL.Clear;
    ZQEmpleados.SQL.Add('SELECT * FROM sucursal');
    ZQEmpleados.ExecSQL;
    ZQEmpleados.Open;

    listaSucursales.ListField := 'sucursal';
    listaSucursales.KeyField := 'idsucursal';
end;
end.
