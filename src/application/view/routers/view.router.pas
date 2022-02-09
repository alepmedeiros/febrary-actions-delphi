unit view.router;

interface

uses
  Router4D,
  view.home,
  view.ListaClientes,
  view.CadastroCliente;

type
  TRouters = class
  private
  public
    constructor Create;
    destructor Destroy; override;
  end;

var
  Routers: TRouters;

implementation

{ TRouters }

constructor TRouters.Create;
begin
  TRouter4D.Switch.router('Home', TPageHome);
  TRouter4D.Switch.router('Lista', TPageListaClientes);
  TRouter4D.Switch.router('Cadastrar', TPageCadastroCliente);
end;

destructor TRouters.Destroy;
begin

  inherited;
end;

initialization

Routers := TRouters.Create;

finalization

Routers.DisposeOf;

end.
