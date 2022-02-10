unit page.Lista;

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
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.Imaging.pngimage,
  Vcl.StdCtrls,
  Vcl.Buttons,
  Router4D,
  Router4D.Interfaces;

type
  TPageListaClientes = class(TForm, iRouter4DComponent)
    pnlContainer: TPanel;
    pnlTop: TPanel;
    pnlLista: TPanel;
    DBGrid1: TDBGrid;
    pnlPesquisa: TPanel;
    pnlButtons: TPanel;
    pnlnovo: TPanel;
    pnlexcluir: TPanel;
    Image1: TImage;
    Image2: TImage;
    btnExcluir: TSpeedButton;
    btnNovo: TSpeedButton;
    pnledit: TPanel;
    pnlbtnpesquisa: TPanel;
    Image3: TImage;
    btnpesquisar: TSpeedButton;
    edtpesquisa: TEdit;
    procedure edtpesquisaClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
  private
    procedure AjusteEdit;
  public
    function Render : TForm;
    procedure UnRender;
  end;

var
  PageListaClientes: TPageListaClientes;

implementation

{$R *.dfm}

procedure TPageListaClientes.AjusteEdit;
begin
  if not edtpesquisa.Focused then
  begin
    edtpesquisa.Text := 'Informe sua pesquisa';
    edtpesquisa.Font.Color := clScrollBar;
    exit;
  end;
  edtpesquisa.Text := '';
  edtpesquisa.Font.Color := clBlack;
end;

procedure TPageListaClientes.btnNovoClick(Sender: TObject);
begin
  TRouter4D.Link.&To('Cadastrar');
end;

procedure TPageListaClientes.edtpesquisaClick(Sender: TObject);
begin
  AjusteEdit;
end;

function TPageListaClientes.Render: TForm;
begin
  Result := Self;
  AjusteEdit;
end;

procedure TPageListaClientes.UnRender;
begin

end;

end.
