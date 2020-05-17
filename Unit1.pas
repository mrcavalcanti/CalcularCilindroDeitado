unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Math;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Edit6: TEdit;
    Label6: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  r, {raio do cilindro}
  l, {comprimento do cilindro}
  h, {altura do líquido}
  p, {pi}
  d, {Diâmetro}
  q, {Arco}
  w, {Raiz quadrada da integral x(y)} 
  a, {Área}
  vd,{Volume decímetro}
  vl:{Volume litro} Real;
begin
  r := StrToFloat(Edit1.Text);
  l := StrToFloat(Edit2.Text);
  h := StrToFloat(Edit3.Text);
  p := pi;
  d := h-r;
  q := arcsin(-d/r);
  w := sqrt(r*r-d*d);
  a := p*r*r/2-r*r*q +d*w;
  vl := a*l;
  vd := a*l/1000;
  Edit4.Text := FloatToStr(A);
  Edit5.Text := FloatToStr(vd);
  Edit6.Text := FloatToStr(Round(vl));
end;

end.
