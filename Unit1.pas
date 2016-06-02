unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IntervalArithmetic32and64, NSPLCNS,
  NSPLVAL,
  iNSPLCNS, iNSPLVAL,
  Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    ListBox2: TListBox;
    ListOutput: TListBox;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    xInput: TEdit;
    fInput: TEdit;
    stOutput: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    xxInput: TEdit;
    Button5: TButton;
    Button6: TButton;
    ListBox3: TListBox;
    ListBox4: TListBox;
    ListIOutput: TListBox;
    addI: TButton;
    Button7: TButton;
    Button8: TButton;
    xaInput: TEdit;
    stIOutput: TEdit;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    xxaInput: TEdit;
    Button9: TButton;
    xbInput: TEdit;
    Label11: TLabel;
    faInput: TEdit;
    fbInput: TEdit;
    Label7: TLabel;
    Label12: TLabel;
    xxbInput: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ClearAll();
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure addIClick(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  x, f: vector;
  xi, fi: ivector;
  xx, res: Extended;
  xxi, resi: interval;
  st, sti: Integer;
  n, nf, nx: Integer;
  ni, nxi, nfi: Integer;
  a: matrix;
  ai: imatrix;

implementation

{$R *.dfm}

procedure TForm1.addIClick(Sender: TObject);
begin
  nxi := nxi + 1;
  xi[nxi - 1].a := StrToFloat(xaInput.text);
  xi[nxi - 1].b := StrToFloat(xbInput.text);

  ListBox3.Items.Add('x[' + IntToStr(nxi - 1) + '].a = ' + xaInput.text);
  ListBox3.Items.Add('x[' + IntToStr(nxi - 1) + '].b = ' + xbInput.text);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  // x[0].a := 16.99;
  // x[1].a := 19.99;
  // x[2].a := 22.99;
  // x[3].a := 23.99;
  // x[4].a := 24.99;
  // x[5].a := 26.99;
  // x[6].a := 27.69;
  //
  // x[0].b := 17.01;
  // x[1].b := 20.01;
  // x[2].b := 23.01;
  // x[3].b := 24.01;
  // x[4].b := 25.01;
  // x[5].b := 27.01;
  // x[6].b := 27.71;
  //
  // f[0].a := 4.49;
  // f[0].b := 4.51;
  // f[1].a := 6.69;
  // f[1].b := 7.01;
  // f[2].a := 6.09;
  // f[2].b := 6.11;
  // f[3].a := 5.59;
  // f[3].b := 5.61;
  // f[4].a := 5.79;
  // f[4].b := 5.81;
  // f[5].a := 5.19;
  // f[5].b := 5.21;
  // f[6].a := 4.09;
  // f[6].b := 4.11;
  //
  // xx.a := 23.49;
  // xx.b := 23.51;

  // res := inaturalsplinevalue(6, x, f, xx, st);

  // Edit1.Text := FloatToStr(res.a);
  // Edit2.Text := FloatToStr(res.b);

  // inaturalsplinecoeffns(6, x, f, ia, st);

  // Edit1.Text := FloatToStr(ia[3,5].a);
  // Edit2.Text := FloatToStr(ia[3,5].b);

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  nx := nx + 1;
  x[nx - 1] := StrToFloat(xInput.text);

  ListBox1.Items.Add('x[' + IntToStr(nx - 1) + '] = ' + xInput.text);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  nf := nf + 1;
  f[nf - 1] := StrToFloat(fInput.text);

  ListBox2.Items.Add('f[' + IntToStr(nf - 1) + '] = ' + fInput.text);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  ListOutput.Clear();
  stOutput.Clear();

  xx := StrToFloat(xxInput.text);
  res := naturalsplinevalue(nf - 1, x, f, xx, st);

  ListOutput.Items.Add('y = ' + FloatToStr(res));
  stOutput.text := IntToStr(st);
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  ClearAll();
end;

procedure TForm1.Button6Click(Sender: TObject);
var
  i: Integer;
  j: Integer;
begin
  ListOutput.Clear();
  stOutput.Clear();

  xx := StrToFloat(xxInput.text);
  naturalsplinecoeffns(nf - 1, x, f, a, st);

  for i := 0 to 3 do
  begin
    for j := 0 to nf - 2 do
    begin
      ListOutput.Items.Add('a[' + IntToStr(i) + '][' + IntToStr(j) + '] = ' +
        FloatToStr(a[i][j]));
    end;
  end;

  stOutput.text := IntToStr(st);
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  nfi := nfi + 1;
  fi[nfi - 1].a := StrToFloat(faInput.text);
  fi[nfi - 1].b := StrToFloat(fbInput.text);

  ListBox4.Items.Add('f[' + IntToStr(nfi - 1) + '].a = ' + faInput.text);
  ListBox4.Items.Add('f[' + IntToStr(nfi - 1) + '].b = ' + fbInput.text);
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  ListIOutput.Clear();
  stIOutput.Clear();

  xxi.a := StrToFloat(xxaInput.text);
  xxi.b := StrToFloat(xxbInput.text);
  resi := inaturalsplinevalue(nfi - 1, xi, fi, xxi, sti);

  ListIOutput.Items.Add('y = [' + FloatToStr(resi.a) + '] [' + FloatToStr(resi.b) + ']');

  stiOutput.text := IntToStr(sti);
end;

procedure TForm1.Button9Click(Sender: TObject);
var
  i: Integer;
  j: Integer;
begin
  ListIOutput.Clear();
  stIOutput.Clear();

  xxi.a := StrToFloat(xxaInput.text);
  xxi.b := StrToFloat(xxbInput.text);
  inaturalsplinecoeffns(nfi - 1, xi, fi, ai, sti);

  for i := 0 to 3 do
  begin
    for j := 0 to nfi - 2 do
    begin
      ListIOutput.Items.Add('ai[' + IntToStr(i) + '][' + IntToStr(j) + '] = [' +
        FloatToStr(ai[i][j].a) + ', ' + FloatToStr(ai[i][j].a) + ']');
    end;
  end;

  stIOutput.text := IntToStr(sti);
end;

procedure TForm1.ClearAll();
begin
  ListOutput.Clear();
  ListBox2.Clear();
  ListBox1.Clear();

  ListIOutput.Clear();
  ListBox3.Clear();
  ListBox4.Clear();

  xaInput.Clear();
  xbInput.Clear();
  faInput.Clear();
  fbInput.Clear();
  xxaInput.Clear();
  xxbInput.Clear();
  stIOutput.Clear();

  xInput.Clear();
  fInput.Clear();
  xxInput.Clear();
  stOutput.Clear();

  FillChar(x, SizeOf(x), 0);
  FillChar(f, SizeOf(f), 0);
  FillChar(a, SizeOf(a), 0);

  xx := 0;
  res := 0;
  st := 0;
  n := 0;
  nf := 0;
  nx := 0;
end;

end.
