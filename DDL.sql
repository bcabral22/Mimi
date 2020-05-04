-- general employee info table
create table Employee (
   -- the employees id to uniquely identify them
	  employeeID int not null,
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
		employeeID int not null,
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
		employeeID int not null,
		--
        constraint ManagerPK Primary key (employeeID),
        -- uniquely identifing this value from the employee table
		constraint ManagerFK foreign key (employeeID) references fullTime (employeeID));

-- this table gives info about headChef
create table headChef(
		-- foreign key from the fullTime table
		employeeID int not null,
		--
        constraint headChefPK Primary key (employeeID),
        -- uniquely identifing this value from the employee table
		constraint headChefFK foreign key (employeeID) references fullTime (employeeID));

-- this table gives info about sousChef
create table sousChef(
		-- foreign key from the fullTime table
		employeeID int not null,
		--
        constraint sousChefPK Primary key (employeeID),
        -- uniquely identifing this value from the employee table
		constraint sousChefFK foreign key (employeeID) references fullTime (employeeID));

-- this table gives info about lineCook
create table lineCook(
		-- foreign key from the fullTime table
		employeeID int not null,
		--
        constraint lineCookPK Primary key (employeeID),
        -- uniquely identifing this value from the employee table
		constraint lineCookFK foreign key (employeeID) references fullTime (employeeID));

--------------------------------------end full time-------------------------------------------------------

---------------------------------part time------------------------------------------------
-- this table gives info about partTime
create table partTime(
		-- foreign key from the employee table
		employeeID int not null,
        -- the set amount of money the person makes an hour
        hourlyRate int ,
		--
        constraint partTimePK Primary key (employeeID),
        -- uniquely identifing this value from the employee table
		constraint partTimeFK foreign key (employeeID) references Employee (employeeID));

-- this table gives info about Maitred
create table Maitred(
		-- foreign key from the partTime table
		employeeID int not null,
		--
        constraint MaitredPK Primary key (employeeID),
        -- uniquely identifing this value from the employee table
		constraint MaitredFK foreign key (employeeID) references partTime (employeeID));

-- this table gives info about waitStaff
create table waitStaff(
		-- foreign key from the partTime table
		employeeID int not null,
		--
        constraint waitStaffPK Primary key (employeeID),
        -- uniquely identifing this value from the employee table
		constraint waitStaffFK foreign key (employeeID) references partTime (employeeID));

-- this table gives info about dishWasher
create table dishWasher(
		-- foreign key from the partTime table
		employeeID int not null,
		--
        constraint dishWasherPK Primary key (employeeID),
        -- uniquely identifing this value from the employee table
		constraint dishWasherFK foreign key (employeeID) references partTime (employeeID));

-- --------------------------------------end part time-------------------------------------------------------

-- --------------------------------------food stuff-------------------------------------------------------
-- this table gives info about Recipes
create table Recipe(
		-- foreign key from the headChef table
		employeeID int not null,
        -- primary key
		recipeName varchar(20) not null,
		--
        constraint RecipePK Primary key (recipeName),
        -- uniquely identifing this value from the employee table
		constraint RecipeFK foreign key (employeeID) references headChef (employeeID));

-- this table gives info about foodItem
create table foodItem(
		-- foreign key from the headChef table
		employeeID int not null,
        -- primary key
		foodName varchar(20) not null,
		--
        constraint foodItemPK Primary key (foodName),
        -- uniquely identifing this value from the employee table
		constraint foodItemFK foreign key (employeeID) references Recipe (employeeID));

-- this table gives info about Appetizer
create table Appetizer(
		-- foreign key from the foodItem table
		foodName varchar(20) not null,
		--
        constraint AppetizerPK Primary key (foodName),
        -- uniquely identifing this value from the employee table
		constraint AppetizerFK foreign key (foodName) references foodItem (foodName));

-- this table gives info about Soup
create table Soup(
		-- foreign key from the foodItem table
		foodName varchar(20) not null,
		--
        constraint SoupPK Primary key (foodName),
        -- uniquely identifing this value from the employee table
		constraint SoupFK foreign key (foodName) references foodItem (foodName));

