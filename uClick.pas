unit uClick;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Spin;

type
  TClickerOption = record
    PosX     : word;
    PosY     : word;
    Interval : integer;
    hWnd     : Cardinal;
    Window   : string;
  end;
  TForm2 = class(TForm)
    Button1: TButton;
    Timer1: TTimer;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edtX: TSpinEdit;
    edtY: TSpinEdit;
    Label3: TLabel;
    cbxWindow: TComboBox;
    Label4: TLabel;
    edtInterval: TEdit;
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FStarted : boolean;
    Options : TClickerOption;
    property Started : boolean read FStarted write FStarted;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin

   if not Started
     then begin
       Button1.Caption := 'Stop';
       Options.PosX := edtX.Value;
       Options.PosY := edtY.Value;
       Options.Interval := StrToInt(edtInterval.Text);
       Options.Window := cbxWindow.Text;
       Options.hWnd := FindWindow(nil, PWideChar(Options.Window));
       Timer1.Interval := Options.Interval;
       Started := True;
       Timer1.Enabled := True;
     end
     else begin
       Started := False;
       Timer1.Enabled := False;
       Button1.Caption := 'Start'
     end;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  FStarted := False;
end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
  if Options.hWnd > 0 then begin
    SendMessage(Options.Hwnd, WM_MOUSEMOVE,    0 , MakeLParam(Options.PosX-10, Options.PosY));

    SendMessage(Options.Hwnd, WM_LBUTTONDOWN,    MK_LBUTTON , MakeLParam(Options.PosX, Options.PosY));
    sleep(10);
    SendMessage(Options.Hwnd, WM_LBUTTONUP,      MK_LBUTTON , MakeLParam(Options.PosX, Options.PosY));
    sleep(10);
    SendMessage(Options.Hwnd, WM_MOUSEMOVE,    0 , MakeLParam(Options.PosX, Options.PosY));
  end;
  Timer1.Enabled := True;
end;

end.
