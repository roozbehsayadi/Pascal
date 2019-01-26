uses crt;
var
kalame,ramz:string;
a,b,i,kelid:integer;
begin
     clrscr;
     writeln('kelide ramz ra vared konid');
     readln(kelid);
     readln(kalame);
     ramz[0]:=kalame[0];
     for i:=1 to ord(kalame[0]) do
     begin
          b:=ord(kalame[i]);
          b:=b-97;
          b:=b+kelid;
          b:=b mod 26+97;
          ramz[i]:=chr(b);
     end;
     writeln(ramz);
     readln;
end.
//this tiny program was almost my final project for 2nd class of junior high school and even it had bugs :)
