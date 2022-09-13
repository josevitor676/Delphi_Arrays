unit uArrays;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Memo2: TMemo;
    Button2: TButton;
    Memo3: TMemo;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
  vetor1 : array [1..3] of Integer;
  vetor2 : array of Integer;
  x: Integer;
const
  diasSemana: array[0..6] of String = ('sab', 'dom', 'seg', 'ter', 'quar', 'quin', 'sex');

begin
  vetor1[1] := 10;
  vetor1[2] := 20;
  vetor1[3] := 30;

  SetLength(vetor2, 3);

  vetor2[0] := 10;
  vetor2[1] := 20;
  vetor2[2] := 30;

  SetLength(vetor2, length(vetor2) + 1);

  vetor2[3] := 1000;

  Memo1.Lines.Add('Vetor 1');
  for x:= 1 to 3 do
    begin
      Memo1.Lines.Add(inttostr(vetor1[x]));
    end;

    Memo1.Lines.Add('');
    Memo1.Lines.Add('Vetor 2');

    for x:= 0 to 3 do
    begin
      Memo1.Lines.Add(inttostr(vetor2[x]));
    end;

    Memo1.Lines.Add('');
    Memo1.Lines.Add('Dias Da Semana');
    for x:= 0 to 6 do
    begin
      Memo1.Lines.Add(diasSemana[x]);
    end;

end;

procedure TForm1.Button2Click(Sender: TObject);
var
  matriz1 : array of array of String;
  matriz2 : array[1..3, 0..1] of String;
  x: Integer;
begin
  matriz2[1, 0] := 'Jose';
  matriz2[1, 1] := 'Silva';

  matriz2[2, 0] := 'Joao';
  matriz2[2, 1] := 'Santos';

  matriz2[3, 0] := 'Alex';
  matriz2[3, 1] := 'Menega';

  for x:= 1 to 3 do
    begin
      Memo2.Lines.Add('Nome: ' + matriz2[x, 0] + ', Sobrenome: ' + matriz2[x, 1] );
  end;

end;

end.
