unit ERPdesktop.View.Routers;

interface

  type
    TRouters = class
      private
      public
        constructor Create;
        destructor Destroy; override;
    end;

var
  Router : TRouters;
implementation

uses
  Router4D, ERPdesktop.View.Pages.Inicio;
{ TRouters }

constructor TRouters.Create;
begin
  TRouter4D
    .Switch
      .Router('Inicio', TfrmInicio);
end;

destructor TRouters.Destroy;
begin

  inherited;
end;

initialization
  Router := TRouters.Create;
finalization
  Router.Free;

end.
