/**************************************************************
   Purpose:  PROCEDIMIENTOS
   Author:   RODRIGO VELOSA
   Created:  2019/07/13
**************************************************************/

CREATE OR REPLACE PROCEDURE aumenta_salario (Pemployee_id NUMBER, Paumento NUMBER)
IS
--VARIABLE LOCAL
    sactual NUMBER:=0;
    sactual2 NUMBER:=0;  
BEGIN
	  select salary
		  into sactual
			from hr.employees where employee_id = Pemployee_id;
			
	  DBMS_OUTPUT.put_line('El salario actual es:' || sactual);
		  
	  update employees
		   set salary = (sactual + Paumento)
		 where employee_id = Pemployee_id; 
		 
		 commit; 
		 
		 select salary
		   into sactual2
		   from employees where employee_id = Pemployee_id; 
			 
			DBMS_OUTPUT.put_line('El salario posterior  es:' || sactual2); 	
END;
