 unit CalcUnit;

 interface

 type

 { TCalc }

   TCalc = class
   public
     function Add(x, y: Integer): Integer;
     function Sub(x, y: Integer): Integer;
   end;

 implementation

 { TCalc }

 function TCalc.Add(x, y: Integer): Integer;
 begin
   Result := x + y;
 end;

 function TCalc.Sub(X, Y: Integer): Integer;
 begin
   Result := x - y;
 end;

 end.
