create table Employee (
      employeeID varchar(20) not null,
      fname varchar(30) not null, 
      lname varchar(30) not null,
      yearHired date not null,
      constraint employeePK Primary key (employeeID));
  