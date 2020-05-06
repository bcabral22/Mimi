-- 1
create view MenuItem_v as
select MI.foodname, MI.spiciness, M.type,
case
    when exists(select 'X' from menuItem MI2
                    where MI.foodname = MI2.foodname
                    and MI.type = MI2.type) then MI.price
    else "N/A"
end
from menuItem MI cross join Menu M;

-- 2
create Customer_addresses_v as
select *, "Private Customer" as Type
from privateCustomer PC inner join customer C on
PC.fname = C.fname, PC.lname = C.lname, PC.postalAddress = C.postalAddress
union
select *, "Corporate Customer" as Type
from corporateCustomer CC inner join customer C on
CC.fname = C.fname, CC.lname = C.lname, CC.postalAddress = C.postalAddress
;

-- 3
create Sous_mentor_v as
select E.fname as mentorFName, E.lname as mentorLName,
E2.fname as sousFName, E.lname as sousLName
from Mentorship M inner join Employee E
on M.mentorID = E.employeeID
inner join  Employee E2
on m.sousID = E2.employeeID
order by E.lname, E2.lname
;

-- 4
create Customer_Sales_v as

;

-- 5
create Customer_Value_v as

;