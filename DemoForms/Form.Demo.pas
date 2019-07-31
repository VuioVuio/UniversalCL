﻿unit Form.Demo;

interface

uses
  //  UCL units
  UCL.Utils, UCL.Classes, UCL.SystemSettings, UCL.IntAnimation, UCL.IntAnimation.Helpers, UCL.TUThemeManager,
  UCL.TUForm, UCL.TUSwitch, UCL.TUScrollBox, UCL.TUCheckBox, UCL.TUProgressBar, UCL.TUHyperLink,
  UCL.TUPanel, UCL.TUSymbolButton, UCL.TUButton, UCL.TUText, UCL.TUCaptionBar, UCL.TURadioButton,
  UCL.TUSlider, UCL.TUContextMenu, UCL.TUSeparator, UCL.TUEdit, UCL.TUItemButton,
  UCL.TUQuickButton, UCL.TUBorder,

  //  Winapi units
  Winapi.Windows, Winapi.Messages,

  //  System units
  System.SysUtils, System.Variants, System.Classes, System.Types, System.ImageList,

  //  VCL units
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Menus, Vcl.Buttons, Vcl.ImgList, Vcl.VirtualImageList,
  Vcl.BaseImageCollection, Vcl.ImageCollection, Vcl.Imaging.pngimage;

