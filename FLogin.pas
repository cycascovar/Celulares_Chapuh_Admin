unit FLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons;

type
  TF_Login = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Login: TF_Login;

implementation
uses
    F_PrincipalAdmin;

{$R *.dfm}

procedure TF_Login.BitBtn1Click(Sender: TObject);
begin
    FPrincipalAdmin.Enabled := false;
    FPrincipalAdmin := TFPrincipalAdmin.Create(self);
    FPrincipalAdmin.ShowModal;
end;

end.
