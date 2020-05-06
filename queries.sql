-- 1 not sure if this works, uses the views
select fname, lname, postalAddress, Type, email, phoneNumber
from Customer_addresses_v
;


-- 3 i think this should work
SELECT employee.fname, employee.lname, recipe.recipeName FROM employee
INNER JOIN recipe ON employee.employeeID = recipe.employeeID
where employee.employeeID IN
(SELECT employeeID FROM (
SELECT employeeID, COUNT(*) AS "TOTAL" FROM recipe GROUP BY employeeID
HAVING COUNT(*) > 3) souschef)
ORDER BY employeeID ASC;

-- 7
SELECT customer.fname, customer.lname, account.amount FROM customer
INNER JOIN account ON customer.accountID = account.accountID
ORDER BY account.amount DESC;


-- 11
select OD.foodname, sum(MI.price)
from orderdetails OD inner join menuitem MI on OD.foodname = MI.foodname
group by OD.foodname
;

-- 12
select max(c)
from (
select count(M.sousFName) as c
from Sous_mentor_v M
group by M.mentorFName) as a
;


-- 15
select *
from MenuItem_v M
where M.price != "N/A"
;
