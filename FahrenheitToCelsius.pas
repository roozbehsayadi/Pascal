program tabdil;
var f:integer;
    c:real;
	begin
	f:=5;
	while f<=120 do
	begin
	c:=500/900*(f-32);
	writeln (f,'fahrenhaight-is ',c:12:2,' celcius');
        f:=f+1;
	end;
	readln
end.