type
  TformDemo = class(TUForm)
    AppTheme: TUThemeManager;
    drawerNavigation: TUPanel;
    buttonOpenMenu: TUSymbolButton;
    buttonMenuSettings: TUSymbolButton;
    buttonMenuProfile: TUSymbolButton;
    buttonMenuSave: TUSymbolButton;
    buttonMenuOpen: TUSymbolButton;
    buttonMenuRate: TUSymbolButton;
    boxSmoothScrolling: TUScrollBox;
    captionbarNewStyle: TUCaptionBar;
    headingSettings: TUText;
    entryUserProfile: TUText;
    checkAutoSync: TUCheckBox;
    checkSendEmail: TUCheckBox;
    buttonDeleteAccount: TUButton;
    entryAccountType: TUText;
    radioFreeAccount: TURadioButton;
    radioProAccount: TURadioButton;
    radioDevAccount: TURadioButton;
    desAccountHint: TUText;
    entryStorage: TUText;
    desStorageHint: TUText;
    progressStorageUsed: TUProgressBar;
    imgAvatar: TImage;
    headingAbout: TUText;
    desAppVersion: TUText;
    desFlashVersion: TUText;
    desChromiumVersion: TUText;
    buttonCheckUpdate: TUButton;
    linkEmbarcadero: TUHyperLink;
    buttonUpgradeAccount: TUButton;
    checkKeepEmailPrivate: TUCheckBox;
    entryAppTheme: TUText;
    radioDefaultTheme: TURadioButton;
    radioLightTheme: TURadioButton;
    radioDarkTheme: TURadioButton;
    dialogSelectColor: TColorDialog;
    panelSelectAccentColor: TUPanel;
    checkColorBorder: TUCheckBox;
    panelRibbon: TUScrollBox;
    buttonGoBack: TUSymbolButton;
    separator1: TUSeparator;
    buttonGoHome: TUSymbolButton;
    buttonNewDoc: TUSymbolButton;
    buttonOpenDoc: TUSymbolButton;
    buttonPrintDoc: TUSymbolButton;
    buttonSaveDoc: TUSymbolButton;
    separator2: TUSeparator;
    editAccountName: TUEdit;
    imgcollectionMain: TImageCollection;
    imglistMain: TVirtualImageList;
    linkConnected: TUHyperLink;
    linkCustomColor: TUHyperLink;
    linkDisabled: TUHyperLink;
    buttonNoFocus: TUButton;
    buttonCanFocus: TUButton;
    buttonCustomColor: TUButton;
    buttonReloadSettings: TUSymbolButton;
    buttonHighlight: TUButton;
    buttonDisabled: TUButton;
    buttonToggle: TUButton;
    radioA1: TURadioButton;
    radioA2: TURadioButton;
    radioA3: TURadioButton;
    radioB1: TURadioButton;
    radioB2: TURadioButton;
    check2State: TUCheckBox;
    check3State: TUCheckBox;
    UItemButton1: TUItemButton;
    UItemButton2: TUItemButton;
    symbolButtonOpenDisabled: TUSymbolButton;
    symbolbuttonSaveHorz: TUSymbolButton;
    symbolbuttonSaveVert: TUSymbolButton;
    progressVert: TUProgressBar;
    buttonRandomProgress: TUButton;
    progressCustomColor: TUProgressBar;
    progressConnected: TUProgressBar;
    textDescription: TUText;
    textNormal: TUText;
    textEntry: TUText;
    textHeading: TUText;
    textTitle: TUText;
    buttonRunning: TButton;
    buttonAniStart: TButton;
    buttonAniInverse: TButton;
    buttonWithImage: TUButton;
    sliderHorz: TUSlider;
    sliderDisabled: TUSlider;
    sliderVert: TUSlider;
    popupVert: TUContextMenu;
    popupHorz: TUContextMenu;
    buttonAppBack: TUQuickButton;
    buttonAppQuit: TUQuickButton;
    buttonAppMaximized: TUQuickButton;
    buttonAppMinimized: TUQuickButton;
    comboAppDPI: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure buttonReloadSettingsClick(Sender: TObject);
    procedure buttonAniStartClick(Sender: TObject);
    procedure buttonRandomProgressClick(Sender: TObject);
    procedure buttonAniInverseClick(Sender: TObject);
    procedure buttonOpenMenuClick(Sender: TObject);
    procedure radioDefaultThemeClick(Sender: TObject);
    procedure radioLightThemeClick(Sender: TObject);
    procedure radioDarkThemeClick(Sender: TObject);
    procedure panelSelectAccentColorClick(Sender: TObject);
    procedure checkColorBorderClick(Sender: TObject);
    procedure buttonAppQuitClick(Sender: TObject);
    procedure buttonMenuSettingsClick(Sender: TObject);
    procedure buttonAppMaximizedClick(Sender: TObject);
    procedure buttonAppMinimizedClick(Sender: TObject);
    procedure sliderHorzChange(Sender: TObject);
    procedure popupHorzItemClick(Sender: TObject; Index: Integer);
    procedure AppThemeUpdate(Sender: TObject);
    procedure comboAppDPISelect(Sender: TObject);
  private
  public
  end;

var
  formDemo: TformDemo;

implementation

{$R *.dfm}

{ MAIN FORM }

procedure TformDemo.FormCreate(Sender: TObject);
begin
  Self.ThemeManager := AppTheme;
end;

{ SYSBUTTON }

procedure TformDemo.buttonAppMaximizedClick(Sender: TObject);
begin
  if WindowState <> wsMaximized then
    WindowState := wsMaximized
  else
    WindowState := wsNormal;
end;

procedure TformDemo.buttonAppMinimizedClick(Sender: TObject);
begin
  WindowState := wsMinimized;
end;

procedure TformDemo.buttonAppQuitClick(Sender: TObject);
begin
  Self.Close;
end;

{ ANIMATION BUTTON }

procedure TformDemo.buttonAniStartClick(Sender: TObject);
begin
  buttonRunning.AnimationFromCurrent(apLeft, +210, 25, 250, akOut, afkQuartic,
    procedure begin buttonRunning.SetFocus end);
end;

procedure TformDemo.buttonAniInverseClick(Sender: TObject);
begin
  buttonRunning.AnimationFromCurrent(apLeft, -210, 25, 250, akOut, afkQuartic,
    procedure begin buttonRunning.SetFocus end);
end;

