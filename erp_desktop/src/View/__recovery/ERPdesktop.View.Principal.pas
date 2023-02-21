unit ERPdesktop.View.Principal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Objects, FMX.StdCtrls, FMX.Controls.Presentation, System.Actions,
  FMX.ActnList;

type
  TfrmPrincipal = class(TForm)
    LayoutForm: TLayout;
    TEMPLATE: TImage;
    RectangleBotton: TRectangle;
    RectangleTop: TRectangle;
    RectangleLeftLine: TRectangle;
    RectangleRigthLine: TRectangle;
    RectangleTopLeftLine: TRectangle;
    RectangleTopRigthLine: TRectangle;
    RectangleBottonLeftLine: TRectangle;
    RectangleBottonRigthLine: TRectangle;
    RectangleContent: TRectangle;
    RectangleAsideLeft: TRectangle;
    RectangleItemsLeft: TRectangle;
    imgLogo: TImage;
    btnAtalhos: TSpeedButton;
    btnPainelAtendimento: TSpeedButton;
    RectangleItemsRigth: TRectangle;
    rectangleTopNotifications: TRectangle;
    LayoutItemsCenter: TLayout;
    imageIconNotifications: TImage;
    LayoutTop: TLayout;
    LayoutItemsLeft: TLayout;
    LayoutItemsRigth: TLayout;
    lblBemVindo: TLabel;
    rectMenuHome: TRectangle;
    rectLineHome: TRectangle;
    rectIconHome: TRectangle;
    LayoutAsideLeftContents: TLayout;
    LayoutBottom: TLayout;
    LayoutCenter: TLayout;
    recLabelHome: TRectangle;
    Label1: TLabel;
    Image2: TImage;
    LayoutSidebarIcons: TLayout;
    LayoutSidebarButtons: TLayout;
    ActionList1: TActionList;
    actInicio: TAction;
    actVendas: TAction;
    VertScrollBox1: TVertScrollBox;
    actEstoque: TAction;
    actLogistica: TAction;
    actCompras: TAction;
    actFinanceiro: TAction;
    actRH: TAction;
    actFiscal: TAction;
    actConfiguracoes: TAction;
    actDashboards: TAction;
    actPDV: TAction;
    actLojaVirtual: TAction;
    rectIconMenuPDV: TRectangle;
    recLinePDV: TRectangle;
    rectIconMenuDashboards: TRectangle;
    rectLineDashboards: TRectangle;
    rectIconMenuConfiguracoes: TRectangle;
    rectLineConfiguracoes: TRectangle;
    rectIconMenuFiscal: TRectangle;
    recLineFiscal: TRectangle;
    rectIconMenuRH: TRectangle;
    rectLineRH: TRectangle;
    rectIconMenuFinanceiro: TRectangle;
    rectLineFinanceiro: TRectangle;
    rectIconMenuCompras: TRectangle;
    recLineCompras: TRectangle;
    rectIconMenuLogistica: TRectangle;
    recLineLogistica: TRectangle;
    rectIconMenuEstoque: TRectangle;
    recLineEstoque: TRectangle;
    rectIconMenuVendas: TRectangle;
    recLineVendas: TRectangle;
    rectMenuLojaVirtual: TRectangle;
    Label2: TLabel;
    Image3: TImage;
    rectMenuPDV: TRectangle;
    Label3: TLabel;
    Image4: TImage;
    rectMenuDashboards: TRectangle;
    Label4: TLabel;
    Image5: TImage;
    rectMenuConfiguracoes: TRectangle;
    Label5: TLabel;
    Image6: TImage;
    rectMenuFiscal: TRectangle;
    Label6: TLabel;
    Image7: TImage;
    rectMenuRH: TRectangle;
    Label7: TLabel;
    Image8: TImage;
    rectMenuFinanceiro: TRectangle;
    Label8: TLabel;
    Image9: TImage;
    rectMenuCompras: TRectangle;
    Label9: TLabel;
    Image10: TImage;
    rectMenuLogistica: TRectangle;
    Label10: TLabel;
    Image11: TImage;
    rectMenuEstoque: TRectangle;
    Label11: TLabel;
    Image12: TImage;
    rectMenuVendas: TRectangle;
    Label12: TLabel;
    Image13: TImage;
    rectIconMenuLojaVirtual: TRectangle;
    rectLineLojaVirtual: TRectangle;
    Image14: TImage;
    Image15: TImage;
    Image16: TImage;
    Image17: TImage;
    Image18: TImage;
    Image19: TImage;
    Image20: TImage;
    Image21: TImage;
    Image22: TImage;
    Image23: TImage;
    Image24: TImage;
    Image25: TImage;
    labelVersion: TLabel;
    labelData: TLabel;
    rectangleContentButtons: TRectangle;
    rectangleShortcut_1: TRectangle;
    imageShortcut_1: TImage;
    labelShortcut_1: TLabel;
    rectangleShortcut_2: TRectangle;
    imageShortcut_2: TImage;
    labelShortcut_2: TLabel;
    rectangleShortcut_3: TRectangle;
    imageShortcut_3: TImage;
    labelShortcut_3: TLabel;
    rectangleShortcut_4: TRectangle;
    imageShortcut_4: TImage;
    labelShortcut_4: TLabel;
    rectangleShortcut_8: TRectangle;
    imageShortcut_8: TImage;
    labelShortcut_8: TLabel;
    rectangleShortcut_7: TRectangle;
    imageShortcut_7: TImage;
    labelShortcut_7: TLabel;
    rectangleShortcut_6: TRectangle;
    imageShortcut_6: TImage;
    labelShortcut_6: TLabel;
    rectangleShortcut_5: TRectangle;
    imageShortcut_5: TImage;
    labelShortcut_5: TLabel;
    rectangleShortcut_9: TRectangle;
    imageShortcut_9: TImage;
    labelShortcut_9: TLabel;
    rectangleShortcut_10: TRectangle;
    imageShortcut_10: TImage;
    labelShortcut_10: TLabel;
    rectangleShortcut_11: TRectangle;
    imageShortcut_11: TImage;
    labelShortcut_11: TLabel;
    rectangleShortcut_12: TRectangle;
    imageShortcut_12: TImage;
    labelShortcut_12: TLabel;
    procedure openSidebar(Sender: TObject);
    procedure closeSidebar(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure LayoutCenterClick(Sender: TObject);
    procedure Image10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure openSidebarOnExternal;
    procedure closeSidebarOnExternal;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

{ TfrmPrincipal }


 //if (validateAccess(
 //     txtLogin.Text.Trim,
 //     txtSenha.Text.Trim,
 //     cmbFilial.ItemIndex.ToString())
 //   ) then
 // begin
 //   changeToPrincipal;
 // end
 // else
 // begin
 //   ShowMessage('Acesso não autorizado!');



procedure TfrmPrincipal.closeSidebar;
begin
  RectangleAsideLeft.Width := 49;
  LayoutSidebarButtons.Visible := False;
end;

procedure TfrmPrincipal.closeSidebarOnExternal;
begin
   self.closeSidebar(self);
end;

procedure TfrmPrincipal.FormResize(Sender: TObject);
begin
   self.closeSidebar(self);
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  self.closeSidebar(self);
end;

procedure TfrmPrincipal.Image10Click(Sender: TObject);
begin

end;

procedure TfrmPrincipal.LayoutCenterClick(Sender: TObject);
begin

end;

procedure TfrmPrincipal.openSidebar(Sender: TObject);
begin
  RectangleAsideLeft.Width := 177;
   LayoutSidebarButtons.Visible := True;
end;

procedure TfrmPrincipal.openSidebarOnExternal;
begin
   self.openSidebar(self);
end;


end.
