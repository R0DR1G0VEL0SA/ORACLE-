/**************************************************************
   Purpose:  FUNCIONES
   Author:   RODRIGO VELOSA
   Created:  2019/07/13
**************************************************************/
 CREATE OR REPLACE
 FUNCTION <fn_name>(Name in type, Name in type, ...) 
	 return <return type> 
	  is
      FunctionResult <type>;
 BEGIN
   return(FunctionResult);
	 (EXCEPTION)
 end <fn_name>;  
 
 /*****************************Ejemplo #1*********************************/
 --NOMBRE FUNCION  
 CREATE OR REPLACE FUNCTION func1(param1 in number) 
   RETURN NUMBER;
	  IS
 --VARIABLES
       NUMERO1 NUMBER := 10;
			 NUMERO2 NUMBER := 20;
			 NUMERO3 NUMBER := 30;
		result NUMBER;
 BEGIN
	 --LOGICA
	 result:= NUMERO2*param1:
	 return(result);
 EXCEPTION
	 when others then  
		 retun(0);
 END func1;	
 
 /*****************************Ejemplo #1*********************************/
 --NOMBRE FUNCION  
 CREATE OR REPLACE FUNCTION fn_Obtener_Salario(impuesto in number) 
   RETURN NUMBER
	  IS
 --VARIABLES
       variable NUMBER ;
 BEGIN
	  select max(MAX_SALARY) + impuesto
		  into variable
			from hr.jobs;
	 return(variable);
 EXCEPTION
	 when NO_DATA_FOUND then  
		 return(0);
 END fn_Obtener_Salario;	  
 
 
