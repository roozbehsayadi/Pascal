program painting;
var sh,cd,c:integer;
	begin
        c:=0;
	read(sh);
	repeat
	cd:=sh+621;
	writeln ('The year of ',sh,' is year of ',cd,' miladi');
	c:=c+1;
	read(sh);
        until cd = 621;
	write (c);
	readln
end.
