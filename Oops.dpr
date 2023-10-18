program Oops;

uses
  Forms,
  Unit1 in 'Unit1.pas' {MainForm},
  Unit2 in 'Unit2.pas' {Splash};

{$R *.res}

begin
  Splash :=TSplash.Create(Application);
  Splash.Show;
  Splash.Update;
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Splash.Hide;
  Splash.Free;
  Application.Run;
end.
