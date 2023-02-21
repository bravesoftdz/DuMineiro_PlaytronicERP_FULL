unit ERPdesktop.View.Pages.inicio;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts, Router4D.Interfaces;

type
 // TfrmInicio = class(TForm, iRouter4DComponent)
TfrmInicio = class(TForm)
    LayoutForm: TLayout;
  private
    { Private declarations }
  public
    { Public declarations }
    function Render: TFMXObject;
    procedure UnRender;
  end;

var
  frmInicio: TfrmInicio;

implementation

{$R *.fmx}
function TfrmInicio.Render: TFMXObject;
begin
  Result := LayoutForm;
end;

procedure TfrmInicio.UnRender;
begin

end;

end.
