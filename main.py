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
# cursor.execute(
#     '''UPDATE product set product_price = product_price * cast((100-10)/100.0 as real) where year_production<2017''')
# print(cursor.fetchall())

#2. Вывести количество проданных авто каждого продавца
# cursor.execute(
#     '''SELECT count(*), manager_name
#     FROM manager
#     JOIN actions using (manager_id)
#     JOIN action_type ON action_type.action_type_id=actions.action_type_id AND action_type_name="Продажа"
#     group by manager_name
#     order by count(*) desc ''')
# print(cursor.fetchall())

#1. Вывести количество прогуленных дней каждого продавца
ds=pd.read_sql(
    '''SELECT manager_name,
    case when count(*)==0 or not exists(select * from manager_timesheet where manager_timesheet.manager_id=manager.manager_id and manager_timesheet.coming_to_work is not null) then 0
    else count(*) end as Прогулы
    FROM manager
    left JOIN manager_timesheet ON manager_timesheet.manager_id=manager.manager_id
    where coming_to_work is null
    group by manager_name
    order by Прогулы desc ''', con)
print(ds)

# Поднять стоимость продуктов данной марки
# cursor.execute(
#     '''UPDATE product
#     set product_price = product_price * cast(1.5 as real)
#     where exists(SELECT * FROM car WHERE car.car_id=product.car_id)''')
print(cursor.fetchall())
con.commit()

