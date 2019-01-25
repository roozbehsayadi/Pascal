program azar;
var x:integer;
	begin
	read (x);
	repeat
	if x mod 2=0 then writeln (x,'is even')
		else writeln (x,'is odd');
	read (x);
	until x=-66;
	readln
end.
