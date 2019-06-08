program startupwatcher;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, Unit1, Unit2
  { you can add units after this };

{$R *.res}

begin
  Application.Title:='Startup-Watcher';
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.ShowMainForm:=false;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.

