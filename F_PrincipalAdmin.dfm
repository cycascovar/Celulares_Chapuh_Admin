object FPrincipalAdmin: TFPrincipalAdmin
  Left = 0
  Top = 0
  Caption = 'FPrincipalAdmin'
  ClientHeight = 485
  ClientWidth = 661
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
  object Label5: TLabel
    Left = 176
    Top = 336
    Width = 41
    Height = 13
    Caption = 'Usuarios'
    OnClick = Label5Click
  end
  object Garantias: TPageControl
    Left = 8
    Top = 8
    Width = 645
    Height = 312
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Garantias'
      ExplicitLeft = 0
      ExplicitTop = 48
      object DBGrid1: TDBGrid
        Left = 3
        Top = 24
        Width = 631
        Height = 169
        DataSource = DSGarantias
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Sucursal'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Recibido por'
            Width = 69
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Marca'
            Width = 113
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Modelo'
            Width = 96
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Titular'
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Observaciones'
            Width = 161
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Reparaciones'
      ImageIndex = 1
      ExplicitLeft = 0
    end
    object TabSheet3: TTabSheet
      Caption = 'Empleados'
      ImageIndex = 2
      object Label1: TLabel
        Left = 32
        Top = 32
        Width = 86
        Height = 13
        Caption = 'Nombre empleado'
      end
      object Label2: TLabel
        Left = 32
        Top = 72
        Width = 40
        Height = 13
        Caption = 'Sucursal'
      end
      object Label3: TLabel
        Left = 32
        Top = 112
        Width = 31
        Height = 13
        Caption = 'Label1'
      end
      object Label4: TLabel
        Left = 368
        Top = 72
        Width = 128
        Height = 13
        Caption = '/*Agregar las sucursales*/'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlight
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Edit1: TEdit
        Left = 124
        Top = 29
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object Edit2: TEdit
        Left = 96
        Top = 69
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object Edit3: TEdit
        Left = 96
        Top = 109
        Width = 121
        Height = 21
        TabOrder = 2
      end
      object addEmployee: TButton
        Left = 32
        Top = 160
        Width = 75
        Height = 25
        Caption = 'Dar de alta'
        TabOrder = 3
      end
    end
  end
  object ZQGarantias: TZQuery
    Connection = ZConexion
    Params = <>
    Left = 408
    Top = 176
  end
  object DSGarantias: TDataSource
    DataSet = ZQGarantias
    Left = 480
    Top = 168
  end
  object ZConexion: TZConnection
    Catalog = 'chapulhuacan'
    Protocol = 'mysql-5'
    HostName = 'localhost'
    Database = 'chapulhuacan'
    User = 'root'
    Password = 'toor'
    Left = 576
    Top = 224
  end
end
