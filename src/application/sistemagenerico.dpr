program sistemagenerico;

uses
  Vcl.Forms,
  view.principal in 'view\view.principal.pas' {viewprincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tviewprincipal, viewprincipal);
  Application.Run;
end.
