/**************************************************************
   TEMA : CASE
   AUTOR: RODRIGO VELOSA
   FECHA: 2019/07/13
**************************************************************/
CASE {expression}
	WHEN condition_1 THEN result1;
	WHEN condition_2 THEN result2; 
	...
	WHEN condition_n THEN resultn; 
	
	ELSE result;   
	
END;
	
/****EJEMPLO# 1***/
            
select job_id,
       job_title,
			 min_salary,
			 CASE when min_salary < 9000 then 'bajo'  else 'Alto' end Analisis_min_salary,
			 max_salary
  from hr.jobs
	order by Analisis_min_salary ;


	

	
	  
