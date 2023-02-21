unit ERPdesktop.View.Pages.Auth.Login;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.StdCtrls, FMX.ListBox, FMX.Edit, FMX.Objects, FMX.Controls.Presentation;

type
  TfrmLogin = class(TForm)
    LayoutForm: TLayout;
    Layout1: TLayout;
    layoutSafeArea: TLayout;
    layoutContentFooter: TLayout;
    lblLicencido: TLabel;
    lblVersaoSistema: TLabel;
    lblEmpresa: TLabel;
    Line1: TLine;
    imgLogo: TImage;
    Layout2: TLayout;
    img: TImage;
    rectangle_txtLogin: TRectangle;
    Line2: TLine;
    Image2: TImage;
    txtLogin: TEdit;
    rectangle_txtSenha: TRectangle;
    Line3: TLine;
    Image3: TImage;
    txtSenha: TEdit;
    rectangle_cmbFilial: TRectangle;
    icoFilial: TImage;
    cmbFilial: TComboBox;
    Layout3: TLayout;
    ckbLembreme: TCheckBox;
    lblEsqueceuSenha: TSpeedButton;
    btnSair: TRectangle;
    lblSair: TLabel;
    btnLogin: TRectangle;
    lblLogin: TLabel;
    TEMPLATE: TImage;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure handlePrepareView(sisVersao, empresaNome: String );
    function validateAccess(vUser, vPassword, vFilial : string): Boolean;
    procedure changeToPrincipal();
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.fmx}

uses ERPdesktop.View.Principal;

{ TfrmLogin }

procedure TfrmLogin.changeToPrincipal;
begin
    if not Assigned(frmPrincipal) then
    frmPrincipal := TfrmPrincipal.Create(Application);
  try
    frmPrincipal.Show;
    Application.MainForm := frmPrincipal;
    Self.Close;
  except on E: Exception do
  end;
end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
  handlePrepareView('1.0.0.1 - ALPHA', 'ExtremaPack Comércio de Embalagens Ltda');
end;

procedure TfrmLogin.handlePrepareView(sisVersao, empresaNome: String);
begin
  lblEmpresa.Text        := empresaNome;
  lblVersaoSistema.Text  := sisVersao;
end;

function TfrmLogin.validateAccess(vUser, vPassword, vFilial: string): Boolean;
begin
  if (vUser = 'admin') and (vPassword = '1234') and (vFilial = '0') then
  begin
    result := True;
  end
  else
    result := False;
end;

end.
