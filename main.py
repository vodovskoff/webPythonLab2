import pandas as pd;
import sqlite3

con = sqlite3.connect("library.sqlite")
f_damp = open('BD/db_creation.sql','r', encoding ='utf-8-sig')
damp = f_damp.read()
f_damp.close()
con.executescript(damp)

f_damp = open('BD/db_filling.sql','r', encoding ='utf-8-sig')
damp = f_damp.read()
f_damp.close()
con.executescript(damp)
cursor = con.cursor()

#Удешевить авто, выпущенные раньше данного года
def reduce_price_of_old_cars(var_production_year, var_sale_in_percent):
    cursor.execute(
        f'''UPDATE product set product_price = product_price * cast((100-{var_sale_in_percent})/100.0 as real) where year_production<{var_production_year}''')

# Поднять стоимость продуктов данной марки
def increase_cost_of_cars_of_brand(var_brandname, var_percents):
    var_percents = (100 + var_percents)/100
    cursor.execute(
     f'''UPDATE product
     set product_price = product_price * cast({var_percents} as real)
     where exists(SELECT * FROM car WHERE (car.car_id=product.car_id and car.car_brand='{var_brandname}'))''')

#Вывести количество проданных авто каждого продавца
def show_managers_amount_of_sales():
    cursor.execute(
     '''SELECT count(*), manager_name
     FROM manager
     JOIN actions using (manager_id)
     JOIN action_type ON action_type.action_type_id=actions.action_type_id AND action_type_name="Продажа"
     group by manager_name
     order by count(*) desc ''')
    print(cursor.fetchall())

#Вывести количество прогуленных дней каждого продавца
def show_count_of_missed_days_of_manager():
    ds = pd.read_sql(
        '''SELECT manager_name,
        case when not exists(select * from manager_timesheet where manager_timesheet.manager_id=manager.manager_id and manager_timesheet.coming_to_work is not null) then 0
        else count(*) end as Прогулы
        FROM manager
        left JOIN manager_timesheet ON manager_timesheet.manager_id=manager.manager_id and manager_timesheet.sheduled_date<=date()
        where coming_to_work is null
        group by manager_name
        order by Прогулы desc ''', con)
    print(ds)
#show_count_of_missed_days_of_manager()
#Вывести сотрудников, которые в данном месяце выполняли тест-драйв и отсортировать по его имени.
def show_test_drivers(var_month):
    ds = pd.read_sql(f'''
        SELECT manager_name FROM manager
        JOIN actions USING  (manager_id)
        JOIN action_type USING (action_type_id)
        WHERE action_type_name="Тест-драйв"
        AND strftime('%m', actions.action_date)='{var_month}'
        ORDER BY manager_name
    ''', con)
    print(ds)
#show_test_drivers(10)
#Вывести продавца(продавцов), которые выходили на работу меньше N раз в данном месяце
def show_managers_working_less_times_in_month(var_month, var_count):
    ds = pd.read_sql(f'''
    SELECT manager_name, count(manager_name), manager_id FROM manager
    JOIN manager_timesheet USING (manager_id)
    GROUP BY manager_name
    HAVING strftime('%m', manager_timesheet.coming_to_work)='{var_month}'
    and count(manager_name)<{var_count}
    ''', con)
    print(ds)
#show_managers_working_less_times_in_month(10, 10)
#Вывести покупателя(покупателей), которые купили больше всех авто
def show_best_buyers():
    ds = pd.read_sql('''
    SELECT buyer_name FROM buyer
    JOIN actions USING (buyer_id)
    JOIN action_type ON action_type_name="Продажа" AND action_type.action_type_id=actions.action_type_id
    GROUP BY buyer_id
    having count(buyer_id)=
    (SELECT count(buyer_id) from actions
    JOIN action_type ON action_type_name="Продажа" AND action_type.action_type_id=actions.action_type_id
    GROUP BY buyer_id
    ORDER BY count(buyer_id) desc limit 1)
    ''', con)
    print(ds)
#show_best_buyers()
#Вывести продавца, который отработал больше всех дней.
def show_best_workers():
    ds = pd.read_sql('''
    SELECT manager_name, count(*) AS Отработанных_дней FROM manager
    JOIN manager_timesheet ON (manager_timesheet.manager_id=manager.manager_id)
    WHERE coming_to_work is not NULL
    GROUP BY manager_name
    having count(manager_name) =
    (SELECT count(manager_id) from manager_timesheet
    WHERE coming_to_work is not NULL
    GROUP BY manager_id
    ORDER BY count(manager_id) desc limit 1)
    ''', con)
    print(ds)
#show_best_workers()
con.commit()

