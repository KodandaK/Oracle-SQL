1. select (last_name ||',  ' || Job_id) as  EmployeeandTitle from HR.EMployees;

2. select (Employee_id ||','|| First_name ||','|| Last_name ||','|| Email ||','|| Phone_number ||','|| Hire_date ||','|| 
   Job_id ||','|| Salary ||','|| Commission_PCT ||','|| Manager_id ||','|| department_id ) as The_Output
   from HR.EMPLOYEES;

3. select last_name , salary from HR.EMPLOYEES where salary not between 5000 and 12000;

4. select last_name , job_id , Hire_date  start_date from HR.EMPLOYEES 
   where Hire_date BETWEEN '20-feb-1998' and '01-MAY-1998' order by start_date;

5. select last_name , department_id  from HR.EMPLOYEES where department_id  between 20 and 50 order by last_name; 

6. select last_name , job_id from HR.EMPLOYEES where manager_id is null;

7.select last_name ,salary , commission_pct from Hr.employees where COMMISSION_PCT is not  null order by salary desc,COMMISSION_PCT desc;

8. select Employee_id , last_name ,salary,  (salary*0.15+salary) "New Salary"  from HR.employees;

9. select Employee_id , last_name ,salary,  (salary*0.15+salary) "New Salary" , (salary*0.15+salary)-salary as Increase from HR.employees;

10. select INITCAP(last_name) as LastName,Length(last_name) as length from HR.Employees 
    where last_name Like 'A%' OR last_name Like 'J%'OR last_name Like 'M%' order by LAST_NAME;
    
11. select distinct e.job_id Job , l.CITY Location from HR.EMPLOYEES e, HR.DEPARTMENTS d, HR.LOCATIONS  l
    where e.DEPARTMENT_ID=80 and e.DEPARTMENT_ID=d.DEPARTMENT_ID and d.LOCATION_ID=l.LOCATION_ID;
    
12. SELECT E.LAST_NAME, D.DEPARTMENT_NAME FROM HR.EMPLOYEES E, HR.DEPARTMENTS D 
    WHERE D.DEPARTMENT_ID=E.DEPARTMENT_ID and E.LAST_NAME LIKE  '%a%';
    
13. select E.last_name , E.job_id , D.DEPARTMENT_ID, D.DEPARTMENT_NAME from HR.EMPLOYEES E, HR.DEPARTMENTS D, HR.LOCATIONS L
    where E.DEPARTMENT_ID=D.DEPARTMENT_ID and D.location_id=L.LOCATION_ID and L.CITY='Toronto';
    
14. select distinct  e1.department_id, e1.last_name from HR.employees e1,HR.Employees e2 where e1.DEPARTMENT_ID=e1.DEPARTMENT_ID;

15. SELECT e1.last_name Employee, e1.hire_date EmployeeHired, e2.last_name Manager ,e2.hire_date ManagerHired
    FROM HR.EMPLOYEES e1, HR.EMPLOYEES e2
    WHERE e1.manager_id = e2.employee_id
    AND e1.hire_date < e2.hire_date;

16. SELECT ROUND(MAX(SALARY)) Maximum, ROUND(MIN(SALARY)) Minimum ,ROUND(SUM(SALARY)) Sum , ROUND(AVG(SALARY)) Average FROM HR.EMPLOYEES;

17. SELECT COUNT(MANAGER_ID) "Number of Managers" FROM HR.EMPLOYEES;

18. SELECT COUNT(*) NO_OF_EMPLOYEES FROM HR.EMPLOYEES E WHERE E.HIRE_DATE BETWEEN '01-JAN-1995' AND '31-DEC-1998';

19. SELECT * FROM (SELECT E.job_id,
    SUM(DECODE(E.department_id,20,E.salary)) "DEPT20",
    SUM(DECODE(E.department_id,50,E.salary)) DEPT50,
    SUM(DECODE(E.department_id,80,E.salary)) DEPT80,
    SUM(DECODE(E.department_id,90,E.salary)) DEPT90,
    SUM(E.salary) "Total Salary"
    FROM HR.EMPLOYEES E GROUP BY E.JOB_ID);

20. SELECT  E.EMPLOYEE_ID , E.LAST_NAME  FROM HR.EMPLOYEES E , HR.DEPARTMENTS D
    WHERE E.DEPARTMENT_ID=D.DEPARTMENT_ID AND E.LAST_NAME LIKE '%u';
    
21. select e1.LAST_NAME,e1.salary, e1.department_id from HR.EMPLOYEES e1
    where (e1.DEPARTMENT_ID,e1.SALARY) in ( select distinct e1.department_id,e1.salary from HR.Employees e2
    where e1.salary=e2.salary and e1.department_id=e2.department_id and e1.commission_pct is not null);

22. select last_name,  hire_date ,salary from HR.EMPLOYEES 
    where salary= (select salary from HR.EMPLOYEES where last_name='Kochhar')
    and commission_pct =(select commission_pct from HR.EMPLOYEES where last_name='Kochhar'); 
    
23. SELECT e.last_name LastName, e.salary salary, e.department_id deptno, 
    AVG(a.salary) dept_avg FROM HR.EMPLOYEES e, HR.employees  a WHERE e.department_id = a.department_id AND
    e.salary > (SELECT AVG(salary)FROM HR.EMPLOYEES WHERE department_id = e.department_id )
    GROUP BY e.last_name, e.salary, e.department_id ORDER BY AVG(a.salary);
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
    
    
    