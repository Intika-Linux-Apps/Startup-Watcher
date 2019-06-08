unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form2: TForm2;

implementation
uses
  Unit1;

{$R *.lfm}

{ TForm2 }

procedure TForm2.Button1Click(Sender: TObject);
begin
  Form2.Visible:=false;
  Form1.Visible:=true;
  Form1.BringToFront;
  Form1.FormStyle:=fsSystemStayOnTop; //FormStyle:=fsNormal;
  Form1.Position:=poDesktopCenter;
end;

end.

