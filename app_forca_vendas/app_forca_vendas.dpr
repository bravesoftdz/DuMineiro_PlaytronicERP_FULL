program app_forca_vendas;

uses
  System.StartUpCopy,
  FMX.Forms,
  untFormPrincipal in 'C:\Users\jsant\Desktop\untFormPrincipal.pas';

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := True;
  Application.Run;
end.
