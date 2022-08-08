
create table audit_table
(
del number(10),
ins number(10),
upd number(10),
user_name varchar2(10)
);

CREATE OR REPLACE TRIGGER audit_emp 
           AFTER DELETE OR INSERT OR UPDATE ON emp 
           FOR EACH ROW 
           BEGIN 
                 IF DELETING THEN 
                      UPDATE audit_table SET del = del + 1 
                       WHERE  user_name = user AND tablename = 'EMP' 
                            AND   col_name IS NULL; 
                 ELSIF INSERTING THEN 
                      UPDATE audit_table SET ins = ins + 1 
                       WHERE  user_name = user AND tablename = 'EMP' 
                            AND   col_name IS NULL; 
                 ELSIF UPDATING(‘SAL’) THEN 
                      UPDATE audit_table SET upd = upd + 1 
                       WHERE  user_name = user AND tablename = 'EMP' 
                            AND   col_name = ‘SAL; 
                 ELSE 
                      UPDATE audit_table SET upd = upd + 1 
					  
					  WHERE  user_name = user AND tablename = 'EMP' 
                            AND   col_name IS NULL; 
                 END IF; 
             END;
			 /
	