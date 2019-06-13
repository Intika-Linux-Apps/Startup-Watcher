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
    Memo3: TMemo;
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
    Timer2: TTimer;
    Timer3: TTimer;
    TrayIcon1: TTrayIcon;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: boolean);
    procedure FormCreate(Sender: TObject);
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
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure TrayIcon1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
    var tab0  : string;
    var dif0  : string;
    var tab1  : string;
    var dif1  : string;
    var tab2  : string;
    var dif2  : string;
    var tab3  : string;
    var dif3  : string;
    var tab4  : string;
    var dif4  : string;
    var tab5  : string;
    var dif5  : string;
    var tab6  : string;
    var dif6  : string;
    var tab7  : string;
    var dif7  : string;
    var tab8  : string;
    var dif8  : string;
    var tab9  : string;
    var dif9  : string;
    var tab10 : string;
    var dif10 : string;
    var tab11 : string;
    var dif11 : string;
    var tab12 : string;
    var dif12 : string;
    var tab13 : string;
    var dif13 : string;
    var tab14 : string;
    var dif14 : string;
    var tab15 : string;
    var dif15 : string;
    var tab16 : string;
    var dif16 : string;
    var tab17 : string;
    var dif17 : string;
    var tab18 : string;
    var dif18 : string;
    var tab19 : string;
    var dif19 : string;
    var tab20 : string;
    var dif20 : string;
    var tab21 : string;
    var dif21 : string;
    var tab22 : string;
    var dif22 : string;
    var tab23 : string;
    var dif23 : string;
    var tab24 : string;
    var dif24 : string;
    var tab25 : string;
    var dif25 : string;
    var tab26 : string;
    var dif26 : string;
    var tab27 : string;
    var dif27 : string;
    var tab28 : string;
    var dif28 : string;
    var tab29 : string;
    var dif29 : string;
    var tab30 : string;
    var dif30 : string;
    var tab31 : string;
    var dif31 : string;
    var homeDir : string;
    var moveScript : string;
    var updateScript : string;
    var diffCompare : string;

  end;

var
  Form1: TForm1;

