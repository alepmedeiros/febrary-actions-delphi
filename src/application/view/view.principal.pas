unit view.principal;

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
  Vcl.Dialogs, Vcl.CategoryButtons, Vcl.WinXCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, System.Actions, Vcl.ActnList,
  System.ImageList, Vcl.ImgList;

type
  Tviewprincipal = class(TForm)
    pnlToolbar: TPanel;
    imgMenu: TImage;
    imlIcons: TImageList;
    ActionList1: TActionList;
    actHome: TAction;
    actCadastro: TAction;
    SV: TSplitView;
    catMenuItems: TCategoryButtons;
    Panel1: TPanel;
    procedure imgMenuClick(Sender: TObject);
    procedure SVClosed(Sender: TObject);
    procedure SVOpened(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  viewprincipal: Tviewprincipal;

implementation

{$R *.dfm}

procedure Tviewprincipal.FormCreate(Sender: TObject);
begin
catMenuItems.ButtonOptions := catMenuItems.ButtonOptions - [boShowCaptions];
end;

procedure Tviewprincipal.imgMenuClick(Sender: TObject);
begin
  if SV.Opened then
    SV.Close
  else
    SV.Open;
end;

procedure Tviewprincipal.SVClosed(Sender: TObject);
begin
  catMenuItems.ButtonOptions := catMenuItems.ButtonOptions - [boShowCaptions];
  if SV.CloseStyle = svcCompact then
    catMenuItems.Width := SV.CompactWidth;
end;

procedure Tviewprincipal.SVOpened(Sender: TObject);
begin
  catMenuItems.ButtonOptions := catMenuItems.ButtonOptions + [boShowCaptions];
  catMenuItems.Width := SV.OpenedWidth;
end;

end.
