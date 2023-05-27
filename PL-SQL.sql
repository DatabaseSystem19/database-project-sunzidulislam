-----PL/sql

BEGIN
insert into Stadiums values(13,'AAA',2121,'BBB');
END;
/

BEGIN
DELETE from Stadiums where id_stadium=13;
END;
/

-- MAX attendance in a match

SET SERVEROUTPUT ON
DECLARE
   max_attendance matches.attendance%type;
BEGIN
   SELECT MAX(attendance) INTO max_attendance  
   FROM matches;
   DBMS_OUTPUT.PUT_LINE('The max attendance is : ' || max_attendance);
 END;
/

-- The Average of all matches played in San Siro stadium.
-- print good if av is > 50000
-- print bad if av is < 50000
-- print normal otherwise

SET SERVEROUTPUT ON
DECLARE
	st_id Stadiums.id_stadium%type;
	Av int;
BEGIN
	select id_stadium into st_id from stadiums where full_name = 'San Siro';
	select AVG(attendance) INTO av from stadiums natural join matches where id_stadium = st_id;
	
    DBMS_OUTPUT.PUT_LINE('The avg : ' || av);

	if av < 50000 then
		DBMS_OUTPUT.PUT_LINE ('BAD');
	elsif av = 50000 then
		DBMS_OUTPUT.PUT_LINE ('NORMAL');
	else
		DBMS_OUTPUT.PUT_LINE ('GOOD');
	end if; 
END;
/

-- Count all Goals using loop, cursor

SET SERVEROUTPUT ON
DECLARE
		total NUMBER;
		CURSOR x is select home,away from results;
	y x%rowtype;
	cnt NUMBER;
BEGIN
	select count(id_match) into total from results;
	--DBMS_OUTPUT.PUT_LINE(total);
	open x;
	cnt := 0;
	Loop
		exit when x%rowcount >= total;
		fetch x into y;
		cnt := cnt + y.home + y.away;
	end loop;
	close x;
	DBMS_OUTPUT.PUT_LINE('Total Goals : ' || cnt);
Exception
WHEN others THEN
DBMS_OUTPUT.PUT_LINE (SQLERRM);
END;
/

-- Count all Goals using While loop, cursor
SET SERVEROUTPUT ON
DECLARE
		total NUMBER;
		CURSOR x is select home,away from results;
	y x%rowtype;
	cnt NUMBER;
BEGIN
	select count(id_match) into total from results;
	--DBMS_OUTPUT.PUT_LINE(total);
	open x;
	cnt := 0;
	while x%rowcount < total
	loop
		fetch x into y;
		cnt := cnt + y.home + y.away;
	end loop;
	close x;
	DBMS_OUTPUT.PUT_LINE('Total Goals : ' || cnt);
Exception
WHEN others THEN
DBMS_OUTPUT.PUT_LINE (SQLERRM);
END;
/


-- Procedure to count all goals using FOR loop and cursor
SET SERVEROUTPUT ON
CREATE or Replace procedure getTOTALGOALS is
		total NUMBER;
		CURSOR x is select home,away from results;
	y x%rowtype;
	cnt NUMBER;
BEGIN
	select count(id_match) into total from results;
	--DBMS_OUTPUT.PUT_LINE(total);
	open x;
	cnt := 0;
	FOR i in 1..total
	Loop
		fetch x into y;
		cnt := cnt + y.home + y.away;
	end loop;
	close x;
	DBMS_OUTPUT.PUT_LINE('Total Goals : ' || cnt);
Exception
WHEN others THEN
DBMS_OUTPUT.PUT_LINE (SQLERRM);
END;
/

-- Function to count all goals using FOR loop and cursor with return
SET SERVEROUTPUT ON
CREATE or Replace Function getTG RETURN NUMBER is
		total NUMBER;
		CURSOR x is select home,away from results;
	y x%rowtype;
	cnt NUMBER;
BEGIN
	select count(id_match) into total from results;
	--DBMS_OUTPUT.PUT_LINE(total);
	open x;
	cnt := 0;
	FOR i in 1..total
	Loop
		fetch x into y;
		cnt := cnt + y.home + y.away;
	end loop;
	close x;
	RETURN cnt;
Exception
WHEN others THEN
DBMS_OUTPUT.PUT_LINE (SQLERRM);
END;
/



drop procedure getTOTALGOALS;
drop function getTG;






