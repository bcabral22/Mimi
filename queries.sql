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

-- 8
SELECT known.fname, known.lname, SUM(mimingsbill.mimingsAmount) FROM known
INNER JOIN mimingsbill ON known.billID = mimingsbill.billID
GROUP BY known.fname, known.lname
ORDER BY SUM(mimingsbill.mimingsAmount) DESC


-- 11
select OD.foodname, sum(MI.price * OD.amount) as total
from party P
inner join partyassignment PA on
P.fname = PA.fname and P.lname = PA.lname and P.postalAddress = PA.postalAddress
inner join storetable ST on
PA.tableNumber = ST.tableNumber
inner join seat S on
st.tableNumber = S.tableNumber
inner join eatInorder EI on
S.tableNumber = EI.tableNumber and
S.seatNumber = EI.seatNumber
inner join ordertable O on
EI.orderNumber = O.orderNumber
inner join
orderdetails OD on
O.orderNumber = OD.orderNumber
inner join menuitem MI on
OD.foodname = MI.foodname and
OD.menutype = MI.menutype
where P.date > DATE_SUB(NOW(),INTERVAL 1 YEAR)
group by OD.foodname
order by total DESC
limit 5
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