implementation
uses
  Unit2;

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  tab0:='Refresh needed';
  tab1:='Refresh needed';
  tab2:='Refresh needed';
  tab3:='Refresh needed';
  tab4:='Refresh needed';
  tab5:='Refresh needed';
  tab6:='Refresh needed';
  tab8:='Refresh needed';
  tab9:='Refresh needed';
  tab10:='Refresh needed';
  tab11:='Refresh needed';
  tab12:='Refresh needed';
  tab13:='Refresh needed';
  tab14:='Refresh needed';
  tab15:='Refresh needed';
  tab16:='Refresh needed';
  tab17:='Refresh needed';
  tab18:='Refresh needed';
  tab19:='Refresh needed';
  tab20:='Refresh needed';
  tab21:='Refresh needed';
  tab22:='Refresh needed';
  tab23:='Refresh needed';
  tab24:='Refresh needed';
  tab25:='Refresh needed';
  tab26:='Refresh needed';
  tab27:='Refresh needed';
  tab28:='Refresh needed';
  tab29:='Refresh needed';
  tab30:='Refresh needed';
  tab31:='Refresh needed';

  // -----------------------------------------------------------------------------------

  homeDir:=GetUserDir();

  // -----------------------------------------------------------------------------------

  If Not DirectoryExists(homeDir +'.startup-watcher') then
    If Not CreateDir (homeDir + '.startup-watcher') Then
      Writeln ('Startup-watcher: failed to create config directory ' +homeDir + '.startup-watcher/ !')
    else
      Writeln ('Startup-watcher: created config directory ' +homeDir + '.startup-watcher/ directory');

  If Not DirectoryExists(homeDir +'.startup-watcher/backup') then
    If Not CreateDir (homeDir + '/.startup-watcher/backup') Then
      Writeln ('Startup-watcher: failed to create backup directory ' +homeDir + '.startup-watcher/backup/ !')
    else
      Writeln ('Startup-watcher: created backup directory ' +homeDir + '.startup-watcher/backup/ directory');

  If Not DirectoryExists(homeDir +'.startup-watcher/changes') then
    If Not CreateDir (homeDir + '/.startup-watcher/changes') Then
      Writeln ('Startup-watcher: failed to create changes directory ' +homeDir + '.startup-watcher/changes/ !')
    else
      Writeln ('Startup-watcher: created changes directory ' +homeDir + '.startup-watcher/changes/ directory');

  // -----------------------------------------------------------------------------------

  updateScript:='';

  //0  Systemd-Services    Root   systemctl list-unit-files; systemctl -l --type service --all
  updateScript:=updateScript +'/bin/systemctl list-unit-files | sort > ';
  updateScript:=updateScript +homeDir + '.startup-watcher/up0 &';

  //1  Systemd-Timers    x Root   already watched in services (systemctl list-timers --all)
  //updateScript:=updateScript +' > ';
  //updateScript:=updateScript +homeDir + '.startup-watcher/up1 &';
  tab1:='Inactive/disabled';

  //2  Systemd-Init.d      Root   ls -l /etc/init.d/
  updateScript:=updateScript +'/bin/ls -l /etc/init.d/ > ';
  updateScript:=updateScript +homeDir + '.startup-watcher/up2 &';

  //3  Cron-Scheduler      Root   ls -l /etc/cron*; cat /var/spool/cron/*
  updateScript:=updateScript +'/bin/ls -l /etc/cron* > ';
  updateScript:=updateScript +homeDir + '.startup-watcher/up3;';
  updateScript:=updateScript + '/bin/echo >> ';
  updateScript:=updateScript +homeDir + '.startup-watcher/up3;';
  updateScript:=updateScript + '/bin/echo ------------------------------------------------------ >> ';
  updateScript:=updateScript +homeDir + '.startup-watcher/up3;';
  updateScript:=updateScript + '/bin/echo Cat output >> ';
  updateScript:=updateScript +homeDir + '.startup-watcher/up3;';
  updateScript:=updateScript + '/bin/echo ------------------------------------------------------ >> ';
  updateScript:=updateScript +homeDir + '.startup-watcher/up3;';
  updateScript:=updateScript +'/bin/cat /var/spool/cron/*  >> ';
  updateScript:=updateScript +homeDir + '.startup-watcher/up3 2>> '+homeDir +'.startup-watcher/up3 &';

  //4  DBus-Services       Root   ls -l /usr/share/dbus-1/services/
  updateScript:=updateScript +'/bin/ls -l /usr/share/dbus-1/services/ > ';
  updateScript:=updateScript +homeDir + '.startup-watcher/up4 &';

  //5  XDG-Autostart       Root   ls -l /etc/xdg/autostart/
  updateScript:=updateScript +'/bin/ls -l /etc/xdg/autostart/ > ';
  updateScript:=updateScript +homeDir + '.startup-watcher/up5 &';

  //6  XDG-Openbox         Root   ls -l /etc/xdg/openbox/; cat /etc/xdg/openbox/*
  updateScript:=updateScript +'/bin/ls -l /etc/xdg/openbox/ > ';
  updateScript:=updateScript +homeDir + '.startup-watcher/up6;';
  updateScript:=updateScript + '/bin/echo >> ';
  updateScript:=updateScript +homeDir + '.startup-watcher/up6;';
  updateScript:=updateScript + '/bin/echo ------------------------------------------------------ >> ';
  updateScript:=updateScript +homeDir + '.startup-watcher/up6;';
  updateScript:=updateScript + '/bin/echo Cat output >> ';
  updateScript:=updateScript +homeDir + '.startup-watcher/up6;';
  updateScript:=updateScript + '/bin/echo ------------------------------------------------------ >> ';
  updateScript:=updateScript +homeDir + '.startup-watcher/up6;';
  updateScript:=updateScript +'/bin/cat /etc/xdg/openbox/* >> ';
  updateScript:=updateScript +homeDir + '.startup-watcher/up6 &';

  //7  X11-Xinitrc         Root   cat /etc/X11/xinit/xinitrc
  updateScript:=updateScript +'/bin/cat /etc/X11/xinit/xinitrc > ';
  updateScript:=updateScript +homeDir + '.startup-watcher/up7 &';

  //8  Udev-Rules          Root   ls -l /udev/rules.d/; cat /udev/rules.d/*
  updateScript:=updateScript +'/bin/ls -l /etc/udev/rules.d/ > ';
  updateScript:=updateScript +homeDir + '.startup-watcher/up8;';
  updateScript:=updateScript + '/bin/echo >> ';
  updateScript:=updateScript +homeDir + '.startup-watcher/up8;';
  updateScript:=updateScript + '/bin/echo ------------------------------------------------------ >> ';
  updateScript:=updateScript +homeDir + '.startup-watcher/up8;';
  updateScript:=updateScript + '/bin/echo Cat output >> ';
  updateScript:=updateScript +homeDir + '.startup-watcher/up8;';
  updateScript:=updateScript + '/bin/echo ------------------------------------------------------ >> ';
  updateScript:=updateScript +homeDir + '.startup-watcher/up8;';
  updateScript:=updateScript +'/bin/cat /etc/udev/rules.d/* >> ';
  updateScript:=updateScript +homeDir + '.startup-watcher/up8 &';

  //9  ETC-Profile.d       Root   ls -l /etc/profile.d/; cat /etc/profile.d/* (started with shell)
  updateScript:=updateScript +'/bin/ls -l /etc/profile.d/ > ';
  updateScript:=updateScript +homeDir + '.startup-watcher/up9;';
  updateScript:=updateScript + '/bin/echo >> ';
  updateScript:=updateScript +homeDir + '.startup-watcher/up9;';
  updateScript:=updateScript + '/bin/echo ------------------------------------------------------ >> ';
  updateScript:=updateScript +homeDir + '.startup-watcher/up9;';
  updateScript:=updateScript + '/bin/echo Cat output >> ';
  updateScript:=updateScript +homeDir + '.startup-watcher/up9;';
  updateScript:=updateScript + '/bin/echo ------------------------------------------------------ >> ';
  updateScript:=updateScript +homeDir + '.startup-watcher/up9;';
  updateScript:=updateScript +'/bin/cat /etc/profile.d/* >> ';
  updateScript:=updateScript +homeDir + '.startup-watcher/up9 &';

  //10 ETC-Profile         Root   cat /etc/profile
  updateScript:=updateScript +'/bin/cat /etc/profile > ';
  updateScript:=updateScript +homeDir + '.startup-watcher/up10 &';

  //11 RC.D-RC.Local       Root   cat /etc/rc.d/rc.local
  updateScript:=updateScript +'cat /etc/rc.d/rc.local > ';
  updateScript:=updateScript +homeDir + '.startup-watcher/up11 &';

  //12 RC.Local            Root   cat /etc/rc.local
  updateScript:=updateScript +'/bin/cat /etc/rc.local > ';
  updateScript:=updateScript +homeDir + '.startup-watcher/up12 &';

  //13 Xsession-LightDM    Root   cat /etc/lightdm/Xsession
  updateScript:=updateScript +'/bin/cat /etc/lightdm/Xsession > ';
  updateScript:=updateScript +homeDir + '.startup-watcher/up13 &';

  //14 Xsession-LXDM       Root   cat /etc/lxdm/Xsession
  updateScript:=updateScript +'/bin/cat /etc/lxdm/Xsession > ';
  updateScript:=updateScript +homeDir + '.startup-watcher/up14 &';

  //15 Xsession-SDDM       Root   cat /usr/share/sddm/scripts/Xsession
  updateScript:=updateScript +'/bin/cat /usr/share/sddm/scripts/Xsession > ';
  updateScript:=updateScript +homeDir + '.startup-watcher/up15 &';

  //16 Xsession-GDM        Root   cat /etc/gdm/Xsession
  updateScript:=updateScript +'/bin/cat /etc/gdm/Xsession > ';
  updateScript:=updateScript +homeDir + '.startup-watcher/up16 &';

  //17 Systemd-Services    User   systemctl list-unit-files --user
  updateScript:=updateScript +'/bin/systemctl list-unit-files --user | sort > ';
  updateScript:=updateScript +homeDir + '.startup-watcher/up17 &';

  //18 Systemd-Timers    x User   already watched in services (systemctl list-timers --all --user)
  //updateScript:=updateScript +' > ';
  //updateScript:=updateScript +homeDir + '.startup-watcher/up18 &';
  tab18:='Inactive/disabled';

  //19 Cron-Scheduler      User   crontab -l
  updateScript:=updateScript +'/bin/crontab -l > ';
  updateScript:=updateScript +homeDir + '.startup-watcher/up19 &';

  //20 XDG-Openbox         User   ls -l ~/.config/openbox/; cat ~/.config/openbox/* (environment & autostart)
  updateScript:=updateScript +'/bin/ls -l ' +homeDir + '.config/openbox/ > ';
  updateScript:=updateScript +homeDir + '.startup-watcher/up20;';
  updateScript:=updateScript + '/bin/echo >> ';
  updateScript:=updateScript +homeDir + '.startup-watcher/up20;';
  updateScript:=updateScript + '/bin/echo ------------------------------------------------------ >> ';
  updateScript:=updateScript +homeDir + '.startup-watcher/up20;';
  updateScript:=updateScript + '/bin/echo Cat output >> ';
  updateScript:=updateScript +homeDir + '.startup-watcher/up20;';
  updateScript:=updateScript + '/bin/echo ------------------------------------------------------ >> ';
  updateScript:=updateScript +homeDir + '.startup-watcher/up20;';
  updateScript:=updateScript +'/bin/cat '   +homeDir + '.config/openbox/* >> ';
  updateScript:=updateScript +homeDir + '.startup-watcher/up20 &';

  //21 X11-Xinitrc       x User   not yet implemented (~/.xinitrc)
  //updateScript:=updateScript +' > ';
  //updateScript:=updateScript +homeDir + '.startup-watcher/up21 &';
  tab21:='Inactive/disabled';

  //22 KDE-Environment     User   ls -l ~/.config/plasma-workspace/env/
  updateScript:=updateScript +'/bin/ls -l ' +homeDir + '.config/plasma-workspace/env/ > ';
  updateScript:=updateScript +homeDir + '.startup-watcher/up22 &';

  //23 KDE-Autostart       User   ls -l ~/.kde/Autostart/
  updateScript:=updateScript +'/bin/ls -l ' +homeDir + '.kde/Autostart/ > ';
  updateScript:=updateScript +homeDir + '.startup-watcher/up23 &';

  //24 KDE-Shutdown        User   ls -l ~/.config/plasma-workspace/shutdown/
  updateScript:=updateScript +'/bin/ls -l ' +homeDir + '.config/plasma-workspace/shutdown/ > ';
  updateScript:=updateScript +homeDir + '.startup-watcher/up24 &';

  //25 Xsession            User   cat ~/.xsession
  updateScript:=updateScript +'/bin/cat ' +homeDir + '.xsession > ';
  updateScript:=updateScript +homeDir + '.startup-watcher/up25 &';

  //26 Xprofile            User   cat ~/.xprofile
  updateScript:=updateScript +'/bin/cat ' +homeDir + '.xprofile > ';
  updateScript:=updateScript +homeDir + '.startup-watcher/up26 &';

  //27 Autostart-sh        User   ls -l ~/.config/autostart-scripts/
  updateScript:=updateScript +'/bin/ls -l ' +homeDir + '.config/autostart-scripts/ > ';
  updateScript:=updateScript +homeDir + '.startup-watcher/up27 &';

  //28 Autostart           User   ls -l ~/.config/autostart/
  updateScript:=updateScript +'/bin/ls -l ' + homeDir + '.config/autostart/ > ';
  updateScript:=updateScript +homeDir + '.startup-watcher/up28 &';

  //29 Fluxbox-Startup   x User   not yet implemented (~/.fluxbox/startup)
  //updateScript:=updateScript +' > ';
  //updateScript:=updateScript +homeDir + '.startup-watcher/up29 &';
  tab29:='Inactive/disabled';

  //30 Aws-Autorun.sh    x User   not yet implemented (~/.config/awesome/autorun.sh)
  //updateScript:=updateScript +' > ';
  //updateScript:=updateScript +homeDir + '.startup-watcher/up30 &';
  tab30:='Inactive/disabled';

  //31 Wine              x User   not yet implemented (~/.wine/...)
  //updateScript:=updateScript +' > ';
  //updateScript:=updateScript +homeDir + '.startup-watcher/up31 &';
  tab31:='Inactive/disabled';

  // -----------------------------------------------------------------------------------

  moveScript:='';
  moveScript:=moveScript + '/bin/cp -f ' +homeDir + '.startup-watcher/up0 ' +homeDir + '.startup-watcher/prev0;';
  //moveScript:=moveScript + '/bin/cp -f ' +homeDir + '.startup-watcher/up1 ' +homeDir + '.startup-watcher/prev1;';
  moveScript:=moveScript + '/bin/cp -f ' +homeDir + '.startup-watcher/up2 ' +homeDir + '.startup-watcher/prev2;';
  moveScript:=moveScript + '/bin/cp -f ' +homeDir + '.startup-watcher/up3 ' +homeDir + '.startup-watcher/prev3;';
  moveScript:=moveScript + '/bin/cp -f ' +homeDir + '.startup-watcher/up4 ' +homeDir + '.startup-watcher/prev4;';
  moveScript:=moveScript + '/bin/cp -f ' +homeDir + '.startup-watcher/up5 ' +homeDir + '.startup-watcher/prev5;';
  moveScript:=moveScript + '/bin/cp -f ' +homeDir + '.startup-watcher/up6 ' +homeDir + '.startup-watcher/prev6;';
  moveScript:=moveScript + '/bin/cp -f ' +homeDir + '.startup-watcher/up7 ' +homeDir + '.startup-watcher/prev7;';
  moveScript:=moveScript + '/bin/cp -f ' +homeDir + '.startup-watcher/up8 ' +homeDir + '.startup-watcher/prev8;';
  moveScript:=moveScript + '/bin/cp -f ' +homeDir + '.startup-watcher/up9 ' +homeDir + '.startup-watcher/prev9;';
  moveScript:=moveScript + '/bin/cp -f ' +homeDir + '.startup-watcher/up10 ' +homeDir + '.startup-watcher/prev10;';
  moveScript:=moveScript + '/bin/cp -f ' +homeDir + '.startup-watcher/up11 ' +homeDir + '.startup-watcher/prev11;';
  moveScript:=moveScript + '/bin/cp -f ' +homeDir + '.startup-watcher/up12 ' +homeDir + '.startup-watcher/prev12;';
  moveScript:=moveScript + '/bin/cp -f ' +homeDir + '.startup-watcher/up13 ' +homeDir + '.startup-watcher/prev13;';
  moveScript:=moveScript + '/bin/cp -f ' +homeDir + '.startup-watcher/up14 ' +homeDir + '.startup-watcher/prev14;';
  moveScript:=moveScript + '/bin/cp -f ' +homeDir + '.startup-watcher/up15 ' +homeDir + '.startup-watcher/prev15;';
  moveScript:=moveScript + '/bin/cp -f ' +homeDir + '.startup-watcher/up16 ' +homeDir + '.startup-watcher/prev16;';
  moveScript:=moveScript + '/bin/cp -f ' +homeDir + '.startup-watcher/up17 ' +homeDir + '.startup-watcher/prev17;';
  //moveScript:=moveScript + '/bin/cp -f ' +homeDir + '.startup-watcher/up18 ' +homeDir + '.startup-watcher/prev18;';
  moveScript:=moveScript + '/bin/cp -f ' +homeDir + '.startup-watcher/up19 ' +homeDir + '.startup-watcher/prev19;';
  moveScript:=moveScript + '/bin/cp -f ' +homeDir + '.startup-watcher/up20 ' +homeDir + '.startup-watcher/prev20;';
  //moveScript:=moveScript + '/bin/cp -f ' +homeDir + '.startup-watcher/up21 ' +homeDir + '.startup-watcher/prev21;';
  moveScript:=moveScript + '/bin/cp -f ' +homeDir + '.startup-watcher/up22 ' +homeDir + '.startup-watcher/prev22;';
  moveScript:=moveScript + '/bin/cp -f ' +homeDir + '.startup-watcher/up23 ' +homeDir + '.startup-watcher/prev23;';
  moveScript:=moveScript + '/bin/cp -f ' +homeDir + '.startup-watcher/up24 ' +homeDir + '.startup-watcher/prev24;';
  moveScript:=moveScript + '/bin/cp -f ' +homeDir + '.startup-watcher/up25 ' +homeDir + '.startup-watcher/prev25;';
  moveScript:=moveScript + '/bin/cp -f ' +homeDir + '.startup-watcher/up26 ' +homeDir + '.startup-watcher/prev26;';
  moveScript:=moveScript + '/bin/cp -f ' +homeDir + '.startup-watcher/up27 ' +homeDir + '.startup-watcher/prev27;';
  moveScript:=moveScript + '/bin/cp -f ' +homeDir + '.startup-watcher/up28 ' +homeDir + '.startup-watcher/prev28;';
  //moveScript:=moveScript + '/bin/cp -f ' +homeDir + '.startup-watcher/up29 ' +homeDir + '.startup-watcher/prev29;';
  //moveScript:=moveScript + '/bin/cp -f ' +homeDir + '.startup-watcher/up30 ' +homeDir + '.startup-watcher/prev30;';
  //moveScript:=moveScript + '/bin/cp -f ' +homeDir + '.startup-watcher/up31 ' +homeDir + '.startup-watcher/prev31;';

  // -----------------------------------------------------------------------------------

  diffCompare:='';
  //diff <(/bin/cat old) <(/bin/cat new)
  diffCompare:=diffCompare + '/usr/bin/diff <(/bin/cat ' +homeDir + '.startup-watcher/prev0 | /bin/grep -v NetworkManager.service | /bin/grep -v networkmanager.service) <(/bin/cat ' +homeDir + '.startup-watcher/up0 | /bin/grep -v NetworkManager.service | /bin/grep -v networkmanager.service) > ' +homeDir + '.startup-watcher/diff0;';
  //diffCompare:=diffCompare + '/usr/bin/diff <(/bin/cat ' +homeDir + '.startup-watcher/prev1) <(/bin/cat ' +homeDir + '.startup-watcher/up1) > ' +homeDir + '.startup-watcher/diff1;';
  diffCompare:=diffCompare + '/usr/bin/diff <(/bin/cat ' +homeDir + '.startup-watcher/prev2) <(/bin/cat ' +homeDir + '.startup-watcher/up2) > ' +homeDir + '.startup-watcher/diff2;';
  diffCompare:=diffCompare + '/usr/bin/diff <(/bin/cat ' +homeDir + '.startup-watcher/prev3) <(/bin/cat ' +homeDir + '.startup-watcher/up3) > ' +homeDir + '.startup-watcher/diff3;';
  diffCompare:=diffCompare + '/usr/bin/diff <(/bin/cat ' +homeDir + '.startup-watcher/prev4) <(/bin/cat ' +homeDir + '.startup-watcher/up4) > ' +homeDir + '.startup-watcher/diff4;';
  diffCompare:=diffCompare + '/usr/bin/diff <(/bin/cat ' +homeDir + '.startup-watcher/prev5) <(/bin/cat ' +homeDir + '.startup-watcher/up5) > ' +homeDir + '.startup-watcher/diff5;';
  diffCompare:=diffCompare + '/usr/bin/diff <(/bin/cat ' +homeDir + '.startup-watcher/prev6) <(/bin/cat ' +homeDir + '.startup-watcher/up6) > ' +homeDir + '.startup-watcher/diff6;';
  diffCompare:=diffCompare + '/usr/bin/diff <(/bin/cat ' +homeDir + '.startup-watcher/prev7) <(/bin/cat ' +homeDir + '.startup-watcher/up7) > ' +homeDir + '.startup-watcher/diff7;';
  diffCompare:=diffCompare + '/usr/bin/diff <(/bin/cat ' +homeDir + '.startup-watcher/prev8) <(/bin/cat ' +homeDir + '.startup-watcher/up8) > ' +homeDir + '.startup-watcher/diff8;';
  diffCompare:=diffCompare + '/usr/bin/diff <(/bin/cat ' +homeDir + '.startup-watcher/prev9) <(/bin/cat ' +homeDir + '.startup-watcher/up9) > ' +homeDir + '.startup-watcher/diff9;';
  diffCompare:=diffCompare + '/usr/bin/diff <(/bin/cat ' +homeDir + '.startup-watcher/prev10) <(/bin/cat ' +homeDir + '.startup-watcher/up10) > ' +homeDir + '.startup-watcher/diff10;';
  diffCompare:=diffCompare + '/usr/bin/diff <(/bin/cat ' +homeDir + '.startup-watcher/prev11) <(/bin/cat ' +homeDir + '.startup-watcher/up11) > ' +homeDir + '.startup-watcher/diff11;';
  diffCompare:=diffCompare + '/usr/bin/diff <(/bin/cat ' +homeDir + '.startup-watcher/prev12) <(/bin/cat ' +homeDir + '.startup-watcher/up12) > ' +homeDir + '.startup-watcher/diff12;';
  diffCompare:=diffCompare + '/usr/bin/diff <(/bin/cat ' +homeDir + '.startup-watcher/prev13) <(/bin/cat ' +homeDir + '.startup-watcher/up13) > ' +homeDir + '.startup-watcher/diff13;';
  diffCompare:=diffCompare + '/usr/bin/diff <(/bin/cat ' +homeDir + '.startup-watcher/prev14) <(/bin/cat ' +homeDir + '.startup-watcher/up14) > ' +homeDir + '.startup-watcher/diff14;';
  diffCompare:=diffCompare + '/usr/bin/diff <(/bin/cat ' +homeDir + '.startup-watcher/prev15) <(/bin/cat ' +homeDir + '.startup-watcher/up15) > ' +homeDir + '.startup-watcher/diff15;';
  diffCompare:=diffCompare + '/usr/bin/diff <(/bin/cat ' +homeDir + '.startup-watcher/prev16) <(/bin/cat ' +homeDir + '.startup-watcher/up16) > ' +homeDir + '.startup-watcher/diff16;';
  diffCompare:=diffCompare + '/usr/bin/diff <(/bin/cat ' +homeDir + '.startup-watcher/prev17) <(/bin/cat ' +homeDir + '.startup-watcher/up17) > ' +homeDir + '.startup-watcher/diff17;';
  //diffCompare:=diffCompare + '/usr/bin/diff <(/bin/cat ' +homeDir + '.startup-watcher/prev18) <(/bin/cat ' +homeDir + '.startup-watcher/up18) > ' +homeDir + '.startup-watcher/diff18;';
  diffCompare:=diffCompare + '/usr/bin/diff <(/bin/cat ' +homeDir + '.startup-watcher/prev19) <(/bin/cat ' +homeDir + '.startup-watcher/up19) > ' +homeDir + '.startup-watcher/diff19;';
  diffCompare:=diffCompare + '/usr/bin/diff <(/bin/cat ' +homeDir + '.startup-watcher/prev20) <(/bin/cat ' +homeDir + '.startup-watcher/up20) > ' +homeDir + '.startup-watcher/diff20;';
  //diffCompare:=diffCompare + + '/usr/bin/diff <(/bin/cat ' +homeDir + '.startup-watcher/prev21) <(/bin/cat ' +homeDir + '.startup-watcher/up21) > ' +homeDir + '.startup-watcher/diff21;';
  diffCompare:=diffCompare + '/usr/bin/diff <(/bin/cat ' +homeDir + '.startup-watcher/prev22) <(/bin/cat ' +homeDir + '.startup-watcher/up22) > ' +homeDir + '.startup-watcher/diff22;';
  diffCompare:=diffCompare + '/usr/bin/diff <(/bin/cat ' +homeDir + '.startup-watcher/prev23) <(/bin/cat ' +homeDir + '.startup-watcher/up23) > ' +homeDir + '.startup-watcher/diff23;';
  diffCompare:=diffCompare + '/usr/bin/diff <(/bin/cat ' +homeDir + '.startup-watcher/prev24) <(/bin/cat ' +homeDir + '.startup-watcher/up24) > ' +homeDir + '.startup-watcher/diff24;';
  diffCompare:=diffCompare + '/usr/bin/diff <(/bin/cat ' +homeDir + '.startup-watcher/prev25) <(/bin/cat ' +homeDir + '.startup-watcher/up25) > ' +homeDir + '.startup-watcher/diff25;';
  diffCompare:=diffCompare + '/usr/bin/diff <(/bin/cat ' +homeDir + '.startup-watcher/prev26) <(/bin/cat ' +homeDir + '.startup-watcher/up26) > ' +homeDir + '.startup-watcher/diff26;';
  diffCompare:=diffCompare + '/usr/bin/diff <(/bin/cat ' +homeDir + '.startup-watcher/prev27) <(/bin/cat ' +homeDir + '.startup-watcher/up27) > ' +homeDir + '.startup-watcher/diff27;';
  diffCompare:=diffCompare + '/usr/bin/diff <(/bin/cat ' +homeDir + '.startup-watcher/prev28) <(/bin/cat ' +homeDir + '.startup-watcher/up28) > ' +homeDir + '.startup-watcher/diff28;';
  //diffCompare:=diffCompare + '/usr/bin/diff <(/bin/cat ' +homeDir + '.startup-watcher/prev29) <(/bin/cat ' +homeDir + '.startup-watcher/up29) > ' +homeDir + '.startup-watcher/diff29;';
  //diffCompare:=diffCompare + '/usr/bin/diff <(/bin/cat ' +homeDir + '.startup-watcher/prev30) <(/bin/cat ' +homeDir + '.startup-watcher/up30) > ' +homeDir + '.startup-watcher/diff30;';
  //diffCompare:=diffCompare + '/usr/bin/diff <(/bin/cat ' +homeDir + '.startup-watcher/prev31) <(/bin/cat ' +homeDir + '.startup-watcher/up31) > ' +homeDir + '.startup-watcher/diff31;';

  // -----------------------------------------------------------------------------------

  //backup
  SysUtils.ExecuteProcess(UTF8ToSys('/bin/bash'), ' -c "/bin/cp -f ' + homeDir + '.startup-watcher/dif* ' + homeDir + '.startup-watcher/backup/"', []);
  SysUtils.ExecuteProcess(UTF8ToSys('/bin/bash'), ' -c "/bin/cp -f ' + homeDir + '.startup-watcher/up* ' + homeDir + '.startup-watcher/backup/"', []);
  SysUtils.ExecuteProcess(UTF8ToSys('/bin/bash'), ' -c "/bin/cp -f ' + homeDir + '.startup-watcher/prev* ' + homeDir + '.startup-watcher/backup/"', []);

  // -----------------------------------------------------------------------------------

  if (FileExists(homeDir + '/.startup-watcher/up0') and  FileExists(homeDir + '.startup-watcher/up2')) then
    begin
         Writeln ('Startup-watcher: found previous scan on ' +homeDir + '.startup-watcher/*, loading datas');
         SysUtils.ExecuteProcess(UTF8ToSys('/bin/bash'), ' -c "' + moveScript + '"', []);
         SysUtils.ExecuteProcess(UTF8ToSys('/bin/bash'), ' -c "' + updateScript + '"', []);
         Timer3.Enabled:=true;
    end else
    begin
         Writeln ('Startup-watcher: unable to find previous scan on ' +homeDir + '.startup-watcher/*, running new scan');
         //Showmessage(updateScript);
         SysUtils.ExecuteProcess(UTF8ToSys('/bin/bash'), ' -c "' + updateScript + '"', []);
         Timer2.Enabled:=True;
    end;

  // -----------------------------------------------------------------------------------

  Timer1.Enabled:=true;

