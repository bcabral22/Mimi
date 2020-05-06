-- general employee info table

	Insert into Employee (EmployeeId,fname, lname, yearHired)
    value(214521,'Paul','Rib','2008-04-20'),
		(102314,'Sam','Adam','2010-09-04'),
		(201534,'Ricky','Bobby','2016-12-20'),
		(214789,'Owen','Grimes','2020-05-05'),
		(321546,'Roby','Rick','2014-12-24'),
		(408627,'Brian', 'Cabral', '2017-02-02'),
		(214892,'Mickey', 'Mouse', '2019-05-12'),
		(200001,'Bruce', 'Wayne', '1985-11-11'),
		(200000,'Clark', 'Kent', '1999-01-20'),
		(000001,'Alfred', 'Pennyworth', '1979-10-30'),
		(111111,'Hal', 'Jordan', '2000-01-01'),
        (232323,'James', 'Keys', '2006-06-23');

-- ---------------------------------full time-------------------------------------------------
-- this table gives info about healthCare
Insert into healthCare (name, type)
    value('Bat Shield','Medical'),
		('Super Vision','Eye'),
		('Flash Feet','Podiatry'),
		('Blinding White','Dental'),
		('Grundy Grave','Life');

-- this table gives info about fullTime
Insert into fullTime (EmployeeId,healthCareName, healthCareType, weeklyRate)
    value(214521,'Bat Shield', 'Medical', 900),
		(102314,'Grundy Grave','Life', 950),
		(232323,'Blinding White', 'Dental', 500),
		(408627,'Grundy Grave', 'Life', 1000),
		(200001,'Bat Shield', 'Medical', 3000),
		(200000,'Super Vision', 'Eye', 600),
		(000001,'Flash Feet', 'Podiatry', 900),
		(201534,'Super Vision','Eye',1550);
    
-- this table gives info about Manager
Insert into Manager (EmployeeId)
    value(200001);

-- this table gives info about headChef
Insert into headChef (EmployeeId)
    value(201534),
    (408627),
    (000001);

-- this table gives info about sousChef
Insert into sousChef (EmployeeId)
    value(214521),
		(102314),
		(200000);
    
-- this table gives info about lineCook

Insert into lineCook (EmployeeId)
    value(232323);
-- ------------------------------------end full time-------------------------------------------------------

-- -------------------------------part time------------------------------------------------
-- this table gives info about partTime
Insert Into partTime(EmployeeID,hourlyRate)
value(214789,5),
	(214892,20),
	(111111,12),
	(321546,7);
-- this table gives info about Maitred
Insert into Maitred (EmployeeId)
    value(214892);

-- this table gives info about waitStaff
Insert into waitStaff (EmployeeId)
    value(111111);

-- this table gives info about dishWasher
Insert into dishWasher (EmployeeId)
    value(214789);

-- --------------------------------------end part time-------------------------------------------------------

-- --------------------------------------food stuff-------------------------------------------------------
-- this table gives info about Recipes
Insert into Recipe(EmployeeID,RecipeName)
value	(000001,'Bat Chop Suey'),
		(408627, 'Egg Foo Young'),
		(201534, 'Krypoto Beef'),
		(408627,'BatMobile Nachos'),
		(000001,'Bat Surprise');

-- this table gives info about foodItem
Insert Into foodItem(foodName)
value	('Bat Chop Suey'),
		('Egg Foo Young'),
		('Krypoto Beef'),
		('BatMobile Nachos'),
		('Bat Surprise');


-- this table gives info about Appetizer
Insert Into Appetizer(foodName)
		value('BatMobile Nachos');

-- this table gives info about Soup
Insert Into Soup(foodName) 
	value ('Bat Surprise');

-- this table gives info about meatDish
Insert Into meatDish(foodName)
	value	('Bat Chop Suey'),
			('Egg Foo Young'),
			('Krypoto Beef');

-- this table gives info about meatType
Insert Into meatType(foodName,meatType)
		value	('Bat Chop Suey','Chef Special'),
				('Egg Foo Young','Chicken'),
				('Krypoto Beef','Beef');

-- this table gives info about dishType
Insert Into dishType(foodName,dishType)
		value	('Bat Chop Suey','Chop Suey'),
				('Egg Foo Young','Egg Foo Young'),
				('Krypoto Beef','Chow Mein');

-- this table gives info about Menu
Insert Into  Menu(menuType)
		value('Evening'),
			('Lunch'),
			('Sunday brunch buffet'),
			('Children’s');

