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