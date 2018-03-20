--  Example of usage:
with Gnat.Io; use Gnat.Io;
-- with Ada.Text_IO; use Ada.Text_IO;
with Bubble_Sort;
procedure Main is
 type Arr is array (Positive range <>) of Integer;
 procedure Sort is new
  Bubble_Sort
   (Element => Integer,
    Index   => Positive,
    Arr     => Arr);
 A : Arr(1..12);
begin
  for I in 1..12 loop
	    Get(A(I));
	end loop;

 Sort (A);
 for J in A'Range loop
  Put (Integer'Image (A (J)));
 end loop;
 New_Line;
end Main;
