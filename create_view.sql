-- 1 Brown confirmed this wroks, so hopefully it does
create view MenuItem_v as
select MI.foodname, MI.spiciness, M.menuType,
case
    when exists(select 'X' from menuItem MI2
                    where MI.foodname = MI2.foodname
                    and MI.menutype = MI2.menutype) then MI.price
    else "N/A"
end
from menuItem MI cross join menu M;

-- 2 not correct yet
create Customer_addresses_v as
select *, "Corporate Customer" as Type
from corpCustomer CC inner join customer C on
CC.fname = C.fname and CC.lname = C.lname and CC.postalAddress = C.postalAddress
union
select *, "N/A", "N/A", "N/A", "Private Customer" as Type
from privateCustomer PC inner join customer C on
PC.fname = C.fname and PC.lname = C.lname and PC.postalAddress = C.postalAddress
;

-- 3 I think this works
create Sous_mentor_v as
select E.fname as mentorFName, E.lname as mentorLName,
E2.fname as sousFName, E.lname as sousLName,  M.foodName, M.startDate
from Mentorship M inner join Employee E
on M.mentorID = E.employeeID
inner join  Employee E2
on m.sousID = E2.employeeID
order by E.lname, E2.lname
;

-- 4
create Customer_Sales_v as
select C.fname, C.lname, C.postalAddress, sum(MI.price * OD.amount) as total from
customer C inner join party P on
C.fname = P.fname and C.lname = P.lname and C.postalAddress = P.postalAddress
inner join partyassignment PA on
C.fname = PA.fname and C.lname = PA.lname and C.postalAddress = PA.postalAddress
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
group by C.fname, C.lname, C.postalAddress, P.date
;

-- 5
create Customer_Value_v as
select C.fname, C.lname, C.postalAddress, sum(MI.price * OD.amount) as total from
customer C inner join party P on
C.fname = P.fname and C.lname = P.lname and C.postalAddress = P.postalAddress
inner join partyassignment PA on
C.fname = PA.fname and C.lname = PA.lname and C.postalAddress = PA.postalAddress
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
group by C.fname, C.lname, C.postalAddress
order by total DESC
;