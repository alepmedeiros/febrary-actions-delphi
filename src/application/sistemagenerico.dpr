program sistemagenerico;

uses
  Vcl.Forms,
  view.principal in 'view\view.principal.pas' {PageIndex},
  view.router in 'view\routers\view.router.pas',
  view.home in 'view\view.home.pas' {PageHome},
  view.ListaClientes in 'view\view.ListaClientes.pas' {PageListaClientes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPageIndex, PageIndex);
  Application.CreateForm(TPageHome, PageHome);
  Application.CreateForm(TPageListaClientes, PageListaClientes);
  Application.Run;
end.