end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  //Move, update and compare
  SysUtils.ExecuteProcess(UTF8ToSys('/bin/bash'),  ' -c "' + moveScript + '"', []);
  SysUtils.ExecuteProcess(UTF8ToSys('/bin/bash'),  ' -c "' + updateScript + '"', []);
  Timer3.Enabled:=true;
  Timer1.Enabled:=true;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
  //Init first run
  //Wait for update to occur then cp new to old
  //Showmessage(moveScript);
  SysUtils.ExecuteProcess(UTF8ToSys('/bin/bash'), ' -c "' + moveScript + '"', []);
  Timer2.Enabled:=False;
end;

procedure TForm1.Timer3Timer(Sender: TObject);
var i: Integer;
var fileNameDiff, fileNameUp, fileNamePrev : String;
begin
  //Compare and popup
  //Showmessage(diffCompare);
  SysUtils.ExecuteProcess(UTF8ToSys('/bin/bash'), ' -c "' + diffCompare + '"', []);


  memo3.Text:='';

  i := 0; while i < 32 do
  begin
       if FileExists(homeDir + '.startup-watcher/diff' + inttostr(i)) then memo3.Lines.LoadFromFile(homeDir + '.startup-watcher/diff' + inttostr(i));

       if memo3.Text <> '' then
          begin
               timer1.Enabled:=false;

               fileNameDiff:=inttostr(i) + '-Diff-' + DateToStr(Now) + '-' + TimeToStr(Now);
               fileNameUp:=inttostr(i)   + '-New-'  + DateToStr(Now) + '-' + TimeToStr(Now);
               fileNamePrev:=inttostr(i) + '-Prev-' + DateToStr(Now) + '-' + TimeToStr(Now);

               if FileExists(homeDir + '.startup-watcher/diff' + inttostr(i)) then
               CopyFile(homeDir + '.startup-watcher/diff' + inttostr(i) , homeDir + '.startup-watcher/changes/' + fileNameDiff, true);

               if FileExists(homeDir + '.startup-watcher/prev' + inttostr(i)) then
               CopyFile(homeDir + '.startup-watcher/prev' + inttostr(i) , homeDir + '.startup-watcher/changes/' + fileNamePrev, true);

               if FileExists(homeDir + '.startup-watcher/up' + inttostr(i)) then
               CopyFile(homeDir + '.startup-watcher/up' + inttostr(i) , homeDir + '.startup-watcher/changes/' + fileNameUp, true);


               Form2.Visible:=true;
               Form2.BringToFront;
               Form2.Position:=poDesktopCenter;

               tabcontrol1.TabIndex:=i;
               Form1.TabControl1Change(self);
               //Edit1.Text:=Edit1.Text + ' | Changes saved to: ' + homeDir + '.startup-watcher/changes/';


          end;

       memo3.Text:='';
       i := i + 1;
  end;

  timer1.Enabled:=true;
  Timer3.Enabled:=False;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  Form1.TabControl1Change(self);
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: boolean);
begin
  CanClose:=false;
  form1.Visible:=false;
  TrayIcon1.Visible:=true;
  form1.FormStyle:=fsNormal; //fsNormal; //fsSystemStayOnTop
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  button1.Click;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Form1.Visible:=false;
  TrayIcon1.Visible:=true;
  form1.FormStyle:=fsNormal; //fsNormal; //fsSystemStayOnTop
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Timer1.OnTimer(Self);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
     //Changed to reload just instead of refresh just to reload current tab...
     //button1.click;
     Form1.TabControl1Change(self);
