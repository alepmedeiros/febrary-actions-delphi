program sistemagenerico;

uses
  Vcl.Forms,
  view.principal in 'view\view.principal.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
