		 
			 
create table audit_emp_table
(
user_name varchar2(10),
timestamp TIMESTAMP,
 id number(10),
 old_last_name varchar2(10),
 new_last_name varchar2(10),
 old_title varchar2(10),
 new_title varchar2(10),
 old_salary number(10),
 new_salary number(10),
user_name varchar2(10)
);			 
CREATE OR REPLACE TRIGGER audit_emp_values 
           AFTER DELETE OR INSERT OR UPDATE ON emp 
           FOR EACH ROW 
           BEGIN 
                    INSERT INTO audit_emp_table  
                                   (user_name, timestamp, id, old_last_name, new_last_name,  
                                    old_title, new_title, old_salary, new_salary) 
                    VALUES (USER, SYSDATE, :OLD.empno, :OLD.ename,  
                                     :NEW.ename, :OLD.job, :NEW.job, :OLD.sal,  
                                      :NEW.sal); 
            END; 
/

