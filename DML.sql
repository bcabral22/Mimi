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
Insert Into Mentorship(sousID,mentorID,foodName,startDate,endDate)
value (102314,200000,'Bat Surprise',"2019-08-15","2019-10-16"),
	(200000,102314,'Krypoto Beef',"2018-08-15","2018-10-16"),
    (214521,200000,'Egg Foo Young',"2017-08-15","2017-10-16"),
    (200000,102314,'Bat Chop Suey',"2016-08-15","2016-10-16"),
    (102314,214521,'BatMobile Nachos',"2015-08-15","2015-10-16");
-- ------------------------------------end expertise and mentorship stuff-------------------------------------------------------

-- ------------------------------------Table stuff-------------------------------------------------------
Insert Into tableStatus(status)
value('Available'),
	('Unavailable');
    
-- this table gives info about the Table
-- might need to rename this
Insert Into storeTable(tableNumber, status)		
		value (1, 'Available'),
			  (2,'Unavailable'),
              (3,'Unavailable'),
              (4,'Available'),
              (5,'Available');

-- this table gives info about the Seat
Insert Into Seat(tableNumber,seatNumber)
				value (2,2),
					(3,1),
                    (1,5);

-- ------------------------------------end Table stuff-------------------------------------------------------
-- ------------------------------------Customer stuff-------------------------------------------------------
insert Into accountStatus(status)
		value ('Active'),
			  ('Inactive');
-- this table gives info about the Account
Insert Into  Account(status,accountID ,amount)
		value('Active',555,200.20),
			 ('Inactive',321,100.21),
			 ('Active',125,2220.13),
             ('Active',147,452.11),
			('Inactive',124,10.21);

-- this table gives info about the Customer
Insert Into Customer(fname,lname,postalAddress,accountID)
	         value ('Mike','Smith','12456 Plush Ave',555),
		         ('Dooms','Day','55317 Super St',321),
                 ('The', 'Joker','23145 Gotham St',125),
                 ('Cat','Women','65214 Burger Ave',147),
                 ('Martha', 'Wayne','14512 Gotham St',124);

-- this table gives info about the privateCustomer
insert into  privateCustomer(fname,lname,postalAddress,email,birthday)
			value ('Martha', 'Wayne','14512 Gotham St','theWaynes@rich.com',"1985-06-24"),
					('Mike','Smith','12456 Plush Ave','Markymark@cool.com',"199-01-23");

-- this table gives info about the corpCustomer
Insert Into corpCustomer(fname,lname,postalAddress,orgName,companyName,contactFName,contactLName,phoneNumber)
			value ('Dooms','Day','55317 Super St','Sales','Kryptonian Assaualt','Peggy','Yellow','555-462-4639'),
					('The', 'Joker','23145 Gotham St','Choas','Laughing Company','Harley','Quinn','322-452-4452'),
                    ('Cat','Women','65214 Burger Ave','Stealing','Diamond Co','Mark','Hamel','321-846-6551');
	
-- ------------------------------------end Customer stuff-------------------------------------------------------

-- someone else look at this, some of it does not make sense to me. why is there an orderStatus and toGo have an attribute called ready?
-- ------------------------------------Order stuff-------------------------------------------------------
-- this table gives info about the status of an order (IS THIS NEEDED PER THE PROJECT REQUIREMENTS?)
Insert Into orderStatus(orderStatus)
			value('Ready'),
            ('Preparing'), 
            ('Recieved'),
            ('Ordered');

-- this table gives info about Order
Insert Into OrderTable(orderNumber,orderStatus)
        value(122,'Ready'),
			(123,'Preparing'),
            (124,'Recieved'),
            (125,'Ordered'),
            (126,'Preparing'),
            (127,'Recieved'),
            (128,'Ordered'),
            (129,'Ready'),
            (130,'Preparing');

-- this table gives info about the toGoOrder
Insert Into toGoOrder(orderNumber,orderStatus,ready,phoneNumber)
value(124,'Recieved','Yes','148-123-4117'),
	(125,'Ordered','No','145-541-9632'),
    (126,'Preparing','No','123-854-4223'),
    (127,'Recieved','Yes','235-453-7853'),
    (128,'Ordered','No','125-754-8623'),
	(122,'Ready','Yes','147-532-4531'),
	 (130,'Preparing','No','142-540-4581');

-- this table gives info about the webOrder
Insert Into webOrder(orderNumber)
value(124),
	(130),
	(126),
	(128)	;
 
-- this table gives info about the phoneOrder
Insert Into phoneOrder(orderNumber)
	value(125),
		(122),
        (127),
        (128);
        
    

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
		maitredID INT,
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
        constraint StationPK Primary key (type, date));

create table Schedule(
		--
		type varchar(30) not null,
		--
		date DATE not null,
		--
		employeeID INT not null,
		--
		constraint Schedule_EmployeeFK foreign key (employeeID) references Employee (employeeID),
		--
		constraint Schedule_ShiftFK foreign key (type, date) references Shift (type, date),
		--
        constraint SchedulePK Primary key (type, date, employeeID));

alter table Shift
		--
		add constraint Shift_Schedule_ManagerFK foreign key (type, date, managerID) references Schedule (type, date, employeeID), -- --------------------------------------------------
		--
		add constraint Shift_Schedule_MaitredFK foreign key (type, date, maitredID) references Schedule (type, date, employeeID),
		--
		add constraint Shift_Schedule_headChefFK foreign key (type, date, headChefID) references Schedule (type, date, employeeID);

create table StationAssignment(
		--
		type varchar(30) not null,
		--
		date DATE not null,
		--
		lineCookID INT not null,
		--
		stationName varchar(30) not null,
		--
		constraint StationAssignment_StationFK foreign key (stationName) references Station (name),
		--
		constraint StationAssignment_lineCookFK foreign key (lineCookID) references lineCook (employeeID),
		--
		constraint StationAssignment_ScheduleFK foreign key (type, date, lineCookID) references Schedule (type, date, employeeID),
		--
        constraint StationAssignmentPK Primary key (type, date, lineCookID, stationName));



create table waitTableAssignment(
		--
		type varchar(30) not null,
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
		constraint waitTableAssignment_ShiftFK foreign key (type, date) references Shift (type, date),
		--
		constraint waitTableAssignment_ScheduleFK foreign key (type, date, waitStaffID) references Schedule (type, date, employeeID),
		--
        constraint waitTableAssignmentPK Primary key (type, date, tableNumber));

-- ------------------------------------end shift stuff-------------------------------------------------------