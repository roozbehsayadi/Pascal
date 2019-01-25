program sport;
var sum,c,tikt:longint;
	begin
	sum:=0;
	read(tikt);
	c:=0;
	while tikt <>0 do
	begin
	sum:=sum+tikt;
	c:=c+1;
	read (tikt);
	end;
	write ('Sum=',sum,'   C=',c);
	readln
end.
