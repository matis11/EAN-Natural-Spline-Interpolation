unit iNSPLVAL;

interface

uses IntervalArithmetic32and64;

function inaturalsplinevalue(n: Integer; x, f: ivector; xx: interval;
  var st: Integer): interval;

implementation

function inaturalsplinevalue(n: Integer; x, f: ivector; xx: interval;
  var st: Integer): interval;
{ --------------------------------------------------------------------------- }
{ }
{ The function naturalsplinevalue calculates the value of the natural }
{ cubic spline interpolant for a function given by its values at nodes. }
{ Data: }
{ n  - number of interpolation nodes minus 1 (the nodes are numbered }
{ from 0 to n), }
{ x  - an array containing the values of nodes, }
{ f  - an array containing the values of function, }
{ xx - the point at which the value of interpolating spline should }
{ be calculated. }
{ Result: }
{ naturalsplinevalue(n,x,f,xx,st) - the value of natural spline at xx. }
{ Other parameters: }
{ st - a variable which within the function naturalsplinevalue is }
{ assigned the value of: }
{ 1, if n<1, }
{ 2, if there exist x[i] and x[j] (i<>j; i,j=0,1,...,n) such }
{ that x[i]=x[j], }
{ 3, if xx<x[0] or xx>x[n], }
{ 0, otherwise. }
{ Note: If st<>0, then naturalsplinevalue(n,x,f,xx,st) is not }
{ calculated. }
{ Unlocal identifiers: }
{ vector  - a type identifier of extended array [q0..qn], where q0<=0 }
{ and qn>=n, }
{ vector1 - a type identifier of extended array [q1..qn2], where q1<=1 }
{ and qn2>=n-2, }
{ vector2 - a type identifier of extended array [q2..qn1], where q2<=2 }
{ and qn1>=n-1. }
{ }
{ --------------------------------------------------------------------------- }

var
  i, k: Integer;
  u, y, z: interval;
  found: Boolean;
  a: array [0 .. 3] of interval;
  d, b, c: ivector;

begin

//  SetLength(d, n + 1);
//  SetLength(b, n - 1);
//  SetLength(c, n);

  if n < 1 then
    st := 1
  else if (xx.b < x[0].a) or (xx.a > x[n].b) then
    st := 3
  else
  begin
    st := 0;
    i := -1;
    repeat
      i := i + 1;
      for k := i + 1 to n do
        if ((x[i].a = x[k].a) and (x[i].b = x[k].b)) // x[i]=x[k]
        then
          st := 2 until (i = n - 1) or (st = 2)
    end;
    if st = 0 then
    begin
      d[0] := int_read('0');
      d[n] := int_read('0');
      if n > 1 then
      begin
        z := x[2];
        y := isub(z, x[1]);
        z := isub(z, x[0]);
        u := f[1];
        b[1] := idiv(y, z);
        d[1] := idiv(imul(int_read('6'), (isub(idiv(isub(f[2], u), y),
          idiv(isub(u, f[0]), isub(x[1], x[0]))))), z);
        z := x[n - 2];
        y := isub(x[n - 1], z);
        z := isub(x[n], z);
        u := f[n - 1];
        c[n - 1] := idiv(y, z);

        d[n - 1] :=
          idiv(imul(int_read('6'),
          (isub(idiv(isub(f[n], u), isub(x[n], x[n - 1])),
          idiv(isub(u, f[n - 2]), y)))), z);
        for i := 2 to n - 2 do
        begin
          z := x[i];
          y := isub(x[i + 1], z);
          z := isub(z, x[i - 1]);
          u := f[i];
          b[i] := idiv(y, iadd(y, z));
          c[i] := isub(int_read('1'), b[i]);
          d[i] := idiv(imul(int_read('6'), (isub(idiv(isub(f[i + 1], u), y),
            idiv(isub(u, f[i - 1]), z)))), iadd(y, z))
        end;
        u := int_read('2');
        i := 0;
        y := idiv(d[1], u);
        d[1] := y;
        if n > 2 then
          repeat
            i := i + 1;
            z := idiv(b[i], u);
            b[i] := z;
            u := isub(int_read('2'), imul(z, c[i + 1]));
            y := idiv(isub(d[i + 1], imul(y, c[i + 1])), u);
            d[i + 1] := y
          until i = n - 2 end;
        u := d[n - 1];
        for i := n - 2 downto 1 do
        begin
          u := isub(d[i], imul(u, b[i]));
          d[i] := u
        end;
        found := False;
        i := -1;
        repeat
          i := i + 1;
          if (xx.a >= x[i].b) and (xx.b <= x[i + 1].a) then
            found := True until found;
          y := isub(x[i + 1], x[i]);
          z := d[i + 1];
          u := d[i];
          a[0] := f[i];
          a[1] := isub(idiv(isub(f[i + 1], f[i]), y),
            idiv(imul((iadd(imul(int_read('2'), u), z)), y), int_read('6')));
          a[2] := idiv(u, int_read('2'));
          a[3] := idiv(isub(z, u), imul(int_read('6'), y));
          y := a[3];
          z := isub(xx, x[i]);
          for i := 2 downto 0 do
            y := iadd(imul(y, z), a[i]);
          inaturalsplinevalue := y
        end
      end;

end.
