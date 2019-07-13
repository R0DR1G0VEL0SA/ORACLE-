/**************************************************************
   TEMA : SENTENCIA IF
	 AUTOR: RODRIGO VELOSA
	 FECHA: 2019/07/13
**************************************************************/

--ESTRUCTURA BASICA DE LA SENTENCIA IF
IF condition THEN
	{...statements to execute when condition is TRUE...}
END IF; 

--ESTRUCTURA DE LA SENTENCIA IF-ELSE
IF condition THEN
	{...statements to execute when condition is TRUE...}
ELSE
	{...statements to execute when condition is FALSE...}
END IF;

--ESTRUCTURA  DE LA SENTENCIA IF-ELSIF
IF condition THEN
	{...statements to execute when condition is TRUE...} 
	
ELSIF condition2 THEN
	
	{...statements to execute when condition2 is TRUE...}
END IF;

--ESTRUCTURA  DE LA SENTENCIA IF-ELSIF
IF condition THEN
	{...statements to execute when condition is TRUE...}  
	
ELSIF condition2 THEN
	{...statements to execute when condition2 is TRUE...}
	
ELSE
	{...statements to execute when condition and condition2  is FALSE...}
	
END IF;

/********************** EJEMPLO #1 **************************/

DECLARE
  --Declaracion de variables
	VERDADERO BOOLEAN := TRUE;
	FALSO BOOLEAN:= FALSE;
BEGIN
	--IF DEL BLOQUE ANONIMO
	IF VERDADERO THEN
	   DBMS_OUTPUT.put_line('Primera condicion');                                             
  ELSE
	   DBMS_OUTPUT.put_line('Segunda condicion');
  END IF;
EXCEPTION
   WHEN OTHERS THEN 
		  -- Aqui va el control de los errores
		 NULL; 
END;

/********************** EJEMPLO #2 **************************/

DECLARE
  --Declaracion de variables
	  NUM1 NUMBER :=7;
		NUM2 NUMBER :=5;
BEGIN	
		IF NUM1=NUM2 THEN
			DBMS_OUTPUT.put_line('Los numeros son Iguales - Primera condición');  
		/*ELSIF NUM1 <> NUM2 THEN
			DBMS_OUTPUT.put_line('Los numeros son distintos (<>) :'||NUM1||','||NUM2);*/
		ELSIF NUM1 != NUM2 THEN
			DBMS_OUTPUT.put_line('El numero'||NUM1||'es distinto (!=) a'||'Numero '||NUM2);
		ELSIF NUM1 <= NUM2 THEN
			DBMS_OUTPUT.put_line('El numero'||NUM1||'es menor (<=) a'||'Numero '||NUM2);
		ELSIF NUM1 >= NUM2 THEN
			DBMS_OUTPUT.put_line('El numero'||NUM1||'es mayor (>=) a'||'Numero '||NUM2);                                                      
		ELSE
			DBMS_OUTPUT.put_line('Sexta condición');  
		END IF;
EXCEPTION
   WHEN OTHERS THEN 
		  -- Aqui va el control de los errores
		 NULL; 
END;

