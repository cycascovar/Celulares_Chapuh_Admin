object FUsuarios: TFUsuarios
  Left = 0
  Top = 0
  Caption = 'FUsuarios'
  ClientHeight = 213
  ClientWidth = 331
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 37
    Height = 13
    Caption = 'Nombre'
  end
  object Label2: TLabel
    Left = 24
    Top = 88
    Width = 40
    Height = 13
    Caption = 'Sucursal'
  end
  object Label3: TLabel
    Left = 24
    Top = 56
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object nombreEmpleado: TEdit
    Left = 80
    Top = 21
    Width = 137
    Height = 21
    TabOrder = 0
  end
  object PasswordEmpleado: TEdit
    Left = 80
    Top = 53
    Width = 137
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 96
    Top = 128
    Width = 105
    Height = 25
    Caption = 'Agregar usuario'
    TabOrder = 2
    OnClick = Button1Click
  end
  object listaSucursales: TDBLookupComboBox
    Left = 80
    Top = 80
    Width = 137
    Height = 21
    ListSource = DSEmpleados
    TabOrder = 3
  end
  object DSEmpleados: TDataSource
    DataSet = ZQEmpleados
    Left = 240
    Top = 128
  end
  object ZQEmpleados: TZQuery
    Connection = FPrincipalAdmin.ZConexion
    Params = <>
    Left = 280
    Top = 40
  end
end
