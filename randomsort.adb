with Gnat.Io; use Gnat.Io;
with Ada.Numerics.Discrete_Random;

procedure RandomSort is
    package Discrete_Random is new Ada.Numerics.Discrete_Random(Result_Subtype => Integer);
    use Discrete_Random;
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

    A: IntArray(1..6);
    B: Boolean;
    K: Integer;
    G: Generator;
    T: Integer;
begin
		Reset(G);
    for I in 1..6 loop
        Get(A(I));
    end loop;
    for I in A'Range loop
        Put(A(I));
        New_line;
    end loop;
    New_line;

    -- B := IsSorted(A);

    -- if B then
    -- 	Put("True");
    -- else
    -- 	Put("False");
    -- end if;

    -- New_line;
    -- New_line;

    while not IsSorted(A) loop
	    for I in reverse A'Range loop
	    	K := (Random(G) mod I) + 1;
	    	T := A(I);
	    	A(I) := A(K);
	    	A(K) := T;
	    end loop;

	    -- for I in A'Range loop
	    --     Put(A(I));
	    -- end loop;
	    -- New_line;

    end loop;

    -- New_line;
    -- New_line;
    -- New_line;
    for I in A'Range loop
        Put(A(I));
        New_line;
    end loop;
    New_line;

end RandomSort;
