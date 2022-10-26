INSERT INTO car (car_brand, car_model, car_color)VALUES ('Honda', 'Fit', 'White');
INSERT INTO car (car_brand, car_model, car_color)VALUES ('Toyota', 'Filder', 'Black');
INSERT INTO car (car_brand, car_model, car_color)VALUES ('Nissan', 'GTR', 'Green');
INSERT INTO car (car_brand, car_model, car_color)VALUES ('Toyota', 'Prius', 'White');
INSERT INTO car (car_brand, car_model, car_color)VALUES ('Toyota', 'Rav4', 'Black');
INSERT INTO car (car_brand, car_model, car_color)VALUES ('Honda', 'Civic', 'Black');
INSERT INTO car (car_brand, car_model, car_color)VALUES ('Honda', 'Accord', 'Brown');
INSERT INTO car (car_brand, car_model, car_color)VALUES ('Honda', 'HR-V', 'White');
INSERT INTO car (car_brand, car_model, car_color)VALUES ('Honda', 'CR-V', 'Black');
INSERT INTO car (car_brand, car_model, car_color)VALUES ('Honda', 'Grace', 'Black');
INSERT INTO car (car_brand, car_model, car_color)VALUES ('Daihatsu', 'Mira', 'White');
INSERT INTO car (car_brand, car_model, car_color)VALUES ('Daihatsu', 'Mebius', 'Green');
INSERT INTO car (car_brand, car_model, car_color)VALUES ('Toyota', 'Land Cruiser 300', 'White');

INSERT INTO buyer (buyer_passport_number, buyer_passport_series, buyer_name, buyer_adress) VALUES (123123, 2134, 'Уткин Василий Фёдорович', 'г. Владивосток, Океанский проспект, дом 90');
INSERT INTO buyer (buyer_passport_number, buyer_passport_series, buyer_name, buyer_adress) VALUES (123424, 3211, 'Сталеваров Пётр Аркадьевич', 'г. Владивосток, Океанский проспект, дом 190');
INSERT INTO buyer (buyer_passport_number, buyer_passport_series, buyer_name, buyer_adress) VALUES (544543, 1234, 'Мозгов Аркадий Борисович', 'г. Уссурийск, ул. Советская, дом 181');
INSERT INTO buyer (buyer_passport_number, buyer_passport_series, buyer_name, buyer_adress) VALUES (345543, 4321, 'Аркадьев Борис Васильевич', 'г. Спасск-Дальний, ул. Борисова, дом 30');
INSERT INTO buyer (buyer_passport_number, buyer_passport_series, buyer_name, buyer_adress) VALUES (764566, 2313, 'Иванов Борис Николаевич', 'г. Спасск-Дальний, ул. Борисова, дом 3');
INSERT INTO buyer (buyer_passport_number, buyer_passport_series, buyer_name, buyer_adress) VALUES (564766, 4356, 'Гасамов Аганэс Иванович', 'г. Уссурийск, ул. Советская, дом 181');
INSERT INTO buyer (buyer_passport_number, buyer_passport_series, buyer_name, buyer_adress) VALUES (765756, 4321, 'Петров Дилшот Фёдорович', 'г. Уссурийск, ул. Советская, дом 1');
INSERT INTO buyer (buyer_passport_number, buyer_passport_series, buyer_name, buyer_adress) VALUES (756756, 1234, 'Углев Денис Александрович', 'г. Спасск-Дальний, ул. Чуркина, дом 30');
INSERT INTO buyer (buyer_passport_number, buyer_passport_series, buyer_name, buyer_adress) VALUES (765344, 5678, 'Майкин Виктор Михайлович', 'г. Владивосток, Океанский проспект, дом 30/1');
INSERT INTO buyer (buyer_passport_number, buyer_passport_series, buyer_name, buyer_adress) VALUES (234790, 7777, 'Гриняк Денис Александрович', 'г. Спасск-Дальний, ул. Борисова, дом 300');
INSERT INTO buyer (buyer_passport_number, buyer_passport_series, buyer_name, buyer_adress) VALUES (324587, 8888, 'Акмайкин Александр Александрович', 'г. Спасск-Дальний, ул. Чуханова, дом 30');

INSERT INTO action_type (action_type_name) VALUES ('Тест-драйв');
INSERT INTO action_type (action_type_name) VALUES ('Продажа');
INSERT INTO action_type (action_type_name) VALUES ('Осмотр');
INSERT INTO action_type (action_type_name) VALUES ('Консультация');

