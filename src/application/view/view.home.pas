unit view.home;

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
  Vcl.Imaging.pngimage,
  Vcl.ExtCtrls,
  Router4D.Interfaces;

type
  TPageHome = class(TForm, iRouter4DComponent)
    pnlContainer: TPanel;
    Panel1: TPanel;
    Image1: TImage;
    Image4: TImage;
    Image2: TImage;
    Image3: TImage;
  private
    { Private declarations }
  public
    function Render : TForm;
    procedure UnRender;
  end;

var
  PageHome: TPageHome;

implementation

{$R *.dfm}

{ TPageHome }

function TPageHome.Render: TForm;
begin
  Result := Self;
end;

procedure TPageHome.UnRender;
begin

end;

end.
