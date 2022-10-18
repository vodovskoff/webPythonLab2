CREATE TABLE action_type (
	action_type_id       INTEGER NOT NULL DEFAULT AUTOINCREMENT PRIMARY KEY  ,
	action_type_name     VARCHAR(100)
 );

CREATE TABLE buyer (
	buyer_id             INTEGER NOT NULL DEFAULT AUTOINCREMENT PRIMARY KEY  ,
	buyer_passport_number INTEGER     ,
	buyer_passport_series INTEGER     ,
	buyer_name           VARCHAR(100)     ,
	buyer_adress         VARCHAR(255)
 );

CREATE TABLE car (
	car_id               INTEGER NOT NULL DEFAULT AUTOINCREMENT PRIMARY KEY  ,
	car_brand            VARCHAR(30)     ,
	car_model            VARCHAR(30)     ,
	car_color            VARCHAR(50)
 );

CREATE TABLE manager (
	manager_id           INTEGER NOT NULL DEFAULT AUTOINCREMENT PRIMARY KEY  ,
	manager_passport_series INTEGER     ,
	manager_passport_number INTEGER     ,
	manager_name         VARCHAR(100)     ,
	hourly_cost          INTEGER  DEFAULT 0   ,
	percentage_comission INTEGER  DEFAULT 1.5
 );

CREATE TABLE manager_timesheet (
	manager_timesheet_id INTEGER NOT NULL DEFAULT AUTOINCREMENT PRIMARY KEY  ,
	manager_id           INTEGER     ,
	coming_to_wotk       DATETIME  DEFAULT CURRENT_TIMESTAMP   ,
	leaving_from_work    DATETIME  DEFAULT CURRENT_TIMESTAMP   ,
	sheduled_date        DATE  DEFAULT CURRENT_DATE   ,
	FOREIGN KEY ( manager_id ) REFERENCES manager( manager_id ) ON DELETE CASCADE ON UPDATE CASCADE
 );

CREATE TABLE product (
	product_id           INTEGER NOT NULL  PRIMARY KEY  ,
	availability_number  NUMERIC  DEFAULT 0   ,
	year_production      DECIMAL     ,
	car_id               INTEGER     ,
	product_price        BIGINT  DEFAULT 0   ,
	FOREIGN KEY ( car_id ) REFERENCES car( car_id ) ON DELETE CASCADE ON UPDATE CASCADE
 );

CREATE TABLE action (
	action_id            INTEGER NOT NULL DEFAULT AUTOINCREMENT PRIMARY KEY  ,
	action_date          DATE  DEFAULT CURRENT_DATE   ,
	buyer_id             INTEGER     ,
	manager_id           INTEGER     ,
	product_id           INTEGER     ,
	action_type_id       INTEGER     ,
	FOREIGN KEY ( buyer_id ) REFERENCES buyer( buyer_id ) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY ( manager_id ) REFERENCES manager( manager_id ) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY ( product_id ) REFERENCES product( product_id ) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY ( action_type_id ) REFERENCES action_type( action_type_id )
 );
