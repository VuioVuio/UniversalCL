unit Form.LoginDialog;

interface

uses
  UCL.TUThemeManager, UCL.TUForm, UCL.TUScrollBox, UCL.Classes, UCL.Utils,
  UCL.TUText, UCL.TUEdit, UCL.TUQuickButton, UCL.TUPanel, UCL.TUPopupMenu,
  UCL.TUCheckBox, UCL.TUCaptionBar, UCL.TUButton,

  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Classes,
  Vcl.Forms, Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.Menus, Vcl.ExtCtrls, Vcl.Controls;

type
  TformLoginDialog = class(TUForm)
    boxMain: TUScrollBox;
    captionbarMain: TUCaptionBar;
    AppTheme: TUThemeManager;
    buttonOk: TUButton;
    buttonCancel: TUButton;
    titleSignin: TUText;
    headingSignin: TUText;
    entryPassword: TUText;
    entryEmail: TUText;
    buttonAppQuit: TUQuickButton;
    buttonAppMinimized: TUQuickButton;
    panelAction: TUPanel;
    textShowMoreOptions: TUText;
    panelMoreOptions: TUPanel;
    checkSendMeNews: TUCheckBox;
    checkKeepLogin: TUCheckBox;
    buttonAppTheme: TUQuickButton;
    editEmail: TUEdit;
    editPassword: TUEdit;
    entryDescription: TUText;
    editDescription: TUEdit;
    popupEdit: TUPopupMenu;
    CutCtrlX1: TMenuItem;
    CopyCtrlC1: TMenuItem;
    PasteCtrlV1: TMenuItem;
    procedure buttonCancelClick(Sender: TObject);
    procedure textShowMoreOptionsClick(Sender: TObject);
    procedure buttonAppThemeClick(Sender: TObject);
    procedure buttonOkClick(Sender: TObject);
    procedure popupEditItemClick(Sender: TObject; Index: Integer);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formLoginDialog: TformLoginDialog;

implementation

{$R *.dfm}

procedure TformLoginDialog.buttonAppThemeClick(Sender: TObject);
begin
  if AppTheme.Theme = utLight then
    AppTheme.CustomTheme := utDark
  else
    AppTheme.CustomTheme := utLight;
  AppTheme.UseSystemTheme := false;
  AppTheme.Reload;
end;

procedure TformLoginDialog.buttonCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TformLoginDialog.buttonOkClick(Sender: TObject);
begin
  Close;
end;

procedure TformLoginDialog.FormCreate(Sender: TObject);
begin
//  EnableBlur(Handle, 3);

  ThemeManager := AppTheme;
end;

procedure TformLoginDialog.popupEditItemClick(Sender: TObject; Index: Integer);
var
  Edit: TCustomEdit;
begin
  Self.SetFocus;  //  Close popup
  if popupEdit.PopupComponent is TCustomEdit then
    begin
      Edit := popupEdit.PopupComponent as TCustomEdit;
      case Index of
        0:  //  Cut
          Edit.CutToClipboard;
        1:  //  Copy
          Edit.CopyToClipboard;
        2:  //  Paste
          Edit.PasteFromClipboard;
      end;
    end;
end;

procedure TformLoginDialog.textShowMoreOptionsClick(Sender: TObject);
begin
  panelMoreOptions.Visible := not panelMoreOptions.Visible;
end;

end.