-- this table gives info about meatDish
create table meatDish(
		-- foreign key from the foodItem table
		foodName varchar(20) not null,
		--
        constraint meatDishPK Primary key (foodName),
        -- uniquely identifing this value from the employee table
		constraint meatDishFK foreign key (foodName) references foodItem (foodName));

-- this table gives info about meatType
create table meatType(
		-- foreign key from the meatDish table
		foodName varchar(20) not null,
        -- type of meat
		meatType varchar(20) not null,
		--
        constraint meatTypePK Primary key (foodName),
        -- uniquely identifing this value from the employee table
		constraint meatTypeFK foreign key (foodName) references meatDish (foodName));

-- this table gives info about dishType
create table dishType(
		-- foreign key from the meatDish table
		foodName varchar(20) not null,
        -- type of dish
		dishType varchar(20) not null,
		--
        constraint dishTypePK Primary key (foodName),
        -- uniquely identifing this value from the employee table
		constraint dishTypeFK foreign key (foodName) references meatDish (foodName));

-- this table gives info about Menu
create table Menu(
		-- foreign key from the meatDish table
		menuType varchar(20) not null,
		--
        constraint MenuPK Primary key (menuType));

-- this table gives info about Spiciness
create table Spiciness(
		-- primary key
		spiciness varchar(20) not null,
		--
        constraint SpicinessPK Primary key (spiciness));

-- this table gives info about menuItem
create table menuItem(
		-- foreign key from the Menu table
		menuType varchar(20) not null,
        -- foreign key from the foodItem table
		foodName varchar(20) not null,
        -- foreign key from the Spiciness table
		spiciness varchar(20) not null,
        --
        size varchar(20) not null,
        --
        price varchar(20) not null,
		--
        constraint menuItemPK Primary key (menuType, foodName),
        --
        constraint menuItem_MenuFK foreign key (menuType) references Menu (menuType),
        --
        constraint menuItem_FoodItemFK foreign key (foodName) references foodItem (foodName),
        --
        constraint menuItem_SpicinessFK foreign key (spiciness) references Spiciness (spiciness));

-- ------------------------------------end food stuff-------------------------------------------------------

-- someone else look at this, some of it does not make sense to me. why is there an orderStatus and toGo have an attribute called ready?
-- ------------------------------------order stuff-------------------------------------------------------
-- this table gives info about the status of an order (IS THIS NEEDED PER THE PROJECT REQUIREMENTS?)
create table orderStatus(
		-- primary key
		orderStatus varchar(20) not null,
		--
        constraint orderStatusPK Primary key (orderStatus));

-- this table gives info about Order
create table OrderTable(
		-- primary key
		orderNumber int not null,
		-- status of the order
		orderStatus varchar(20) not null,
        --
        constraint OrderFK foreign key (orderStatus) references orderStatus (orderStatus),
		--
        constraint OrderPK Primary key (orderNumber));

-- this table gives info about the toGoOrder
create table toGoOrder(
		-- primary key
		orderNumber int not null,
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
		orderNumber int not null,
        --
        constraint webOrderFK foreign key (orderNumber) references toGoOrder (orderNumber),
		--
        constraint webOrderPK Primary key (orderNumber));

-- this table gives info about the phoneOrder
create table phoneOrder(
		-- primary key
		orderNumber int not null,
        --
        constraint phoneOrderFK foreign key (orderNumber) references toGoOrder (orderNumber),
		--
        constraint phoneOrderPK Primary key (orderNumber));

-- this table gives info about the orderDetails
create table orderDetails(
		--
		orderNumber int not null,
		--
        menuType varchar(20) not null,
		--
		foodName varchar(20) not null,
		-- IS THIS NEEDED? -----------------------------------------------------------------------------------------------------------------------------------------------------
		amount int not null,
        --
        constraint orderDetails_OrderFK foreign key (orderNumber) references OrderTable (orderNumber),
        --
        constraint orderDetails_menuItemFK foreign key (menuType) references menuItem (menuType),
        --
        constraint orderDetails_menuItemFK2 foreign key (foodName) references menuItem (foodName),
		--
        constraint phoneOrderPK Primary key (orderNumber, menuType, foodName));




-- ------------------------------------end order stuff-------------------------------------------------------