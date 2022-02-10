unit page.index;

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
  Vcl.CategoryButtons,
  Vcl.WinXCtrls,
  Vcl.StdCtrls,
  Vcl.Imaging.pngimage,
  Vcl.ExtCtrls,
  System.Actions,
  Vcl.ActnList,
  System.ImageList,
  Vcl.ImgList,
  Router4D,
  page.home;

type
  TPageIndex = class(TForm)
    pnlToolbar: TPanel;
    imgMenu: TImage;
    imlIcons: TImageList;
    ActionList1: TActionList;
    actHome: TAction;
    actCadastro: TAction;
    SV: TSplitView;
    catMenuItems: TCategoryButtons;
    pnlContainer: TPanel;
    procedure imgMenuClick(Sender: TObject);
    procedure SVClosed(Sender: TObject);
    procedure SVOpened(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actCadastroExecute(Sender: TObject);
    procedure actHomeExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PageIndex: TPageIndex;

implementation

{$R *.dfm}

procedure TPageIndex.actCadastroExecute(Sender: TObject);
begin
  TRouter4D.Link.&To('Lista');
end;

procedure TPageIndex.actHomeExecute(Sender: TObject);
begin
  TRouter4D.Link.&To('Home');
end;

procedure TPageIndex.FormCreate(Sender: TObject);
begin
  TRouter4D.Render<TPageHome>.SetElement(pnlContainer, pnlContainer);
  catMenuItems.ButtonOptions := catMenuItems.ButtonOptions - [boShowCaptions];

  Self.Constraints.MaxHeight := self.Height;
  Self.Constraints.MinHeight := Self.Height;
  Self.Constraints.MaxWidth := Self.Width;
  Self.Constraints.MinWidth := Self.Width;
end;

procedure TPageIndex.imgMenuClick(Sender: TObject);
begin
  if SV.Opened then
    SV.Close
  else
    SV.Open;
end;

procedure TPageIndex.SVClosed(Sender: TObject);
begin
  catMenuItems.ButtonOptions := catMenuItems.ButtonOptions - [boShowCaptions];
  if SV.CloseStyle = svcCompact then
    catMenuItems.Width := SV.CompactWidth;
end;

procedure TPageIndex.SVOpened(Sender: TObject);
begin
  catMenuItems.ButtonOptions := catMenuItems.ButtonOptions + [boShowCaptions];
  catMenuItems.Width := SV.OpenedWidth;
end;

end.
