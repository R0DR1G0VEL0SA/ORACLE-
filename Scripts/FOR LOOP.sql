/**************************************************************
   TEMA : FOR LOOP
   AUTOR: RODRIGO VELOSA
   FECHA: 2019/07/13
**************************************************************/

DECLARE
			 NUMERO1 NUMBER:=1;
			 NUMERO2 NUMBER:=10;
			 contador NUMBER :=0;
BEGIN
	     FOR N IN NUMERO1 .. NUMERO2
			 LOOP
			   DBMS_OUTPUT.put_line(contador); 
			   contador := contador +1 ;
	     END LOOP;
END;  

/**************************************************************/

BEGIN 
	  FOR IdTitle IN (select job_id, job_title from hr.jobs)
			 LOOP
			   DBMS_OUTPUT.put_line(IdTitle.Job_Id || ' -- ' || IdTitle.Job_Title); 
	     END LOOP;
END;  
