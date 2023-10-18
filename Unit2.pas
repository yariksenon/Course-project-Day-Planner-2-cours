unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TSplash = class(TForm)
    Image1: TImage;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormHide(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Splash: TSplash;

implementation

{$R *.dfm}

procedure TSplash.FormCreate(Sender: TObject);
begin
  WindowState := wsMaximized;  // Устанавливаем состояние формы на "Развернутое"
  BorderStyle := bsNone;
end;

procedure TSplash.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled :=false;
end;

procedure TSplash.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := Timer1.Enabled = false;
end;

procedure TSplash.FormHide(Sender: TObject);
begin
  repeat
    Application.ProcessMessages;
  until Splash.CloseQuery;
end;

end.
