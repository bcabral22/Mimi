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

-- this table gives info about full time employees  
create table fullTime(
		-- foreign key from the empoyee id table
		employeeID varchar(20) not null,
        -- the name of the healthcare provider
        healthcareInfo varchar(20),
        -- the set amount of money the person makes a week 
        weeklyRate int , 
        --  making the emplopyee a primary key to identify this table
        constraint fullTimePK Primary key (employeeID),
        -- uniquely identifing this value from the employee table 
		constraint employeeFK foreign key (employeeID) references Employee (employeeID));
        
        
	
    