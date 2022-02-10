program sistemagenerico;

uses
  Vcl.Forms,
  page.Cadastro in 'src\presentation\pages\page.Cadastro.pas' {PageCadastroCliente},
  page.home in 'src\presentation\pages\page.home.pas' {PageHome},
  page.Lista in 'src\presentation\pages\page.Lista.pas' {PageListaClientes},
  page.index in 'src\presentation\pages\page.index.pas' {PageIndex},
  router in 'src\main\routers\router.pas',
  model.pessoa in 'src\domain\models\model.pessoa.pas',
  usecase.addpessoa in 'src\domain\usecase\pessoa\usecase.addpessoa.pas',
  usecase.getAllPessoa in 'src\domain\usecase\pessoa\usecase.getAllPessoa.pas',
  usecase.getPessoa in 'src\domain\usecase\pessoa\usecase.getPessoa.pas',
  usecase.savePessoa in 'src\domain\usecase\pessoa\usecase.savePessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPageIndex, PageIndex);
  Application.Run;
end.