end;

procedure TForm1.MenuItem10Click(Sender: TObject);
begin
  if MenuItem10.Caption = 'Enable Watcher' then
  begin
    MenuItem10.Caption:='Disable Watcher';
    Timer1.Enabled:=true;
    form1.FormStyle:=fsNormal; //FormStyle:=fsSystemStayOnTop;
    Showmessage('Startup Watcher: active scan enabled');
  end
  else
  begin
    MenuItem10.Caption:='Enable Watcher';
    Timer1.Enabled:=false;
    form1.FormStyle:=fsNormal; //FormStyle:=fsSystemStayOnTop;
    Showmessage('Startup Watcher: active scan disabled');
  end;
end;

procedure TForm1.MenuItem12Click(Sender: TObject);
begin
  form1.FormStyle:=fsNormal; //FormStyle:=fsSystemStayOnTop;
  showmessage('Startup-Watcher v1.4 - for more information visit https://github.com/Intika-Linux-Apps/Startup-Watcher');
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
  TrayIcon1.Visible:=true;
  form1.FormStyle:=fsNormal; //fsNormal; //fsSystemStayOnTop
end;

procedure TForm1.MenuItem5Click(Sender: TObject);
begin
  Button1.Click;
end;

procedure TForm1.TrayIcon1Click(Sender: TObject);
begin
  if form1.Visible then
     form1.Visible:=false
  else
     form1.Visible:=true;
