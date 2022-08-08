CREATE OR REPLACE TRIGGER secure_emp 
           BEFORE INSERT ON emp 
           BEGIN 
             IF (TO_CHAR (sysdate,'DY') IN ('THU','FRI')) OR 
                  (TO_CHAR (sysdate, 'HH24') NOT BETWEEN '08' AND '18') 
             THEN RAISE_APPLAICATION_ERROR (-20500, 
             'You may only insert into EMP during normal hours.'); 
			 END IF; 
            END; 
			/