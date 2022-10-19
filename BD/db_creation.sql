DROP TABLE IF EXISTS action_type;
CREATE TABLE action_type (
	action_type_id       INTEGER PRIMARY KEY AUTOINCREMENT,
	action_type_name     VARCHAR(100)
 );

DROP TABLE IF EXISTS buyer;
CREATE TABLE buyer (
	buyer_id             INTEGER PRIMARY KEY AUTOINCREMENT,
	buyer_passport_number INTEGER,
	buyer_passport_series INTEGER,
	buyer_name           VARCHAR(100),
	buyer_adress         VARCHAR(255)
 );

DROP TABLE IF EXISTS car;
CREATE TABLE car (
	car_id               INTEGER PRIMARY KEY AUTOINCREMENT,
	car_brand            VARCHAR(30),
	car_model            VARCHAR(30),
	car_color            VARCHAR(50)
 );

DROP TABLE IF EXISTS manager;
CREATE TABLE manager (
	manager_id           INTEGER PRIMARY KEY AUTOINCREMENT,
	manager_passport_series INTEGER,
	manager_passport_number INTEGER,
	manager_name         VARCHAR(100),
	hourly_cost          double  DEFAULT 0,
	percentage_comission INTEGER  DEFAULT 1.5
 );

DROP TABLE IF EXISTS manager_timesheet;
CREATE TABLE manager_timesheet (
	manager_timesheet_id INTEGER PRIMARY KEY AUTOINCREMENT,
	manager_id           INTEGER,
	coming_to_wotk       DATETIME  DEFAULT CURRENT_TIMESTAMP,
	leaving_from_work    DATETIME  DEFAULT CURRENT_TIMESTAMP,
	sheduled_date        DATE  DEFAULT CURRENT_DATE,
	FOREIGN KEY ( manager_id ) REFERENCES manager( manager_id ) ON DELETE CASCADE ON UPDATE CASCADE
 );

DROP TABLE IF EXISTS product;
CREATE TABLE product (
	product_id           INTEGER PRIMARY KEY AUTOINCREMENT,
	availability_number  NUMERIC  DEFAULT 0,
	year_production      DECIMAL,
	car_id               INTEGER,
	product_price        BIGINT  DEFAULT 0,
	FOREIGN KEY ( car_id ) REFERENCES car( car_id ) ON DELETE CASCADE ON UPDATE CASCADE
 );

DROP TABLE IF EXISTS actions;
CREATE TABLE actions (
	action_id            INTEGER PRIMARY KEY AUTOINCREMENT,
	action_date          DATE  DEFAULT CURRENT_DATE,
	buyer_id             INTEGER,
	manager_id           INTEGER,
	product_id           INTEGER,
	action_type_id       INTEGER,
	FOREIGN KEY ( buyer_id ) REFERENCES buyer( buyer_id ) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY ( manager_id ) REFERENCES manager( manager_id ) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY ( product_id ) REFERENCES product( product_id ) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY ( action_type_id ) REFERENCES action_type( action_type_id ) ON DELETE CASCADE ON UPDATE CASCADE
 );