end;

procedure TForm1.TabControl1Change(Sender: TObject);
begin

  if tabcontrol1.TabIndex < 9 then edit1.Caption:='| Tab: 0' else edit1.Caption:='| Tab: ';
  edit1.Caption:=edit1.Caption+inttostr(tabcontrol1.TabIndex + 1);
  edit1.Caption:=edit1.Caption+' | Location/commands: ';

  //0  Systemd-Services    Root   systemctl list-unit-files; systemctl -l --type service --all
  if tabcontrol1.TabIndex=0  then
  begin
       edit1.Caption:=edit1.Caption+'systemctl list-unit-files; systemctl -l --type service --all';
       if FileExists(homeDir + '.startup-watcher/up0') then memo1.Lines.LoadFromFile(homeDir + '.startup-watcher/up0') else memo1.text:=tab0;
       if FileExists(homeDir + '.startup-watcher/diff0') then memo2.Lines.LoadFromFile(homeDir + '.startup-watcher/diff0') else memo2.text:=dif0;
  end;

  //1  Systemd-Timers    x Root   already watched in services (systemctl list-timers --all)
  if tabcontrol1.TabIndex=1  then
  begin
       edit1.Caption:=edit1.Caption+'already watched in services (systemctl list-timers --all)';
       memo1.text:='Inactive/disabled';
       memo2.text:='Inactive/disabled';
  end;

  //2  Systemd-Init.d      Root   ls -l /etc/init.d/
  if tabcontrol1.TabIndex=2  then
  begin
       edit1.Caption:=edit1.Caption+'ls -l /etc/init.d/';
       if FileExists(homeDir + '.startup-watcher/up2') then memo1.Lines.LoadFromFile(homeDir + '.startup-watcher/up2') else memo1.text:=tab2;
       if FileExists(homeDir + '.startup-watcher/diff2') then memo2.Lines.LoadFromFile(homeDir + '.startup-watcher/diff2') else memo2.text:=dif2;
  end;

  //3  Cron-Scheduler      Root   ls -l /etc/cron*; cat /var/spool/cron/*
  if tabcontrol1.TabIndex=3  then
  begin
       edit1.Caption:=edit1.Caption+'ls -l /etc/cron*; cat /var/spool/cron/*';
       if FileExists(homeDir + '.startup-watcher/up3') then memo1.Lines.LoadFromFile(homeDir + '.startup-watcher/up3') else memo1.text:=tab3;
       if FileExists(homeDir + '.startup-watcher/diff3') then memo2.Lines.LoadFromFile(homeDir + '.startup-watcher/diff3') else memo2.text:=dif3;
  end;

  //4  DBus-Services       Root   ls -l /usr/share/dbus-1/services/
  if tabcontrol1.TabIndex=4  then
  begin
       edit1.Caption:=edit1.Caption+'ls -l /usr/share/dbus-1/services/';
       if FileExists(homeDir + '.startup-watcher/up4') then memo1.Lines.LoadFromFile(homeDir + '.startup-watcher/up4') else memo1.text:=tab4;
       if FileExists(homeDir + '.startup-watcher/diff4') then memo2.Lines.LoadFromFile(homeDir + '.startup-watcher/diff4') else memo2.text:=dif4;
  end;

  //5  XDG-Autostart       Root   ls -l /etc/xdg/autostart/
  if tabcontrol1.TabIndex=5  then
  begin
       edit1.Caption:=edit1.Caption+'ls -l /etc/xdg/autostart/';
       if FileExists(homeDir + '.startup-watcher/up5') then memo1.Lines.LoadFromFile(homeDir + '.startup-watcher/up5') else memo1.text:=tab5;
       if FileExists(homeDir + '.startup-watcher/diff5') then memo2.Lines.LoadFromFile(homeDir + '.startup-watcher/diff5') else memo2.text:=dif5;
  end;

  //6  XDG-Openbox         Root   ls -l /etc/xdg/openbox/; cat /etc/xdg/openbox/*
  if tabcontrol1.TabIndex=6  then
  begin
       edit1.Caption:=edit1.Caption+'ls -l /etc/xdg/openbox/; cat /etc/xdg/openbox/* ';
       if FileExists(homeDir + '.startup-watcher/up6') then memo1.Lines.LoadFromFile(homeDir + '.startup-watcher/up6') else memo1.text:=tab6;
       if FileExists(homeDir + '.startup-watcher/diff6') then memo2.Lines.LoadFromFile(homeDir + '.startup-watcher/diff6') else memo2.text:=dif6;
  end;

  //7  X11-Xinitrc         Root   cat /etc/X11/xinit/xinitrc
  if tabcontrol1.TabIndex=7  then
  begin
       edit1.Caption:=edit1.Caption+'cat /etc/X11/xinit/xinitrc ';
       if FileExists(homeDir + '.startup-watcher/up7') then memo1.Lines.LoadFromFile(homeDir + '.startup-watcher/up7') else memo1.text:=tab7;
       if FileExists(homeDir + '.startup-watcher/diff7') then memo2.Lines.LoadFromFile(homeDir + '.startup-watcher/diff7') else memo2.text:=dif7;
  end;

  //8  Udev-Rules          Root   ls -l /udev/rules.d/; cat /udev/rules.d/*
  if tabcontrol1.TabIndex=8  then
  begin
       edit1.Caption:=edit1.Caption+'ls -l /udev/rules.d/; cat /udev/rules.d/* ';
       if FileExists(homeDir + '.startup-watcher/up8') then memo1.Lines.LoadFromFile(homeDir + '.startup-watcher/up8') else memo1.text:=tab8;
       if FileExists(homeDir + '.startup-watcher/diff8') then memo2.Lines.LoadFromFile(homeDir + '.startup-watcher/diff8') else memo2.text:=dif8;
  end;

  //9  ETC-Profile.d       Root   ls -l /etc/profile.d/; cat /etc/profile.d/* (started with shell)
  if tabcontrol1.TabIndex=9  then
  begin
       edit1.Caption:=edit1.Caption+'cat /etc/profile.d (started with shell)';
       if FileExists(homeDir + '.startup-watcher/up9') then memo1.Lines.LoadFromFile(homeDir + '.startup-watcher/up9') else memo1.text:=tab9;
       if FileExists(homeDir + '.startup-watcher/diff9') then memo2.Lines.LoadFromFile(homeDir + '.startup-watcher/diff9') else memo2.text:=dif9;
  end;

  //10 ETC-Profile         Root   cat /etc/profile
  if tabcontrol1.TabIndex=10 then
  begin
       edit1.Caption:=edit1.Caption+'cat /etc/profile';
       if FileExists(homeDir + '.startup-watcher/up10') then memo1.Lines.LoadFromFile(homeDir + '.startup-watcher/up10') else memo1.text:=tab10;
       if FileExists(homeDir + '.startup-watcher/diff10') then memo2.Lines.LoadFromFile(homeDir + '.startup-watcher/diff10') else memo2.text:=dif10;
  end;

  //11 RC.D-RC.Local       Root   cat /etc/rc.d/rc.local
  if tabcontrol1.TabIndex=11 then
  begin
       edit1.Caption:=edit1.Caption+'cat /etc/rc.d/rc.local';
       if FileExists(homeDir + '.startup-watcher/up11') then memo1.Lines.LoadFromFile(homeDir + '.startup-watcher/up11') else memo1.text:=tab11;
       if FileExists(homeDir + '.startup-watcher/diff11') then memo2.Lines.LoadFromFile(homeDir + '.startup-watcher/diff11') else memo2.text:=dif11;
  end;

  //12 RC.Local            Root   cat /etc/rc.local
  if tabcontrol1.TabIndex=12 then
  begin
       edit1.Caption:=edit1.Caption+'cat /etc/rc.local';
       if FileExists(homeDir + '.startup-watcher/up12') then memo1.Lines.LoadFromFile(homeDir + '.startup-watcher/up12') else memo1.text:=tab12;
       if FileExists(homeDir + '.startup-watcher/diff12') then memo2.Lines.LoadFromFile(homeDir + '.startup-watcher/diff12') else memo2.text:=dif12;
  end;

  //13 Xsession-LightDM    Root   cat /etc/lightdm/Xsession
  if tabcontrol1.TabIndex=13 then
  begin
       edit1.Caption:=edit1.Caption+'cat /etc/lightdm/Xsession';
       if FileExists(homeDir + '.startup-watcher/up13') then memo1.Lines.LoadFromFile(homeDir + '.startup-watcher/up13') else memo1.text:=tab13;
       if FileExists(homeDir + '.startup-watcher/diff13') then memo2.Lines.LoadFromFile(homeDir + '.startup-watcher/diff13') else memo2.text:=dif13;
  end;

  //14 Xsession-LXDM       Root   cat /etc/lxdm/Xsession
  if tabcontrol1.TabIndex=14 then
  begin
       edit1.Caption:=edit1.Caption+'cat /etc/lxdm/Xsession';
       if FileExists(homeDir + '.startup-watcher/up14') then memo1.Lines.LoadFromFile(homeDir + '.startup-watcher/up14') else memo1.text:=tab14;
       if FileExists(homeDir + '.startup-watcher/diff14') then memo2.Lines.LoadFromFile(homeDir + '.startup-watcher/diff14') else memo2.text:=dif14;
  end;

  //15 Xsession-SDDM       Root   cat /usr/share/sddm/scripts/Xsession
  if tabcontrol1.TabIndex=15 then
  begin
       edit1.Caption:=edit1.Caption+'cat /usr/share/sddm/scripts/Xsession';
       if FileExists(homeDir + '.startup-watcher/up15') then memo1.Lines.LoadFromFile(homeDir + '.startup-watcher/up15') else memo1.text:=tab15;
       if FileExists(homeDir + '.startup-watcher/diff15') then memo2.Lines.LoadFromFile(homeDir + '.startup-watcher/diff15') else memo2.text:=dif15;
  end;

  //16 Xsession-GDM        Root   cat /etc/gdm/Xsession
  if tabcontrol1.TabIndex=16 then
  begin
       edit1.Caption:=edit1.Caption+'cat /etc/gdm/Xsession';
       if FileExists(homeDir + '.startup-watcher/up16') then memo1.Lines.LoadFromFile(homeDir + '.startup-watcher/up16') else memo1.text:=tab16;
       if FileExists(homeDir + '.startup-watcher/diff16') then memo2.Lines.LoadFromFile(homeDir + '.startup-watcher/diff16') else memo2.text:=dif16;
  end;

  //17 Systemd-Services    User   systemctl list-unit-files --user
  if tabcontrol1.TabIndex=17 then
  begin
       edit1.Caption:=edit1.Caption+'systemctl list-unit-files --user';
       if FileExists(homeDir + '.startup-watcher/up17') then memo1.Lines.LoadFromFile(homeDir + '.startup-watcher/up17') else memo1.text:=tab17;
       if FileExists(homeDir + '.startup-watcher/diff17') then memo2.Lines.LoadFromFile(homeDir + '.startup-watcher/diff17') else memo2.text:=dif17;
  end;

  //18 Systemd-Timers    x User   already watched in services (systemctl list-timers --all --user)
  if tabcontrol1.TabIndex=18 then
  begin
       edit1.Caption:=edit1.Caption+'already watched in services (systemctl list-timers --all --user)';
       memo1.text:='Inactive/disabled';
       memo2.text:='Inactive/disabled';
  end;

  //19 Cron-Scheduler      User   crontab -l
  if tabcontrol1.TabIndex=19 then
  begin
       edit1.Caption:=edit1.Caption+'crontab -l';
       if FileExists(homeDir + '.startup-watcher/up19') then memo1.Lines.LoadFromFile(homeDir + '.startup-watcher/up19') else memo1.text:=tab19;
       if FileExists(homeDir + '.startup-watcher/diff19') then memo2.Lines.LoadFromFile(homeDir + '.startup-watcher/diff19') else memo2.text:=dif19;
  end;

  //20 XDG-Openbox         User   ls -l ~/.config/openbox/; cat ~/.config/openbox/*
  if tabcontrol1.TabIndex=20 then
  begin
       edit1.Caption:=edit1.Caption+'ls -l ~/.config/openbox/; cat ~/.config/openbox/* (environment & autostart)';
       if FileExists(homeDir + '.startup-watcher/up20') then memo1.Lines.LoadFromFile(homeDir + '.startup-watcher/up20') else memo1.text:=tab20;
       if FileExists(homeDir + '.startup-watcher/diff20') then memo2.Lines.LoadFromFile(homeDir + '.startup-watcher/diff20') else memo2.text:=dif20;
  end;

  //21 X11-Xinitrc       x User   not yet implemented (~/.xinitrc)
  if tabcontrol1.TabIndex=21 then
  begin
       //TODO
       edit1.Caption:=edit1.Caption+'not yet implemented (~/.xinitrc)';
       memo1.text:='Inactive/disabled';
       memo2.text:='Inactive/disabled';
  end;

  //22 KDE-Environment     User   ls -l ~/.config/plasma-workspace/env/
  if tabcontrol1.TabIndex=22 then
  begin
       edit1.Caption:=edit1.Caption+'ls -l ~/.config/plasma-workspace/env/';
       if FileExists(homeDir + '.startup-watcher/up22') then memo1.Lines.LoadFromFile(homeDir + '.startup-watcher/up22') else memo1.text:=tab22;
       if FileExists(homeDir + '.startup-watcher/diff22') then memo2.Lines.LoadFromFile(homeDir + '.startup-watcher/diff22') else memo2.text:=dif22;
  end;

  //23 KDE-Autostart       User   ls -l ~/.kde/Autostart/
  if tabcontrol1.TabIndex=23 then
  begin
       edit1.Caption:=edit1.Caption+'ls -l ~/.kde/Autostart/';
       if FileExists(homeDir + '.startup-watcher/up23') then memo1.Lines.LoadFromFile(homeDir + '.startup-watcher/up23') else memo1.text:=tab23;
       if FileExists(homeDir + '.startup-watcher/diff23') then memo2.Lines.LoadFromFile(homeDir + '.startup-watcher/diff23') else memo2.text:=dif23;
  end;

  //24 KDE-Shutdown        User   ls -l ~/.config/plasma-workspace/shutdown/
  if tabcontrol1.TabIndex=24 then
  begin
       edit1.Caption:=edit1.Caption+'ls -l ~/.config/plasma-workspace/shutdown/';
       if FileExists(homeDir + '.startup-watcher/up24') then memo1.Lines.LoadFromFile(homeDir + '.startup-watcher/up24') else memo1.text:=tab24;
       if FileExists(homeDir + '.startup-watcher/diff24') then memo2.Lines.LoadFromFile(homeDir + '.startup-watcher/diff24') else memo2.text:=dif24;
  end;

  //25 Xsession            User   cat ~/.xsession
  if tabcontrol1.TabIndex=25 then
  begin
       edit1.Caption:=edit1.Caption+'cat ~/.xsession';
       if FileExists(homeDir + '.startup-watcher/up25') then memo1.Lines.LoadFromFile(homeDir + '.startup-watcher/up25') else memo1.text:=tab25;
       if FileExists(homeDir + '.startup-watcher/diff25') then memo2.Lines.LoadFromFile(homeDir + '.startup-watcher/diff25') else memo2.text:=dif25;
  end;

  //26 Xprofile            User   cat ~/.xprofile
  if tabcontrol1.TabIndex=26 then
  begin
       edit1.Caption:=edit1.Caption+'cat ~/.xprofile';
       if FileExists(homeDir + '.startup-watcher/up26') then memo1.Lines.LoadFromFile(homeDir + '.startup-watcher/up26') else memo1.text:=tab26;
       if FileExists(homeDir + '.startup-watcher/diff26') then memo2.Lines.LoadFromFile(homeDir + '.startup-watcher/diff26') else memo2.text:=dif26;
  end;

  //27 Autostart-sh        User   ls -l ~/.config/autostart-scripts/
  if tabcontrol1.TabIndex=27 then
  begin
       edit1.Caption:=edit1.Caption+'ls -l ~/.config/autostart-scripts/';
       if FileExists(homeDir + '.startup-watcher/up27') then memo1.Lines.LoadFromFile(homeDir + '.startup-watcher/up27') else memo1.text:=tab27;
       if FileExists(homeDir + '.startup-watcher/diff27') then memo2.Lines.LoadFromFile(homeDir + '.startup-watcher/diff27') else memo2.text:=dif27;
  end;

  //28 Autostart           User   ls -l ~/.config/autostart/
  if tabcontrol1.TabIndex=28 then
  begin
       edit1.Caption:=edit1.Caption+'ls -l ~/.config/autostart/';
       if FileExists(homeDir + '.startup-watcher/up28') then memo1.Lines.LoadFromFile(homeDir + '.startup-watcher/up28') else memo1.text:=tab28;
       if FileExists(homeDir + '.startup-watcher/diff28') then memo2.Lines.LoadFromFile(homeDir + '.startup-watcher/diff28') else memo2.text:=dif28;
  end;

  //29 Fluxbox-Startup   x User   not yet implemented (~/.fluxbox/startup)
  if tabcontrol1.TabIndex=29 then
  begin
       //TODO
       edit1.Caption:=edit1.Caption+'not yet implemented (~/.fluxbox/startup)';
       memo1.text:='Inactive/disabled';
       memo2.text:='Inactive/disabled';
  end;

  //30 Aws-Autorun.sh    x User   not yet implemented (~/.config/awesome/autorun.sh)
  if tabcontrol1.TabIndex=30 then
  begin
       //TODO
       edit1.Caption:=edit1.Caption+'not yet implemented (~/.config/awesome/autorun.sh)';
       memo1.text:='Inactive/disabled';
       memo2.text:='Inactive/disabled';
  end;

  //31 Wine              x User   not yet implemented (~/.wine/...)
  if tabcontrol1.TabIndex=31 then
  begin
       //TODO
       edit1.Caption:=edit1.Caption+'not yet implemented (~/.wine/...)';
       memo1.text:='Inactive/disabled';
       memo2.text:='Inactive/disabled';
  end;


end;

end.

