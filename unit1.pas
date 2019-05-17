unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, ComCtrls, Menus;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    MainMenu1: TMainMenu;
    Memo1: TMemo;
    Memo2: TMemo;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    PopupMenu1: TPopupMenu;
    TabControl1: TTabControl;
    Timer1: TTimer;
    TrayIcon1: TTrayIcon;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: boolean);
    procedure MenuItem10Click(Sender: TObject);
    procedure MenuItem12Click(Sender: TObject);
    procedure MenuItem13Click(Sender: TObject);
    procedure MenuItem14Click(Sender: TObject);
    procedure MenuItem15Click(Sender: TObject);
    procedure MenuItem16Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
    procedure TabControl1Change(Sender: TObject);
    procedure TrayIcon1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  TrayIcon1.Visible:=true;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  TrayIcon1.Visible:=false;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  TrayIcon1.Visible:=true;
  Form1.Visible:=false;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: boolean);
begin
  CanClose:=false;
  form1.Visible:=false;
end;

procedure TForm1.MenuItem10Click(Sender: TObject);
begin
  if MenuItem10.Caption = 'Enable Watcher' then
  begin
    MenuItem10.Caption:='Disable Watcher';
    Timer1.Enabled:=true;
  end
  else
  begin
    MenuItem10.Caption:='Enable Watcher';
    Timer1.Enabled:=false;
  end;
end;

procedure TForm1.MenuItem12Click(Sender: TObject);
begin
  showmessage('For more information, please visit https://github.com/Intika-Linux-Apps/Startup-Watcher');
end;

procedure TForm1.MenuItem13Click(Sender: TObject);
begin
  Button1.Click;
end;

procedure TForm1.MenuItem14Click(Sender: TObject);
begin
  button6.click;
end;

procedure TForm1.MenuItem15Click(Sender: TObject);
begin
  button5.Click;
end;

procedure TForm1.MenuItem16Click(Sender: TObject);
begin
  TrayIcon1.Visible:=false;
end;

procedure TForm1.MenuItem1Click(Sender: TObject);
begin
  Form1.Visible:=true;
end;

procedure TForm1.MenuItem2Click(Sender: TObject);
begin
  TrayIcon1.Visible:=false;
  Form1.Visible:=true;
end;

procedure TForm1.MenuItem3Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.MenuItem4Click(Sender: TObject);
begin
  Form1.Visible:=false;
end;

procedure TForm1.MenuItem5Click(Sender: TObject);
begin
  Button1.Click;
end;

procedure TForm1.TabControl1Change(Sender: TObject);
begin

  //0  Root-Systemd-Services
  //1  Root-Systemd-Timers
  //2  User-Systemd-Services
  //3  User-Systemd-Timers
  //4  Root-Systemd-Init.d
  //5  Root-DBus-Services
  //6  Root-Cron
  //7  User-Cron
  //8  Root-XDG-Autostart
  //9  Root-XDG-Openbox
  //10 User-XDG-Openbox
  //11 Root-Udev-Rules
  //12 Root-KDE-User-Autostart
  //13 Root-Plasma-Env
  //14 Root-Plasma-Shutdown
  //15 Root-Etc-Profile
  //16 Root-Etc-Profile.d
  //17 Root-X11-Xinitrc
  //18 User-X11-Xinitrc
  //19 Root-Awesome-Autorun.sh
  //20 Root-Fluxbox-Startup
  //21 Root-RC.Local
  //22 Root-RC.D-RC.Local
  //23 Root-Xsession-GDM
  //24 Root-Xsession-LightDM
  //25 Root-Xsession-LXDM
  //26 Root-Xsession-SDDM
  //27 User-Xsession
  //28 User-Xprofile-User
  //29 User-Wine
  //30 User-Autostart
  //31 User-Autostart-Scripts


  edit1.Caption:=inttostr(tabcontrol1.TabIndex);

end;

procedure TForm1.TrayIcon1Click(Sender: TObject);
begin
  if form1.Visible then
     form1.Visible:=false
  else
     form1.Visible:=true;
end;

end.