-- this table gives info about Spiciness
Insert Into Spiciness(spiciness)
		value('Mild'),
			  ('Tangy'),
              ('Piquant'),
              ('Hot'),
              ('Oh My God');

-- this table gives info about menuItem
Insert Into menuItem(menuType,foodName,spiciness,size,price)
value('Children’s','Bat Surprise','Oh My God','1 serving','20'),
	  ('Sunday brunch buffet','Krypoto Beef','Tangy','3 servings','25'),
      ('Lunch','BatMobile Nachos','Hot','4 servings','30'),
      ('Evening','Egg Foo Young','Mild','2 servings','15'),
      ('Lunch','Bat Chop Suey','Piquant','3 servings','22');

-- ------------------------------------end food stuff-------------------------------------------------------

-- ------------------------------------expertise and mentorship stuff-------------------------------------------------------

-- this table gives info about Expertise
Insert Into Expertise(employeeID,foodName)
	value('200000','Bat Surprise'),
		('102314', 'Krypoto Beef'),
		(214521,'BatMobile Nachos'),
        ('200000','Egg Foo Young'),
		('102314', 'Bat Chop Suey');

-- this table gives info about Mentorship
create table Mentorship(
		--
		sousID INT not null,
		--
		mentorID INT not null,
		--
		foodName varchar(20) not null,
		--
		startDate TIME,
		--
		endDate TIME,
		--
        constraint MentorshipPK Primary key (sousID, mentorID, foodName),
		--
		constraint Mentorship_sousChefFK foreign key (sousID) references sousChef (employeeID),
        --
		constraint Mentorship_ExpertiseFK foreign key (foodName, mentorID) references Expertise (foodName, employeeID));
-- ------------------------------------end expertise and mentorship stuff-------------------------------------------------------


-- ------------------------------------Table stuff-------------------------------------------------------
-- this table gives info about the Table
-- might need to rename this
create table storeTable(
		-- primary key
		tableNumber INT not null,
		--
        constraint storeTablePK Primary key (tableNumber));


-- this table gives info about the Seat
create table Seat(
		-- primary key
		tableNumber INT not null,
		-- primary key
		seatNumber INT not null,
		constraint SeatFK foreign key (tableNumber) references storeTable (tableNumber),
		--
        constraint storeTablePK Primary key (tableNumber, seatNumber));

-- ------------------------------------end Table stuff-------------------------------------------------------
-- ------------------------------------Customer stuff-------------------------------------------------------

-- this table gives info about the Account
create table Account(
		--
		accountID INT not null,
		--
		amount FLOAT not null,
		--
        constraint AccountPK Primary key (accountID));

-- this table gives info about the Customer
create table Customer(
		-- Customer first name
		fname varchar(30) not null,
		-- Customer last name
		lname varchar(30) not null,
		-- Customer address
		postalAddress varchar(30) not null,
		--
		accountID INT not null,
		--
		constraint CustomerFK foreign key (accountID) references Account (accountID),
		--
        constraint CustomerPK Primary key (fname, lname, postalAddress));

-- this table gives info about the privateCustomer
create table privateCustomer(
		-- Customer first name
		fname varchar(30) not null,
		-- Customer last name
		lname varchar(30) not null,
		-- Customer address
		postalAddress varchar(30) not null,
		-- Customer email address
		email varchar(30) not null,
		--
		constraint privateCustomerFK foreign key (fname, lname, postalAddress) references Customer (fname, lname, postalAddress),
		--
        constraint privateCustomerPK Primary key (fname, lname, postalAddress));

-- this table gives info about the corpCustomer
create table corpCustomer(
		-- Customer first name
		fname varchar(30) not null,
		-- Customer last name
		lname varchar(30) not null,
		-- Customer address
		postalAddress varchar(30) not null,
		-- Org name
		orgName varchar(30) not null,
		--
		companyName varchar(30) not null,
		--
		contactFName varchar(30) not null,
		--
		contactLName varchar(30) not null,
		--
		phoneNumber varchar(30) not null,
		--
		constraint corpCustomerFK foreign key (fname, lname, postalAddress) references Customer (fname, lname, postalAddress),
		--
        constraint corpCustomerPK Primary key (fname, lname, postalAddress));
-- ------------------------------------end Customer stuff-------------------------------------------------------

-- someone else look at this, some of it does not make sense to me. why is there an orderStatus and toGo have an attribute called ready?
-- ------------------------------------Order stuff-------------------------------------------------------
-- this table gives info about the status of an order (IS THIS NEEDED PER THE PROJECT REQUIREMENTS?)
create table orderStatus(
		-- primary key
		orderStatus varchar(20) not null,
		--
        constraint orderStatusPK Primary key (orderStatus));

