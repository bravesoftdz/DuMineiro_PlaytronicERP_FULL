program erp_desktop;



uses
  System.StartUpCopy,
  FMX.Forms,
  ERPdesktop.View.Pages.Inicio in 'src\View\Pages\ERPdesktop.View.Pages.Inicio.pas' {frmInicio},
  ERPdesktop.View.Pages.Auth.Login in 'src\View\Pages\Auth\ERPdesktop.View.Pages.Auth.Login.pas' {frmLogin},
  ERPdesktop.View.Splash in 'src\View\ERPdesktop.View.Splash.pas' {frmSplah},
  ERPdesktop.View.Pages.Usuarios.Index in 'src\View\Pages\Usuarios\ERPdesktop.View.Pages.Usuarios.Index.pas' {frmUsuarios},
  ERPdesktop.View.Routers in 'src\View\Routers\ERPdesktop.View.Routers.pas',
  ERPdesktop.View.Principal in 'src\View\ERPdesktop.View.Principal.pas' {frmPrincipal},
  FileINI in 'src\Utils\FileINI.pas',
  Loading in 'src\Utils\Loading.pas';

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