INSERT INTO product (availability_number, year_production, car_id, product_price) VALUES (3, 2017, 1, 1800000);
INSERT INTO product (availability_number, year_production, car_id, product_price) VALUES (5, 2010, 2, 2500000);
INSERT INTO product (availability_number, year_production, car_id, product_price) VALUES (1, 1990, 3, 3500000);
INSERT INTO product (availability_number, year_production, car_id, product_price) VALUES (0, 2020, 4, 1300000);
INSERT INTO product (availability_number, year_production, car_id, product_price) VALUES (2, 2022, 5, 3400000);
INSERT INTO product (availability_number, year_production, car_id, product_price) VALUES (3, 2015, 6, 3000000);
INSERT INTO product (availability_number, year_production, car_id, product_price) VALUES (0, 2019, 7, 3454000);
INSERT INTO product (availability_number, year_production, car_id, product_price) VALUES (1, 2019, 8, 3405400);
INSERT INTO product (availability_number, year_production, car_id, product_price) VALUES (2, 2018, 9, 4305000);
INSERT INTO product (availability_number, year_production, car_id, product_price) VALUES (5, 2017, 10, 4395000);
INSERT INTO product (availability_number, year_production, car_id, product_price) VALUES (1, 2018, 11, 3405000);
INSERT INTO product (availability_number, year_production, car_id, product_price) VALUES (2, 2021, 12, 3200000);
INSERT INTO product (availability_number, year_production, car_id, product_price) VALUES (1, 2020, 13, 8549000);
INSERT INTO product (availability_number, year_production, car_id, product_price) VALUES (2, 2022, 1, 4300000);
INSERT INTO product (availability_number, year_production, car_id, product_price) VALUES (1, 2017, 2, 10404000);

INSERT INTO manager (manager_passport_series, manager_passport_number, manager_name, hourly_cost, percentage_comission) VALUES (3236, 321345, 'Васькин Пётр Романович', 100, 1.5);
INSERT INTO manager (manager_passport_series, manager_passport_number, manager_name, hourly_cost, percentage_comission) VALUES (3248, 324513, 'Василий Петрович Блохина', 200, 2.1);
INSERT INTO manager (manager_passport_series, manager_passport_number, manager_name, hourly_cost, percentage_comission) VALUES (4935, 983211, 'Пупко Денис Дмитриевич', 120, 1.9);
INSERT INTO manager (manager_passport_series, manager_passport_number, manager_name, hourly_cost, percentage_comission) VALUES (4398, 312313, 'Воровской Андрей Васильевич', 100, 1.5);
INSERT INTO manager (manager_passport_series, manager_passport_number, manager_name, hourly_cost, percentage_comission) VALUES (4389, 890321, 'Сидоров Аркадий Андреевич', 200, 1.1);
INSERT INTO manager (manager_passport_series, manager_passport_number, manager_name, hourly_cost, percentage_comission) VALUES (4358, 321321, 'Джон Питерс', 100, 2.2);
INSERT INTO manager (manager_passport_series, manager_passport_number, manager_name, hourly_cost, percentage_comission) VALUES (9069, 876542, 'Аганэс Фёдорович Михайлов', 50, 1.0);
INSERT INTO manager (manager_passport_series, manager_passport_number, manager_name, hourly_cost, percentage_comission) VALUES (4592, 321893, 'Василий Денисович Блохина', 30, 2.0);
INSERT INTO manager (manager_passport_series, manager_passport_number, manager_name, hourly_cost, percentage_comission) VALUES (1234, 131313, 'Андрей Маринович Денисова', 180, 1.9);
INSERT INTO manager (manager_passport_series, manager_passport_number, manager_name, hourly_cost, percentage_comission) VALUES (3461, 777777, 'Сазонова Мария Дмитриевна', 300, 2.1);
INSERT INTO manager (manager_passport_series, manager_passport_number, manager_name, hourly_cost, percentage_comission) VALUES (3461, 666666, 'Рзаев Кэшбек Чуркович', 100, 1.1);

INSERT INTO actions (action_date, buyer_id, manager_id, product_id, action_type_id) VALUES ('2022-10-19', 2, 9, 1, 1);
INSERT INTO actions (action_date, buyer_id, manager_id, product_id, action_type_id) VALUES ('2022-10-11', 1, 8, 2, 1);
INSERT INTO actions (action_date, buyer_id, manager_id, product_id, action_type_id) VALUES ('2022-10-12', 3, 7, 3, 3);
INSERT INTO actions (action_date, buyer_id, manager_id, product_id, action_type_id) VALUES ('2022-10-13', 9, 6, 4, 1);
INSERT INTO actions (action_date, buyer_id, manager_id, product_id, action_type_id) VALUES ('2022-10-14', 3, 5, 5, 2);
INSERT INTO actions (action_date, buyer_id, manager_id, product_id, action_type_id) VALUES ('2022-10-15', 1, 4, 6, 3);
INSERT INTO actions (action_date, buyer_id, manager_id, product_id, action_type_id) VALUES ('2022-10-16', 4, 3, 7, 4);
INSERT INTO actions (action_date, buyer_id, manager_id, product_id, action_type_id) VALUES ('2022-10-17', 6, 2, 8, 1);
INSERT INTO actions (action_date, buyer_id, manager_id, product_id, action_type_id) VALUES ('2022-10-18', 7, 1, 9, 2);
INSERT INTO actions (action_date, buyer_id, manager_id, product_id, action_type_id) VALUES ('2022-10-09', 8, 10, 10, 3);
INSERT INTO actions (action_date, buyer_id, manager_id, product_id, action_type_id) VALUES ('2022-10-09', 8, 1, 10, 2);

