/*
   TIPO DE DATOS
*/

DECLARE
		-- NUMBER ((Presición, escala)); 
			 salary NUMBER(16,2):= 15.12;
		/* Indica que puede almacenar un valor numerico de 16
			 posiciones, 2 de ellas decimales. Es decir 14 enteros
			 y dos decimales.
		*/

		-- CHAR ((longitud_maxima));
			 nombre CHAR(20):= 'RODRIGO';
		/* Indica que puede almacenar valores alfanumericos de 
			 20 posiciones.
		*/

		-- VARCHAR2 ((longitud_maxima));
			 apellido VARCHAR2(20):= 'VELOSA GIL';
		/* Indica que puede almacenar valores alfanumericos de 
			 20 posiciones.
			 cuando la longitud de los datos sea menor de 20
			 no se rellena con blancos.
		*/

		-- BOLEANA
			 lerror BOOLEAN := true;
			 
		-- FECHA
			 fecha DATE := SYSDATE;
			 
		-- %TYPE
			 employee_id HR.EMPLOYEES.employee_id%type;

		-- %ROWTYPE
			 TABLA_COMPLETA  HR.EMPLOYEES%ROWTYPE := 1;

BEGIN
			DBMS_OUTPUT.PUT_LINE ('El saldo es :' || salary);
			DBMS_OUTPUT.PUT_LINE ('El nombre es :' || nombre);
			DBMS_OUTPUT.PUT_LINE ('El apellido es :' || apellido);
			DBMS_OUTPUT.PUT_LINE ('La fecha es :' || fecha);
			DBMS_OUTPUT.PUT_LINE ('El codigo del empleado es :' || employee_id );

			select *
				into TABLA_COMPLETA
				from HR.EMPLOYEES;
                                                   
EXCEPTION
			WHEN OTHERS THEN
				 --  DBMS_OUTPUT.PUT_LINE ('Mensaje de Error - Desde la exception');
			NULL;

END;		


--select * from hr.employees  
