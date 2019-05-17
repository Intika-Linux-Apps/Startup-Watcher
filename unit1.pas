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
  //TODO
  //Refresh all
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
     //TODO single refresh
     //For the moment refresh all assigned
     button1.click;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  button1.Click;
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
  //TODO refresh one by one

  //0  Systemd-Services    Root
  //1  Systemd-Timers      Root
  //2  Systemd-Init.d      Root
  //3  Cron-Scheduler      Root
  //4  DBus-Services       Root
  //5  XDG-Autostart       Root
  //6  XDG-Openbox         Root
  //7  X11-Xinitrc         Root
  //8  KDE-Environment     Root
  //9  KDE-Shutdown        Root
  //10 Udev-Rules          Root
  //11 ETC-Profile         Root
  //12 ETC-Profile.d       Root
  //13 RC.D-RC.Local       Root
  //14 RC.Local            Root
  //15 Xsession-GDM        Root
  //16 Xsession-LightDM    Root
  //17 Xsession-LXDM       Root
  //18 Xsession-SDDM       Root
  //19 Fluxbox-Startup     Root
  //20 Aws-Autorun.sh      Root
  //21 Systemd-Services    User
  //22 Systemd-Timers      User
  //23 Cron-Scheduler      User
  //24 XDG-Openbox         User
  //25 X11-Xinitrc         User
  //26 KDE-Autostart       User
  //27 Xsession            User
  //28 Xprofile            User
  //29 Autostart-sh        User
  //30 Autostart           User
  //31 Wine                User

  edit1.Caption:='Tab: ';
  edit1.Caption:=edit1.Caption+inttostr(tabcontrol1.TabIndex);
  edit1.Caption:=edit1.Caption+' Location: ';

  if tabcontrol1.TabIndex=0  then edit1.Caption:=edit1.Caption+'';
  if tabcontrol1.TabIndex=1  then edit1.Caption:=edit1.Caption+'';
  if tabcontrol1.TabIndex=2  then edit1.Caption:=edit1.Caption+'';
  if tabcontrol1.TabIndex=3  then edit1.Caption:=edit1.Caption+'';
  if tabcontrol1.TabIndex=4  then edit1.Caption:=edit1.Caption+'';
  if tabcontrol1.TabIndex=5  then edit1.Caption:=edit1.Caption+'';
  if tabcontrol1.TabIndex=6  then edit1.Caption:=edit1.Caption+'';
  if tabcontrol1.TabIndex=7  then edit1.Caption:=edit1.Caption+'';
  if tabcontrol1.TabIndex=8  then edit1.Caption:=edit1.Caption+'';
  if tabcontrol1.TabIndex=9  then edit1.Caption:=edit1.Caption+'';
  if tabcontrol1.TabIndex=10 then edit1.Caption:=edit1.Caption+'';
  if tabcontrol1.TabIndex=11 then edit1.Caption:=edit1.Caption+'';
  if tabcontrol1.TabIndex=12 then edit1.Caption:=edit1.Caption+'';
  if tabcontrol1.TabIndex=13 then edit1.Caption:=edit1.Caption+'';
  if tabcontrol1.TabIndex=14 then edit1.Caption:=edit1.Caption+'';
  if tabcontrol1.TabIndex=15 then edit1.Caption:=edit1.Caption+'';
  if tabcontrol1.TabIndex=16 then edit1.Caption:=edit1.Caption+'';
  if tabcontrol1.TabIndex=17 then edit1.Caption:=edit1.Caption+'';
  if tabcontrol1.TabIndex=18 then edit1.Caption:=edit1.Caption+'';
  if tabcontrol1.TabIndex=19 then edit1.Caption:=edit1.Caption+'';
  if tabcontrol1.TabIndex=20 then edit1.Caption:=edit1.Caption+'';
  if tabcontrol1.TabIndex=21 then edit1.Caption:=edit1.Caption+'';
  if tabcontrol1.TabIndex=22 then edit1.Caption:=edit1.Caption+'';
  if tabcontrol1.TabIndex=23 then edit1.Caption:=edit1.Caption+'';
  if tabcontrol1.TabIndex=24 then edit1.Caption:=edit1.Caption+'';
  if tabcontrol1.TabIndex=25 then edit1.Caption:=edit1.Caption+'';
  if tabcontrol1.TabIndex=26 then edit1.Caption:=edit1.Caption+'';
  if tabcontrol1.TabIndex=27 then edit1.Caption:=edit1.Caption+'';
  if tabcontrol1.TabIndex=28 then edit1.Caption:=edit1.Caption+'';
  if tabcontrol1.TabIndex=29 then edit1.Caption:=edit1.Caption+'';
  if tabcontrol1.TabIndex=30 then edit1.Caption:=edit1.Caption+'';
  if tabcontrol1.TabIndex=31 then edit1.Caption:=edit1.Caption+'';

end;

procedure TForm1.TrayIcon1Click(Sender: TObject);
begin
  if form1.Visible then
     form1.Visible:=false
  else
     form1.Visible:=true;
end;

end.

