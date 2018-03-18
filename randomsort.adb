with Gnat.Io; use Gnat.Io;
procedure RandomSort is
    A: array(1..5) of Integer;
    I: Integer;
begin
    for I in 1..5 loop
        Get(A(I));
    end loop;

    for I in reverse A'Range loop
        Put(A(I));
    end loop;
end RandomSort;
