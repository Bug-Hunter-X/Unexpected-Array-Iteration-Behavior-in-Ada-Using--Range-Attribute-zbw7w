```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
begin
   for I in My_Arr'Range loop
      if My_Arr(I) = 5 then
         My_Arr(I) := 0; -- Modifying array element inside loop
      end if;
   end loop;
   for I in My_Arr'Range loop
      Ada.Text_IO.Put_Line(Integer'Image(My_Arr(I)));
   end loop;
end Example;
```