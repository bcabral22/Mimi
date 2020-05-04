-- general employee info table
create table Employee (
   -- the employees id to uniquely identify them
	  employeeID varchar(20) not null,
   -- employees first name   
      fname varchar(30) not null, 
   -- employees last name
	  lname varchar(30) not null,
   -- the year the employee was hired    
      yearHired date not null,
   -- making employee id the primary key becasue it is the most unique variable 
      constraint employeePK Primary key (employeeID));

-----------------------------------full time-------------------------------------------------
-- this table gives info about full time employees  
create table fullTime(
		-- foreign key from the employee table
		employeeID varchar(20) not null,
        -- the name of the healthcare provider
        healthcareInfo varchar(20),
        -- the set amount of money the person makes a week 
        weeklyRate int , 
        --  making the emplopyee a primary key to identify this table
        constraint fullTimePK Primary key (employeeID),
        -- uniquely identifing this value from the employee table 
		constraint fullTimeFK foreign key (employeeID) references Employee (employeeID));

-- this table gives info about Manager
create table Manager(
		-- foreign key from the fullTime table
		employeeID varchar(20) not null,
		--  making the emplopyee a primary key to identify this table
        constraint ManagerPK Primary key (employeeID),
        -- uniquely identifing this value from the employee table 
		constraint ManagerFK foreign key (employeeID) references fullTime (employeeID));
        
--------------------------------------end full time-------------------------------------------------------

---------------------------------part time------------------------------------------------
-- this table gives info about part time employees 
create table partTime(
		-- foreign key from the employee table
		employeeID varchar(20) not null,
        -- the set amount of money the person makes an hour 
        hourlyRate int , 
		--  making the emplopyee a primary key to identify this table
        constraint partTimePK Primary key (employeeID),
        -- uniquely identifing this value from the employee table 
		constraint partTimeFK foreign key (employeeID) references Employee (employeeID));
	
-- this table gives info about Maitreds
create table Maitred(
		-- foreign key from the partTime table
		employeeID varchar(20) not null,
		--  making the emplopyee a primary key to identify this table
        constraint MaitredPK Primary key (employeeID),
        -- uniquely identifing this value from the employee table 
		constraint MaitredFK foreign key (employeeID) references partTime (employeeID));

-- this table gives info about Wait-Staffs
create table waitStaff(
		-- foreign key from the partTime table
		employeeID varchar(20) not null,
		--  making the emplopyee a primary key to identify this table
        constraint waitStaffPK Primary key (employeeID),
        -- uniquely identifing this value from the employee table 
		constraint waitStaffFK foreign key (employeeID) references partTime (employeeID));

-- this table gives info about DishWashers
create table dishWasher(
		-- foreign key from the partTime table
		employeeID varchar(20) not null,
		--  making the emplopyee a primary key to identify this table
        constraint dishWasherPK Primary key (employeeID),
        -- uniquely identifing this value from the employee table 
		constraint dishWasherFK foreign key (employeeID) references partTime (employeeID));

--------------------------------------end part time-------------------------------------------------------