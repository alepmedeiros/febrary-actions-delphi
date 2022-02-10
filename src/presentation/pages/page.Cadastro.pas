unit page.Cadastro;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Router4D,
  Router4D.Interfaces,
  Vcl.Buttons,
  Vcl.Imaging.pngimage,
  Vcl.Imaging.jpeg, Vcl.WinXPanels, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ComCtrls;

type
  TPageCadastroCliente = class(TForm, iRouter4DComponent)
    pnlContainer: TPanel;
    pnlTop: TPanel;
    pnlButton: TPanel;
    pnlCancelar: TPanel;
    pnlSalvar: TPanel;
    Image1: TImage;
    Image2: TImage;
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    pnlLeftContainer: TPanel;
    pnlImgUser: TPanel;
    imgNouser: TImage;
    btnBuscarImagem: TSpeedButton;
    pnlCadastro: TStackPanel;
    Panel1: TPanel;
    StackPanel1: TStackPanel;
    StackPanel2: TStackPanel;
    Label1: TLabel;
    edtNome: TEdit;
    Label2: TLabel;
    edtNascimento: TDateTimePicker;
    Panel2: TPanel;
    StackPanel3: TStackPanel;
    StackPanel4: TStackPanel;
    Label3: TLabel;
    edtLogradouro: TEdit;
    Label4: TLabel;
    edtNumero: TEdit;
    Panel3: TPanel;
    StackPanel5: TStackPanel;
    StackPanel6: TStackPanel;
    Label5: TLabel;
    Label6: TLabel;
    edtCep: TEdit;
    edtCidade: TEdit;
    StackPanel7: TStackPanel;
    Label7: TLabel;
    edtComplemento: TEdit;
    StackPanel8: TStackPanel;
    Label8: TLabel;
    edtBairro: TEdit;
    StackPanel9: TStackPanel;
    Label9: TLabel;
    cbUf: TComboBox;
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    function Render: TForm;
    procedure UnRender;
  end;

var
  PageCadastroCliente: TPageCadastroCliente;

implementation

{$R *.dfm}
{ TPageCadastroCliente }

procedure TPageCadastroCliente.btnCancelarClick(Sender: TObject);
begin
  TRouter4D.Link.&To('Lista');
end;

function TPageCadastroCliente.Render: TForm;
begin
  Result := Self;
end;

procedure TPageCadastroCliente.UnRender;
begin

end;

end.
