
-- Trigger
CREATE OR REPLACE TRIGGER check_attendance BEFORE INSERT OR UPDATE ON Matches
FOR EACH ROW
DECLARE
x stadiums.capacity%type;
BEGIN
select capacity into x from Stadiums where id_stadium = :new.id_stadium;
IF :new.attendance > x THEN
RAISE_APPLICATION_ERROR(-20000,'Attendance can''t Exceed Capacity');
END IF;
END;
/

show errors;

insert into matches values(7,2,3,2,'DEMO_DATE',100000);
seelct *from matches;

CREATE OR REPLACE TRIGGER check_goals BEFORE INSERT OR UPDATE ON Results
FOR EACH ROW
DECLARE
c_min constant number(8,2) := 0;
BEGIN
IF :new.home < c_min or :new.away < c_min THEN
RAISE_APPLICATION_ERROR(-20000,'goals can''t be negative');
END if;
end;
/
show errors;

insert into results values(7,-1,0);


-- commit and Rollback
commit;

select * from stadiums;
insert into stadiums values(13, 'AAA', 80018, 'BBB');
select * from stadiums;
rollback;
select * from stadiums;


-- SysDate
select sysdate from dual;
select systimestamp from dual;

select ADD_MONTHS(date_time,6) as Six_months_Extension
from matches;

create view abc_scores as
	select * from Scores;

select * from abc_scores;