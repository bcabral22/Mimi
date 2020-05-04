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
-- this table gives info about fullTime
create table fullTime(
		-- foreign key from the employee table
		employeeID varchar(20) not null,
        -- the name of the healthcare provider
        healthcareInfo varchar(20),
        -- the set amount of money the person makes a week 
        weeklyRate int , 
        --  making the employee a primary key to identify this table
        constraint fullTimePK Primary key (employeeID),
        -- uniquely identifing this value from the employee table 
		constraint fullTimeFK foreign key (employeeID) references Employee (employeeID));

-- this table gives info about Manager
create table Manager(
		-- foreign key from the fullTime table
		employeeID varchar(20) not null,
		--  making the employee a primary key to identify this table
        constraint ManagerPK Primary key (employeeID),
        -- uniquely identifing this value from the employee table 
		constraint ManagerFK foreign key (employeeID) references fullTime (employeeID));

-- this table gives info about headChef
create table headChef(
		-- foreign key from the fullTime table
		employeeID varchar(20) not null,
		--  making the employee a primary key to identify this table
        constraint headChefPK Primary key (employeeID),
        -- uniquely identifing this value from the employee table 
		constraint headChefFK foreign key (employeeID) references fullTime (employeeID));

-- this table gives info about sousChef
create table sousChef(
		-- foreign key from the fullTime table
		employeeID varchar(20) not null,
		--  making the employee a primary key to identify this table
        constraint sousChefPK Primary key (employeeID),
        -- uniquely identifing this value from the employee table 
		constraint sousChefFK foreign key (employeeID) references fullTime (employeeID));

-- this table gives info about lineCook
create table lineCook(
		-- foreign key from the fullTime table
		employeeID varchar(20) not null,
		--  making the employee a primary key to identify this table
        constraint lineCookPK Primary key (employeeID),
        -- uniquely identifing this value from the employee table 
		constraint lineCookFK foreign key (employeeID) references fullTime (employeeID));
        
--------------------------------------end full time-------------------------------------------------------

---------------------------------part time------------------------------------------------
-- this table gives info about partTime
create table partTime(
		-- foreign key from the employee table
		employeeID varchar(20) not null,
        -- the set amount of money the person makes an hour 
        hourlyRate int , 
		--  making the employee a primary key to identify this table
        constraint partTimePK Primary key (employeeID),
        -- uniquely identifing this value from the employee table 
		constraint partTimeFK foreign key (employeeID) references Employee (employeeID));
	
-- this table gives info about Maitred
create table Maitred(
		-- foreign key from the partTime table
		employeeID varchar(20) not null,
		--  making the employee a primary key to identify this table
        constraint MaitredPK Primary key (employeeID),
        -- uniquely identifing this value from the employee table 
		constraint MaitredFK foreign key (employeeID) references partTime (employeeID));

-- this table gives info about waitStaff
create table waitStaff(
		-- foreign key from the partTime table
		employeeID varchar(20) not null,
		--  making the employee a primary key to identify this table
        constraint waitStaffPK Primary key (employeeID),
        -- uniquely identifing this value from the employee table 
		constraint waitStaffFK foreign key (employeeID) references partTime (employeeID));

-- this table gives info about dishWasher
create table dishWasher(
		-- foreign key from the partTime table
		employeeID varchar(20) not null,
		--  making the employee a primary key to identify this table
        constraint dishWasherPK Primary key (employeeID),
        -- uniquely identifing this value from the employee table 
		constraint dishWasherFK foreign key (employeeID) references partTime (employeeID));

--------------------------------------end part time-------------------------------------------------------

--------------------------------------food stuff-------------------------------------------------------
-- this table gives info about Recipes
create table Recipe(
		-- foreign key from the headChef table
		employeeID varchar(20) not null,
        -- primary key
		recipeName varchar(20) not null,
		--  making the employee a primary key to identify this table
        constraint RecipePK Primary key (recipeName),
        -- uniquely identifing this value from the employee table 
		constraint RecipeFK foreign key (employeeID) references headChef (employeeID));

-- this table gives info about foodItem
create table foodItem(
		-- foreign key from the headChef table
		employeeID varchar(20) not null,
        -- primary key
		foodName varchar(20) not null,
		--  making the employee a primary key to identify this table
        constraint foodItemPK Primary key (foodName),
        -- uniquely identifing this value from the employee table 
		constraint foodItemFK foreign key (employeeID) references Recipe (employeeID));

--------------------------------------end food stuff-------------------------------------------------------
        