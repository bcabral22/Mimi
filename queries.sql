-- 1 not sure if this works, uses the views
select fname, lname, postalAddress, Type, email, phoneNumber
from Customer_addresses_v
;










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