INSERT INTO manager_timesheet (manager_id, coming_to_work, leaving_from_work, sheduled_date) VALUES (1, '2022-10-10 10:00:00.000', '2022-10-10 18:20:07.000', '2022-10-05');
INSERT INTO manager_timesheet (manager_id, coming_to_work, leaving_from_work, sheduled_date) VALUES (2, '2022-10-10 10:00:00.000', '2022-10-11 20:22:14.000', '2022-10-11');
INSERT INTO manager_timesheet (manager_id, coming_to_work, leaving_from_work, sheduled_date) VALUES (3, '2022-10-13 10:00:00.000', '2022-10-13 18:00:00.000', '2022-10-13');
INSERT INTO manager_timesheet (manager_id, coming_to_work, leaving_from_work, sheduled_date) VALUES (4, '2022-10-10 10:00:00.000', '2022-10-10 18:00:00.000', '2022-10-10');
INSERT INTO manager_timesheet (manager_id, coming_to_work, leaving_from_work, sheduled_date) VALUES (5, '2022-10-10 10:00:00.000', '2022-10-10 18:00:00.000', '2022-10-10');
INSERT INTO manager_timesheet (manager_id, coming_to_work, leaving_from_work, sheduled_date) VALUES (1, '2022-10-11 10:00:00.000', '2022-10-11 18:00:00.000', '2022-10-11');
INSERT INTO manager_timesheet (manager_id, coming_to_work, leaving_from_work, sheduled_date) VALUES (2, '2022-10-11 10:00:00.000', '2022-10-19 20:30:22.000', '2022-10-19');
INSERT INTO manager_timesheet (manager_id, coming_to_work, leaving_from_work, sheduled_date) VALUES (3, '2022-10-12 10:00:00.000', '2022-10-12 18:00:00.000', '2022-10-12');
INSERT INTO manager_timesheet (manager_id, coming_to_work, leaving_from_work, sheduled_date) VALUES (4, '2022-10-11 10:00:00.000', '2022-10-11 18:00:00.000', '2022-10-11');
INSERT INTO manager_timesheet (manager_id, coming_to_work, leaving_from_work, sheduled_date) VALUES (5, '2022-10-11 10:00:00.000', '2022-10-11 19:00:00.000', '2022-10-11');
INSERT INTO manager_timesheet (manager_id, coming_to_work, leaving_from_work, sheduled_date) VALUES (1, '2022-10-10 10:00:00.000', '2022-10-10 18:00:00.000', '2022-10-10');
INSERT INTO manager_timesheet (manager_id, coming_to_work, leaving_from_work, sheduled_date) VALUES (2, NULL, '2022-10-12 18:00:00.000', '2022-10-12');
INSERT INTO manager_timesheet (manager_id, coming_to_work, leaving_from_work, sheduled_date) VALUES (3, '2022-10-14 10:00:00.000', '2022-10-14 18:00:00.000', '2022-10-14');
INSERT INTO manager_timesheet (manager_id, coming_to_work, leaving_from_work, sheduled_date) VALUES (4, '2022-10-12 09:00:00.000', '2022-10-12 18:00:00.000', '2022-10-12');
INSERT INTO manager_timesheet (manager_id, coming_to_work, leaving_from_work, sheduled_date) VALUES (5, '2022-10-10 10:00:00.000', '2022-10-10 18:00:00.000', '2022-10-10');
INSERT INTO manager_timesheet (manager_id, coming_to_work, leaving_from_work, sheduled_date) VALUES (2, '2022-10-10 09:00:00.000', '2022-10-10 17:00:00.000', '2022-10-10');
INSERT INTO manager_timesheet (manager_id, coming_to_work, leaving_from_work, sheduled_date) VALUES (2, '2022-10-12 10:00:00.000', '2022-10-12 18:00:00.000', '2022-10-12');
INSERT INTO manager_timesheet (manager_id, coming_to_work, leaving_from_work, sheduled_date) VALUES (2, '2022-10-13 10:00:00.000', '2022-10-13 18:00:00.000', '2022-10-13');
INSERT INTO manager_timesheet (manager_id, coming_to_work, leaving_from_work, sheduled_date) VALUES (1, '2022-10-12 10:00:00.000', '2022-10-12 18:00:00.000', '2022-10-12');
INSERT INTO manager_timesheet (manager_id, coming_to_work, leaving_from_work, sheduled_date)VALUES (6, '2022-10-10 10:00:00.000', '2022-10-10 18:00:00.000', '2022-10-10');

