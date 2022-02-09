unit view.CadastroCliente;

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
  Vcl.Imaging.jpeg;

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
    pnlCadastros: TFlowPanel;
    pnlImgUser: TPanel;
    imgNouser: TImage;
    pnlLeftContainer: TPanel;
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
