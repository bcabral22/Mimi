
-- general employee info table

	Insert into Employee (EmployeeId,fname, lname, yearHired)
    value(145879,'Maria','Mark','2003-01-22'),
		(214567,'Travis','Scott','2000-02-02'),
		(554123,'Obi', 'Wan','2003-02-05'),
        (215789,'Rick','Grimes','2010-03-05'),
		(214521,'Paul','Rib','2008-04-20'),
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
    value(215789,'Blinding White','Dental',300),
		(214567,'Super Vision','Eye',1200),
		(214521,'Bat Shield', 'Medical', 900),
		(102314,'Grundy Grave','Life', 950),
		(232323,'Blinding White', 'Dental', 500),
		(408627,'Grundy Grave', 'Life', 1000),
		(200001,'Bat Shield', 'Medical', 3000),
		(200000,'Super Vision', 'Eye', 600),
		(000001,'Flash Feet', 'Podiatry', 900),
		(201534,'Super Vision','Eye',1550);
    
-- this table gives info about Manager
Insert into Manager (EmployeeId)
    value(214567),
		(200001);

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
    value(215789),
		(232323);
-- ------------------------------------end full time-------------------------------------------------------

-- -------------------------------part time------------------------------------------------
-- this table gives info about partTime
Insert Into partTime(EmployeeID,hourlyRate)
value(145879,15),
	(554123,10),
	(214789,5),
	(214892,20),
	(111111,12),
	(321546,7);
-- this table gives info about Maitred
Insert into Maitred (EmployeeId)
    value(554123),
		(214892);

-- this table gives info about waitStaff
Insert into waitStaff (EmployeeId)
    value(145879),
		(111111);

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
		value('None'),
			('Mild'),
			  ('Tangy'),
              ('Piquant'),
              ('Hot'),
              ('Oh My God');

-- this table gives info about menuItem
Insert Into menuItem(menuType,foodName,spiciness,size,price)
value('Evening','Bat Surprise','Oh My God','5 serving','50'),
	('Lunch','Krypoto Beef','Tangy',' 2 servings','15'),
    ('Evening','BatMobile Nachos','Hot','6 servings','50'),
    ('Sunday brunch buffet','Egg Foo Young','Mild','4 servings','25'),
     ('Evening','Bat Chop Suey','Piquant','5 servings','30'),
	('Children’s','Bat Surprise','None','1 serving','20'),
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
Insert Into  orderDetails(orderNumber,menuType,foodName,amount )
	value(122,'Children’s','Bat Surprise',30),
		(123,'Sunday brunch buffet','Krypoto Beef',25),
		(124,'Lunch','BatMobile Nachos',30),
        (125,'Evening','Egg Foo Young',15),
        (126,'Lunch','Bat Chop Suey',22),
        (127,'Children’s','Bat Surprise',20),
        (128,'Sunday brunch buffet','Krypoto Beef',25),
        (129,'Lunch','BatMobile Nachos',30),
        (130,'Lunch','Bat Chop Suey',22);
    
-- this table gives info about the eatInOrder
Insert Into eatInOrder(orderNumber,tableNumber,seatNumber,timeArrived) 
        value(123,2,2,'19:15:15'),
			(129,3,1,'13:12:15');

-- ------------------------------------end Order stuff-------------------------------------------------------
SET FOREIGN_KEY_CHECKS=0;
-- ------------------------------------Party stuff-------------------------------------------------------
-- this table gives info about the Party SHOULD BILLID BE A PART OF THE PRIMARY KEY?------------------------------------------------------------------------------------------------
Insert Into Party(billid,fname,lname,postalAddress,date)
value     (1,'Mike','Smith','12456 Plush Ave','2020-02-02-02'),
			(2,'The', 'Joker','23145 Gotham St','2020-01-02'),
            (3,'Cat','Women','65214 Burger Ave','2020-02-04'),
            (4,'Mike','Smith','12456 Plush Ave','2020-02-04'),
			(5,'The', 'Joker','23145 Gotham St','2020-03-10'),
			(6,'Cat','Women','65214 Burger Ave','2020-04-04');
Insert Into partyAssignment(tableNumber,fname,lname,postalAddress)
				value(2,'The', 'Joker','23145 Gotham St'),
					(3,'Mike','Smith','12456 Plush Ave'),
                    (1,'Cat','Women','65214 Burger Ave');

