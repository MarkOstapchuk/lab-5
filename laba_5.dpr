﻿program laba_5;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils, windows;

Type tmas=array[1..2000] of integer;
  var mas, mas1, mas2: tmas;
  k, num_sr, num_ob, temp1: integer;
  procedure bubble_sort (const size: integer; var mas: tmas);
var i, j: integer;
wasChanged: boolean;
begin
 num_sr:=0;
 num_ob:=0;
 wasChanged:=false;
  for i:=1 to size-1 do
  begin
    for j:=size downto i+1 do
    begin
      num_sr:=num_sr+1;
      if mas[j]<mas[j-1] then
      begin
      wasChanged:=true;
        temp1:=mas[j-1];
        mas[j-1]:=mas[j];
        mas[j]:=temp1;
        num_ob:=num_ob+3;
      end;
    end;
    if  wasChanged=false then break else wasChanged := false;
  end;
 end;
 procedure choice_sort(const size: integer; var mas: tmas);
 var i, j: integer;
var min: integer;
begin
num_sr:=0; num_ob:=0;
  for i:=1 to size-1 do
  begin
    min:=i;
    for j:=i+1 to size do
     begin
       num_sr:=num_sr+1;
      if mas1[j]<mas1[i] then
      min:=j;
      temp1:=mas[i];
      mas[i]:=mas[min];
      mas[min]:=temp1;
      num_ob:=num_ob+3;
    end;
  end;
end;
procedure revers (const size: integer; var mas: tmas);
var i: integer;
begin
for i:=size downto size div 2 do
begin
temp1:=mas[i];
mas[i]:=mas[size-i+1];
mas[size-i+1]:=temp1;
end;
end;
begin
setConsoleCP(1251);
setConsoleOutputCP(1251);
 writeln('| Тип       | Сортировка №1        | Сортировка №2        | Сортировка №3        |');
 writeln('| массива   |______________________|______________________|______________________|');
 writeln('|           | Число     | Число    | Число     | Число    | Число     | Число    |');
 writeln('|           | сравнений | обменов  | сравнений | обменов  | сравнений | обменов  |');
 writeln('|___________|___________|__________|___________|__________|___________|__________|');
 for k:=1 to 2000 do
  mas[k]:=random(100)-50;
 mas1:=mas;
 mas2:=mas;
 bubble_sort(10,mas1);
 write('| 10 эл.    |    ',num_sr:3,'    |   ',num_ob:3,'    |');
 choice_sort(10,mas2);
 writeln('    ',num_sr:3,'    |   ',num_ob:3,'    |');
 writeln('| неотсорт. |           |          |           |          |');
 writeln('|___________|___________|__________|___________|__________|');
 bubble_sort(10,mas1);
 write('| 10 эл.    |    ',num_sr:3,'    |   ',num_ob:3,'    |');
 choice_sort(10,mas2);
 writeln('    ',num_sr:3,'    |   ',num_ob:3,'    |');
 writeln('| отсорт.   |           |          |           |          |');
 writeln('|___________|___________|__________|___________|__________|');
 revers(10,mas1);
 revers(10,mas2);
 bubble_sort(10,mas1);
 write('| 10 эл. обр|    ',num_sr:3,'    |   ',num_ob:3,'    |');
 choice_sort(10,mas2);
 writeln('    ',num_sr:3,'    |   ',num_ob:3,'    |');
 writeln('| порядок   |           |          |           |          |');
 writeln('|___________|___________|__________|___________|__________|');
 bubble_sort(100,mas1);
 write('| 100 эл.   |    ',num_sr:4,'   |   ',num_ob:4,'   |');
 choice_sort(100,mas2);
 writeln('    ',num_sr:4,'   |  ',num_ob:5,'   |');
 writeln('| неотсорт. |           |          |           |          |');
 writeln('|___________|___________|__________|___________|__________|');
 bubble_sort(100,mas1);
 write('| 100 эл.   |    ',num_sr:4,'   |     ',num_ob,'    |');
 choice_sort(100,mas2);
 writeln('    ',num_sr:4,'   |  ',num_ob:5,'   |');
 writeln('| отсорт.   |           |          |           |          |');
 writeln('|___________|___________|__________|___________|__________|');
 revers(100,mas1);
 revers(100,mas2);
 bubble_sort(100,mas1);
 write('|100 эл. обр|    ',num_sr:4,'   |  ',num_ob:5,'   |');
 choice_sort(100,mas2);
 writeln('    ',num_sr:4,'   |  ',num_ob:5,'   |');
 writeln('| порядок   |           |          |           |          |');
 writeln('|___________|___________|__________|___________|__________|');
 bubble_sort(2000,mas1);
 write('| 2000 эл.  |  ',num_sr:7,'  |  ',num_ob:7,' |');
 choice_sort(2000,mas2);
 writeln('  ',num_sr:7,'  |  ',num_ob:7,' |');
 writeln('| неотсорт. |           |          |           |          |');
 writeln('|___________|___________|__________|___________|__________|');
 bubble_sort(2000,mas1);
 write('| 2000 эл.  |  ',num_sr:7,'  |   ',num_ob:3,'    |');
 choice_sort(2000,mas2);
 writeln('  ',num_sr:7,'  |  ',num_ob:7,' |');
 writeln('| отсорт.   |           |          |           |          |');
 writeln('|___________|___________|__________|___________|__________|');
 revers(2000,mas1);
 revers(2000,mas2);
 bubble_sort(2000,mas1);
 write('|2000 эл обр|  ',num_sr:7,'  | ',num_ob:7,'  |');
 choice_sort(2000,mas2);
 writeln('  ',num_sr:7,'  |  ',num_ob:7,' |');
 writeln('| порядок   |           |          |           |          |');
 writeln('|___________|___________|__________|___________|__________|');
 readln;
end.
