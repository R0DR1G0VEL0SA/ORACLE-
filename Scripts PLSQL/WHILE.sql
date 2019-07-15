/**************************************************************
   TEMA : WHILE
   AUTOR: RODRIGO VELOSA
   FECHA: 2019/07/13
**************************************************************/
DECLARE
  CANTIDAD NUMBER := 0;
BEGIN
	WHILE CANTIDAD <= 215
		LOOP
			DBMS_OUTPUT.put_line('N= '|| CANTIDAD); 
	    CANTIDAD:= CANTIDAD + 1;
		END LOOP;
END;


