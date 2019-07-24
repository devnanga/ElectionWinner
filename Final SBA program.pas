Program Election_project1;
Uses Wincrt,crt;
TYPE
    Party= Array[1..4]of string;{array to store name of party}
    Name= Array[1..4]of string;{array to store name of candidate}
    Votes= Array[1..4]of integer;{array to store # of votes}
    Percent=Array[1..4]of real;{array to store % votes}
VAR
   P:Party;
   N:Name;
   V:Votes;
   Pe:Percent;
   x:integer; {this variable will be used as a counter}
   total:integer;
   high:integer; {this will be used to determine winner}
   loc:integer;{this will be used to determine the location of the winner}
Begin
{1}  total:=0;{assigning the variable total to 0}
{2}  P[1]:= 'DAP'; {assigning P[1] to DAP so it will be triggered in loop}
{3}  P[2]:= 'WNA'; {assigning P[2] to WNA so it will be triggered in loop}
{4}  P[3]:= 'UPM'; {assigning P[3] to UPM so it will be triggered in loop}
{5}  P[4]:= 'PDR'; {assigning P[4] to PDR so it will be triggered in loop}
{6}  For x:= 1 to 4 Do {beginning loop to accept data for each party}
     Begin
{7}       Writeln('The party is:',P[x]);{telling user which party to enter data}
{8}       Write('Enter name of candidate for ', P[x],':');{prompting user}
{9}       Readln(N[x]);{accepting name of candidate}
          Repeat
{10}           Write('Enter number of votes candidate received');{prompting}
{11}           Readln(V[x]);{accepting # of votes}
{12}           If(V[x]<0) then
{13}           Writeln('A candidate cannot have negative votes');
{14}      Until(V[x]>=0);{ensuring # of votes is positive}
{15}      total:=V[x]+total;{finding total # votes(found on last cycle of loop)}
     End;
{16} For x:= 1 to 4 do {loop used to output all data to user}
     Begin
{17}      Pe[x]:=(V[x]/total)*100;{used to calculate the percent votes}
{18}      Writeln('Party:',P[x]);{outputting party}
{19}      Writeln('Candidate:',N[x]);{outputting name of candidate]
{20}      Writeln('Number of votes:',V[x]);{outputting # of votes}
{21}      Writeln('Percent of votes=',Pe[x]:8:2){outputting % of votes}
     End;
{22} loc:=1;{this will be used to find winner}
{23} high:=V[1];{assigning this to DAP's votes}
{24} For x:=2 to 4 do
     Begin
{25}      If(V[x]>high)then{replace high, loc with highest # of votes}
          Begin
{26}           high:=V[x];{highest # of votes stored in this location}
{27}           loc:=x;{rest of data for winning party is found using this}
          End;
     End;
{28} Writeln('WINNER!!!');
{29} Writeln('Party name:',P[loc]);{outputting winning party}
{30} Writeln('Candidate name:',N[loc]);{outputting winning candidate}
{31} Writeln('# of votes:',V[loc]);{outputting winning # of votes}
{32} Writeln('Percent of votes:',Pe[loc]:8:2);{outputting winning %}
     readkey;
End.
