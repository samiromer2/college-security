
/*/		
->show 
INSERT INTO emp (empno, ename, deptno) 
          2  VALUES               (77, ‘ALI’ 40); 
INSERT INTO emp (empno, ename, deptno) * 
ERROR at line 1: 
ORA-20500: You may only insert into EMP during normal hours. 
ORA-06512: at “SCOTT.SECURE_EMP”, line 4 
ORA04088: error during execution of trigger ‘SCOTT.SECURE_EMP’ 
/*/