INSERT INTO manager_timesheet (manager_id, coming_to_work, leaving_from_work, sheduled_date) VALUES (1, '2022-11-10 10:00:00.000', '2022-11-10 18:20:07.000', '2022-10-05');
INSERT INTO manager_timesheet (manager_id, coming_to_work, leaving_from_work, sheduled_date) VALUES (2, '2022-11-10 10:00:00.000', '2022-11-11 20:22:14.000', '2022-10-11');
INSERT INTO manager_timesheet (manager_id, coming_to_work, leaving_from_work, sheduled_date) VALUES (3, '2022-11-13 10:00:00.000', '2022-11-13 18:00:00.000', '2022-10-13');
INSERT INTO manager_timesheet (manager_id, coming_to_work, leaving_from_work, sheduled_date) VALUES (4, '2022-11-10 10:00:00.000', '2022-11-10 18:00:00.000', '2022-10-10');
INSERT INTO manager_timesheet (manager_id, coming_to_work, leaving_from_work, sheduled_date) VALUES (5, '2022-11-10 10:00:00.000', '2022-11-10 18:00:00.000', '2022-10-10');
INSERT INTO manager_timesheet (manager_id, coming_to_work, leaving_from_work, sheduled_date) VALUES (1, '2022-11-11 10:00:00.000', '2022-11-11 18:00:00.000', '2022-10-11');
INSERT INTO manager_timesheet (manager_id, coming_to_work, leaving_from_work, sheduled_date) VALUES (2, '2022-11-11 10:00:00.000', '2022-11-19 20:30:22.000', '2022-10-19');
INSERT INTO manager_timesheet (manager_id, coming_to_work, leaving_from_work, sheduled_date) VALUES (3, '2022-11-12 10:00:00.000', '2022-11-12 18:00:00.000', '2022-10-12');
INSERT INTO manager_timesheet (manager_id, coming_to_work, leaving_from_work, sheduled_date) VALUES (4, '2022-11-11 10:00:00.000', '2022-11-11 18:00:00.000', '2022-10-11');
INSERT INTO manager_timesheet (manager_id, coming_to_work, leaving_from_work, sheduled_date) VALUES (5, '2022-11-11 10:00:00.000', '2022-11-11 19:00:00.000', '2022-10-11');
INSERT INTO manager_timesheet (manager_id, coming_to_work, leaving_from_work, sheduled_date) VALUES (1, '2022-11-10 10:00:00.000', '2022-11-10 18:00:00.000', '2022-10-10');
INSERT INTO manager_timesheet (manager_id, coming_to_work, leaving_from_work, sheduled_date) VALUES (2, NULL, NULL, '2022-10-12');
INSERT INTO manager_timesheet (manager_id, coming_to_work, leaving_from_work, sheduled_date) VALUES (3, '2022-11-14 10:00:00.000', '2022-11-14 18:00:00.000', '2022-10-14');
INSERT INTO manager_timesheet (manager_id, coming_to_work, leaving_from_work, sheduled_date) VALUES (4, '2022-11-12 09:00:00.000', '2022-11-12 18:00:00.000', '2022-10-12');
INSERT INTO manager_timesheet (manager_id, coming_to_work, leaving_from_work, sheduled_date) VALUES (5, '2022-11-10 10:00:00.000', '2022-11-10 18:00:00.000', '2022-10-10');
INSERT INTO manager_timesheet (manager_id, coming_to_work, leaving_from_work, sheduled_date) VALUES (2, '2022-11-10 09:00:00.000', '2022-11-10 17:00:00.000', '2022-10-10');
INSERT INTO manager_timesheet (manager_id, coming_to_work, leaving_from_work, sheduled_date) VALUES (2, '2022-11-12 10:00:00.000', '2022-11-12 18:00:00.000', '2022-10-12');
INSERT INTO manager_timesheet (manager_id, coming_to_work, leaving_from_work, sheduled_date) VALUES (2, '2022-11-13 10:00:00.000', '2022-11-13 18:00:00.000', '2022-10-13');
INSERT INTO manager_timesheet (manager_id, coming_to_work, leaving_from_work, sheduled_date) VALUES (1, '2022-11-12 10:00:00.000', '2022-11-12 18:00:00.000', '2022-10-12');
INSERT INTO manager_timesheet (manager_id, coming_to_work, leaving_from_work, sheduled_date)VALUES (6, '2022-11-10 10:00:00.000', '2022-11-10 18:00:00.000', '2022-10-10');







