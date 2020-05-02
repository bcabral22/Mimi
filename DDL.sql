create table Employee (
      employeeID varchar(20) not null,
      fname varchar(30) not null, 
      lname varchar(30) not null,
      yearHired date not null,
      constraint employeePK Primary key (employeeID));
  
create table fullTime(
		employeeID varchar(20) not null,
        healthcareInfo varchar(20),
        weeklyRate int , 
        constraint fullTimePK Primary key (employeeID),
		constraint employeeFK foreign key (employeeID) references Employee (employeeID));
	
    