procedure TformDemo.buttonMenuSettingsClick(Sender: TObject);
var
  DPI: Single;
  AniDelta: Integer;
begin
  DPI := Self.PixelsPerInch / 96;

  boxSmoothScrolling.DisableAlign;
  boxSmoothScrolling.HideOldScrollBar;

  if boxSmoothScrolling.Width = 0 then
    AniDelta := Round(DPI * 250)
  else
    AniDelta := - boxSmoothScrolling.Width;

  boxSmoothScrolling.AnimationFromCurrent(apWidth, AniDelta, 20, 200, akOut, afkQuartic,
    procedure begin boxSmoothScrolling.EnableAlign end);
end;

procedure TformDemo.buttonOpenMenuClick(Sender: TObject);
var
  DPI: Single;
  AniWidth: Integer;
begin
  DPI := Self.PixelsPerInch / 96;
  AniWidth := Round((225 - 45 ) * DPI);
  if drawerNavigation.Width <> Round(45 * DPI) then
    AniWidth := - AniWidth;

  drawerNavigation.AnimationFromCurrent(apWidth, AniWidth, 20, 200, akOut, afkQuartic, nil);
end;

{ THEME }

procedure TformDemo.AppThemeUpdate(Sender: TObject);
begin
  //  Active color changed
  panelSelectAccentColor.CustomBackColor := AppTheme.AccentColor;
  buttonAppBack.HighlightColor := AppTheme.AccentColor;

  //  Color on border setting changed
  if AppTheme.ColorOnBorder = true then
    checkColorBorder.State := cbsChecked
  else
    checkColorBorder.State := cbsUnchecked;
end;

procedure TformDemo.buttonReloadSettingsClick(Sender: TObject);
begin
  AppTheme.ReloadAutoSettings;
end;

procedure TformDemo.checkColorBorderClick(Sender: TObject);
begin
  AppTheme.ColorOnBorder := checkColorBorder.State = cbsChecked;
end;

procedure TformDemo.comboAppDPISelect(Sender: TObject);
var
  NewPPI: Integer;
begin
  case comboAppDPI.ItemIndex of
    1: NewPPI := 120;
    2: NewPPI := 144;
    3: NewPPI := 168;
    else
      NewPPI := 96;
  end;

  PixelsPerInch := NewPPI;
  ScaleForPPI(NewPPI);
end;

procedure TformDemo.panelSelectAccentColorClick(Sender: TObject);
var
  NewColor: TColor;
begin
  //  Open dialog
  if dialogSelectColor.Execute = true then
    begin
      NewColor := dialogSelectColor.Color;

      //  Change accent color
      AppTheme.AccentColor := NewColor;
      panelSelectAccentColor.CustomBackColor := NewColor;
    end;
end;

{ POPUP MENU }

procedure TformDemo.popupHorzItemClick(Sender: TObject; Index: Integer);
begin
  Self.SetFocus;
  case Index of
    0:  ShowMessage('Cut');
    1:  ShowMessage('Copy');
    2:  ShowMessage('Paste');
  end;
end;

{ APP THEME SETTINGS }

procedure TformDemo.radioDefaultThemeClick(Sender: TObject);
begin
  AppTheme.AutoTheme := true;
end;

procedure TformDemo.radioLightThemeClick(Sender: TObject);
begin
  AppTheme.Theme := utLight;
end;

procedure TformDemo.radioDarkThemeClick(Sender: TObject);
begin
  AppTheme.Theme := utDark;
end;

{ CONTROLS }

procedure TformDemo.sliderHorzChange(Sender: TObject);
begin
  //  Change progress bar value
  progressConnected.Value := sliderHorz.Value;
end;

procedure TformDemo.buttonRandomProgressClick(Sender: TObject);
begin
  Randomize;
  progressCustomColor.GoToValue(Random(101));
  progressConnected.GoToValue(Random(101));
  progressVert.GoToValue(Random(101));
end;

end.
