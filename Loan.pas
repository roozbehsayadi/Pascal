program loan;
var total,j,vam:integer;
	begin
	total:=0;
	for j:=1 to 3 do
	begin
	read (vam);
	total:=total+vam;
	end;
	write ('the total of loan was ':31,total);
	readln;
end.
