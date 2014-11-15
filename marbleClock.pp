program marbleClock;
uses Crt;
const
	maxSizeStackOne = 5;
	maxSizeStackTwo = 12;
	maxSizeStackThree = 13;
	MAX_SIZE = 200;
var
	i : integer;
	x : integer;
	numOfMarbles : integer = 0;
	marbles : array[1..MAX_SIZE] of integer;
	marbleStackOne :  array[1..maxSizeStackOne] of integer;
	marbleStackTwo :  array[1..maxSizeStackTwo] of integer;
	marbleStackThree :  array[1..maxSizeStackThree] of integer;
	topPointer : integer;
Procedure InitStack;
Begin
 	topPointer := 0;
End;
Function IsFull : Boolean;
Begin
 	IsFull := false;
 	If ((topPointer + 1) = MAX_SIZE) then
  	IsFull := true;
End; 
Procedure Push(item : integer);
Begin
 	If not IsFull then
  		Begin
   			marbles[topPointer+1] := item;
   			topPointer := topPointer + 1;
  		End;
End;
Function GetSize(item : integer);
Begin
 	GetSize := item;
End;
Begin
	writeln('Enter the number of marbles in reservoir:');
	readln(numOfMarbles);

	for i := 1 to numOfMarbles do
		Begin 
			write(i , ', ');
			Delay(100);
			Push(i);
		End;
	writeln();
	writeln('Press Enter to start');	
	readln();
	for x := 0 to maxSizeStackOne do
		Begin
		write(GetSize());
		readln();
		End;
End.