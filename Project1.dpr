program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  NSPLCNS in 'NSPLCNS.PAS',
  NSPLVAL in 'NSPLVAL.PAS',
  iNSPLCNS in 'iNSPLCNS.PAS',
  iNSPLVAL in 'iNSPLVAL.pas',
  IntervalArithmetic32and64 in 'IntervalArithmetic32and64.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
