 CREATE OR REPLACE TRIGGER secure_emp 
           BEFORE INSERT OR UPDATE OR DELETE ON emp 
           BEGIN 
           IF (TO_CHAR(sysdate, 'DY') IN ('THU','FRI')) OR 
                (TO_CHAR (sysdate, 'HH24') NOT BETWEEN '08' and '18') 
           THEN 
               IF INSERTING THEN 
                   RAISE_APPLICATION_ERROR (-20500,  
                            'You may only insert into EMP during normal hours'); 
							ELSIF DELETING 
                   RAISE_APPLICATION_ERROR (-20502,  
                            'You may only delete from EMP during normal hours'); 
               ELSIF UPDATING('SAL') 
                   RAISE_APPLICATION_ERROR (-20503,  
                            'You may only update SAL during normal hours'); 
              ELSE 
                   RAISE_APPLICATION_ERROR (-20504,  
                            'You may only update EMP during normal hours'); 
							              END IF; 
        END IF; 
  END; 
/ 
