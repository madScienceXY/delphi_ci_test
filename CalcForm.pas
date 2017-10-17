unit CalcForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  CalcUnit;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  hCalc: TCalc;
begin
  hCalc := TCalc.Create;
  try
    Edit3.Text := IntToStr(hCalc.Add(StrToInt(Edit1.Text), StrToInt(Edit2.Text)));
  finally
    hCalc.DisposeOf;
  end;
end;

end.
