with Gnat.Io; use Gnat.Io;

procedure RandomSort is
		type IntArray is array(Integer range <>) of Integer;

		function IsSorted(A: in IntArray) return Boolean is
		begin
			for I in A'First .. A'Last - 1 loop
				if A(I) > A(I+1) then
				return False;
				end if;
			end loop;

			return True;
		end;

    A: IntArray(1..5);
    I: Integer;
    B: Boolean;
begin
    for I in 1..5 loop
        Get(A(I));
    end loop;
    for I in reverse A'Range loop
        Put(A(I));
    end loop;
    New_line;

    B := IsSorted(A);

    if B then
    	Put("True");
    else
    	Put("False");
    end if;

end RandomSort;
