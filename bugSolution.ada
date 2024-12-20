```ada
procedure Example_Solution is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   Index : Integer := My_Arr'First;
begin
   while Index <= My_Arr'Last loop
      if My_Arr(Index) = 5 then
         My_Arr(Index) := 0;
      end if;
      Index := Index + 1;
   end loop;
   for I in My_Arr'Range loop
      Ada.Text_IO.Put_Line(Integer'Image(My_Arr(I)));
   end loop;
end Example_Solution;
```