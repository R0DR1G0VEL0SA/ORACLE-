CREATE OR REPLACE PACKAGE  MIPRIMERPAQUETE IS
  -- AUTHOR  : RODRI
  -- CREATED : 14/07/2019 17:37:50 17:37:50 
  -- PURPOSE : CONTENEDOR 
  
-- PROCEDURE#1
PROCEDURE AUMENTA_SALARIO (PEMPLOYEE_ID NUMBER, PAUMENTO NUMBER);

-- PROCEDURE#2
PROCEDURE TODAYS_IS;
	
-- FUNCION#1
FUNCTION FN_OBTENER_SALARIO(IMPUESTO IN NUMBER) 
   RETURN NUMBER ;

END MIPRIMERPAQUETE;
/
CREATE OR REPLACE PACKAGE BODY MIPRIMERPAQUETE IS
  -- AUTHOR  : RODRI
  -- CREATED : 14/07/2019 17:37:50 17:37:50 
  -- PURPOSE : CONTENEDOR 
       
-- PROCEDURE#1
PROCEDURE AUMENTA_SALARIO (PEMPLOYEE_ID NUMBER, PAUMENTO NUMBER)
IS
    SACTUAL NUMBER:= 0;
    SACTUAL2 NUMBER:=0;  
BEGIN
	  SELECT SALARY
		  INTO SACTUAL
			FROM HR.EMPLOYEES WHERE EMPLOYEE_ID = PEMPLOYEE_ID;
			
	  DBMS_OUTPUT.PUT_LINE('El salario actual es:' || SACTUAL);
      
    UPDATE HR.EMPLOYEES
       SET SALARY = (SACTUAL + PAUMENTO)
     WHERE EMPLOYEE_ID = PEMPLOYEE_ID; 
     
     COMMIT; 
		 
		 SELECT SALARY
		   INTO SACTUAL2
		   FROM HR.EMPLOYEES WHERE EMPLOYEE_ID = PEMPLOYEE_ID; 
			 
			DBMS_OUTPUT.PUT_LINE('El salario posterior  es:' || SACTUAL2); 	
			
END;

-- PROCEDURE#2

PROCEDURE TODAYS_IS
	AS
	BEGIN
		 DBMS_OUTPUT.PUT_LINE('Hoy es : ' || TO_CHAR(SYSDATE,'DD/MM//YYYY'));
	END; 
	
-- FUNCION#1

FUNCTION FN_OBTENER_SALARIO(IMPUESTO IN NUMBER) 
   RETURN NUMBER
	  IS
       VARIABLE NUMBER ;
 BEGIN
	  SELECT MAX(MAX_SALARY) + IMPUESTO
		  INTO VARIABLE
			FROM HR.JOBS;
	 RETURN(VARIABLE);
 EXCEPTION
	 WHEN NO_DATA_FOUND THEN  
		 RETURN(0);
 END FN_OBTENER_SALARIO;	

END MIPRIMERPAQUETE;
/