-- ------------------------------------end Party stuff-------------------------------------------------------
-- ------------------------------------Bill stuff-------------------------------------------------------
-- this table gives info about the Bill
Insert Into Bill(billID,fname,lname,postaladdress)
	value(1,'Mike','Smith','12456 Plush Ave'),
    (2,'The', 'Joker','23145 Gotham St'),
    (3,'Cat','Women','65214 Burger Ave'),
    (4,'Mike','Smith','12456 Plush Ave'),
    (5,'The', 'Joker','23145 Gotham St'),
    (6,'Cat','Women','65214 Burger Ave');
SET FOREIGN_KEY_CHECKS=1;
-- this table gives info about the cashBill
Insert Into cashBill(billID)
		value(1),
        (6);

-- this table gives info about the mimingsBill
Insert Into mimingsBill(billID,mimingsAmount)
	value(3,15),
		(5,10);

-- this table gives info about the creditBill
Insert Into creditBill(billID)
value(2),
     (4);


-- this table gives info about the Anon
Insert Into Anon(billID)
		value(1),
        (6);

-- this table gives info about the Known
Insert Into Known(billID,fname,lname,postalAddress)
		value(2,'Mike','Smith','12456 Plush Ave'),
			(3,'The', 'Joker','23145 Gotham St'),
            (4,'Cat','Women','65214 Burger Ave'),
            (5,'The', 'Joker','23145 Gotham St');

-- ------------------------------------end Bill stuff-------------------------------------------------------


-- ------------------------------------shift stuff-------------------------------------------------------
Insert Into shiftType(type)
	value('Morning'),
		('Evening');

Insert Into Station(name)
value('butcher'),
		('fry cook'),
        ('grill chef'),
        ('pantry chef'),
        ('pastry chef'),
        ('roast chef'),
        ('sauté chef'),
        ('vegetable chef');
SET FOREIGN_KEY_CHECKS=0;
Insert Into Shift(type ,managerID,maitredID,headChefID,date)
value ('Morning',200001,214892,201534,'2020-02-02'),
		('Evening',214567,554123,000001,'2020-02-02');

Insert Into Schedule(type,date,employeeID)
		value('Morning','2020-02-02',232323),
			('Evening','2020-02-02',215789),
			('Morning','2020-02-02',200001 ),
			('Morning','2020-02-02',214892 ),
            ('Morning','2020-02-02',201534 ),
			('Evening','2020-02-02',214567 ),
            ('Evening','2020-02-02',554123 ),
            ('Evening','2020-02-02',000001 );
        SET FOREIGN_KEY_CHECKS=1; 
        
Insert Into StationAssignment(type,date, lineCookID,stationName)
values  ('Morning','2020-02-02',232323,'butcher'),
		('Morning','2020-02-02',232323,'fry cook'),
        ('Morning','2020-02-02',232323,'grill chef'),
		('Morning','2020-02-02',232323,'pantry chef'),
        ('Morning','2020-02-02',232323,'pastry chef'),
        ('Morning','2020-02-02',232323,'roast chef'),
        ('Morning','2020-02-02',232323,'sauté chef'),
        ('Morning','2020-02-02',232323,'vegetable chef'),
        ('Evening','2020-02-02',215789,'butcher'),
		('Evening','2020-02-02',215789,'fry cook'),
        ('Evening','2020-02-02',215789,'grill chef'),
		('Evening','2020-02-02',215789,'pantry chef'),
        ('Evening','2020-02-02',215789,'pastry chef'),
        ('Evening','2020-02-02',215789,'roast chef'),
        ('Evening','2020-02-02',215789,'sauté chef'),
        ('Evening','2020-02-02',215789,'vegetable chef');
        



Insert Into waitTableAssignment(type, date, tableNumber,waitstaffID)
values('Morning','2020-02-02',1,111111),
('Morning','2020-02-02',2,111111),
('Morning','2020-02-02',3,111111),
('Evening','2020-02-02',1,145879),
('Evening','2020-02-02',2,145879),
('Evening','2020-02-02',3,145879);


-- ------------------------------------end shift stuff-------------------------------------------------------