-- this table gives info about Order
create table OrderTable(
		-- primary key
		orderNumber INT not null,
		-- status of the order
		orderStatus varchar(20) not null,
        --
        constraint OrderFK foreign key (orderStatus) references orderStatus (orderStatus),
		--
        constraint OrderPK Primary key (orderNumber));

-- this table gives info about the toGoOrder
create table toGoOrder(
		-- primary key
		orderNumber INT not null,
		-- status of the order
		orderStatus varchar(20) not null,
		-- ready
		ready varchar(3) not null,
		-- status of the order
		phoneNumber varchar(20) not null,
        --
        constraint toGoOrderFK foreign key (orderNumber) references OrderTable (orderNumber),
		--
        constraint toGoOrderPK Primary key (orderNumber));

-- this table gives info about the webOrder
create table webOrder(
		-- primary key
		orderNumber INT not null,
        --
        constraint webOrderFK foreign key (orderNumber) references toGoOrder (orderNumber),
		--
        constraint webOrderPK Primary key (orderNumber));

-- this table gives info about the phoneOrder
create table phoneOrder(
		-- primary key
		orderNumber INT not null,
        --
        constraint phoneOrderFK foreign key (orderNumber) references toGoOrder (orderNumber),
		--
        constraint phoneOrderPK Primary key (orderNumber));

-- this table gives info about the orderDetails
create table orderDetails(
		--
		orderNumber INT not null,
		--
        menuType varchar(20) not null,
		--
		foodName varchar(20) not null,
		-- IS THIS NEEDED? -----------------------------------------------------------------------------------------------------------------------------------------------------
		amount INT not null,
        --
        constraint orderDetails_OrderFK foreign key (orderNumber) references OrderTable (orderNumber),
        --
        constraint orderDetails_menuItemFK foreign key (menuType) references menuItem (menuType),
        --
        constraint orderDetails_menuItemFK2 foreign key (foodName) references menuItem (foodName),
		--
        constraint phoneOrderPK Primary key (orderNumber, menuType, foodName));


-- this table gives info about the eatInOrder
create table eatInOrder(
		-- primary key
		orderNumber INT not null,
		--
		tableNumber INT not null,
		--
		seatNumber INT not null,
		--
		timeArrived TIME,
        --
        constraint eatInOrderFK foreign key (tableNumber, seatNumber) references Seat (tableNumber, seatNumber),
		--
        constraint eatInOrderPK Primary key (orderNumber));

-- ------------------------------------end Order stuff-------------------------------------------------------


-- ------------------------------------Bill stuff-------------------------------------------------------
-- this table gives info about the Bill
create table Bill(
		-- primary key
		billID INT not null,
		--
		amountDue FLOAT not null,
		--
        constraint BillPK Primary key (billID));

-- this table gives info about the cashBill
create table cashBill(
		-- primary key
		billID INT not null,
		--
		constraint cashBillFK foreign key (billID) references Bill (billID),
		--
        constraint cashBillPK Primary key (billID));

-- this table gives info about the mimingsBill
create table mimingsBill(
		-- primary key
		billID INT not null,
		--
		mimingsAmount INT not null,
		--
		constraint mimingsBillFK foreign key (billID) references Bill (billID),
		--
        constraint mimingsBillPK Primary key (billID));

-- this table gives info about the creditBill
create table creditBill(
		-- primary key
		billID INT not null,
		--
		constraint creditBillFK foreign key (billID) references Bill (billID),
		--
        constraint creditBillPK Primary key (billID));

-- this table gives info about the Anon
create table Anon(
		-- primary key
		billID INT not null,
		--
		constraint Anon_BillFK foreign key (billID) references Bill (billID),
		--
		constraint Anon_cashBillFK foreign key (billID) references cashBill (billID),
		--
        constraint AnonPK Primary key (billID));

-- this table gives info about the Known
create table Known(
		-- primary key
		billID INT not null,
		-- Customer first name
		fname varchar(30) not null,
		-- Customer last name
		lname varchar(30) not null,
		-- Customer address
		postalAddress varchar(30) not null,
		--
		constraint Known_BillFK foreign key (billID) references Bill (billID),
		--
		constraint Known_CustomerFK foreign key (fname, lname, postalAddress) references Customer (fname, lname, postalAddress),
		--
        constraint KnownPK Primary key (billID));

