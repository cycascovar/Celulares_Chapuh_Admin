program Admin_celchapulh_desktop;

uses
  Forms,
  FLogin in 'FLogin.pas' {F_Login},
  F_PrincipalAdmin in 'F_PrincipalAdmin.pas' {FPrincipalAdmin},
  C_Usuarios in 'C_Usuarios.pas' {CUsuarios},
  F_Usuarios in 'F_Usuarios.pas' {FUsuarios};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TF_Login, F_Login);
  Application.CreateForm(TFPrincipalAdmin, FPrincipalAdmin);
  Application.CreateForm(TCUsuarios, CUsuarios);
  Application.CreateForm(TFUsuarios, FUsuarios);
  Application.Run;
end.