-- ------------------------------------end Bill stuff-------------------------------------------------------


-- ------------------------------------Party stuff-------------------------------------------------------
-- this table gives info about the Party SHOULD BILLID BE A PART OF THE PRIMARY KEY?------------------------------------------------------------------------------------------------
create table Party(
		-- primary key
		billID INT not null,
		-- Customer first name
		fname varchar(30) not null,
		-- Customer last name
		lname varchar(30) not null,
		-- Customer address
		postalAddress varchar(30) not null,
		--
		constraint Party_CustomerFK foreign key (fname, lname, postalAddress) references Customer (fname, lname, postalAddress),
		--
		constraint Party_BillFK foreign key (billID) references Bill (billID),
		--
        constraint PartyPK Primary key (fname, lname, postalAddress));

create table partyAssignment(
		-- primary key
		tableNumber INT not null,
		-- Customer first name
		fname varchar(30) not null,
		-- Customer last name
		lname varchar(30) not null,
		-- Customer address
		postalAddress varchar(30) not null,
		--
		constraint Party_PartyFK foreign key (fname, lname, postalAddress) references Party (fname, lname, postalAddress),
		--
		constraint Party_storeTableFK foreign key (tableNumber) references storeTable (tableNumber),
		--
        constraint PartyPK Primary key (fname, lname, postalAddress, tableNumber));
-- ------------------------------------end Party stuff-------------------------------------------------------




-- ------------------------------------shift stuff-------------------------------------------------------
create table shiftType(
		--
		type varchar(30) not null,
		--
        constraint shiftTypePK Primary key (type));

create table Station(
		--
		name varchar(30) not null,
		--
        constraint StationPK Primary key (name));

create table Shift(
		--
		type varchar(30) not null,
		--
		managerID INT not null,
		--
		maitredID INT not null,
		--
		headChefID INT not null,
		--
		date DATE not null,
		--
		constraint Shift_ManagerFK foreign key (managerID) references Manager (employeeID),
		--
		constraint Shift_MaitredFK foreign key (maitredID) references Maitred (employeeID),
		--
		constraint Shift_shiftTypeFK foreign key (type) references shiftType (type),
		--
		constraint Shift_headChefFK foreign key (headChefID) references headChef (employeeID),
		--
        constraint StationPK Primary key (type, date, managerID, headChefID));

create table Schedule(
		--
		type varchar(30) not null,
		--
		managerID INT not null,
		--
		headChefID INT not null,
		--
		date DATE not null,
		--
		constraint Schedule_ManagerFK foreign key (managerID) references Employee (employeeID),
		--
		constraint Schedule_headChefFK foreign key (headChefID) references Employee (employeeID),
		--
		constraint Schedule_ShiftFK foreign key (type, date, managerID, headChefID) references Shift (type, date, managerID, headChefID),
		--
        constraint SchedulePK Primary key (type, managerID, headChefID, date));

create table StationAssignment(
		--
		stationName varchar(30) not null,
		--
		type varchar(30) not null,
		--
		managerID INT not null,
		--
		headChefID INT not null,
		--
		lineCookID INT not null,
		--
		date DATE not null,
		--
		constraint StationAssignment_StationFK foreign key (stationName) references Station (name),
		--
		constraint StationAssignment_lineCookFK foreign key (lineCookID) references lineCook (employeeID),
		--
		constraint StationAssignment_ScheduleFK foreign key (type, date, managerID, headChefID) references Shift (type, date, managerID, headChefID),
		--
        constraint StationAssignmentPK Primary key (type, managerID, headChefID, date, lineCookID, stationName));



create table waitTableAssignment(
		--
		type varchar(30) not null,
		--
		managerID INT not null,
		--
		headChefID INT not null,
		--
		date DATE not null,
		--
		tableNumber INT not null,
		--
		waitStaffID INT not null,
		--
		constraint waitTableAssignment_storeTableFK foreign key (tableNumber) references storeTable (tableNumber),
		--
		constraint waitTableAssignment_waitStaffFK foreign key (waitStaffID) references waitStaff (employeeID),
		--
		constraint waitTableAssignment_ShiftFK foreign key (type, date, managerID, headChefID) references Schedule (type, date, managerID, headChefID),
		--
		constraint waitTableAssignment_ScheduleFK foreign key (type, date, managerID, headChefID) references Shift (type, date, managerID, headChefID),
		--
        constraint waitTableAssignmentPK Primary key (type, managerID, headChefID, date, tableNumber, waitStaffID));

-- ------------------------------------end shift stuff-------------------------------------------------------

