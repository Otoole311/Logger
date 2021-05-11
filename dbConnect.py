import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="",
    database="logger"
    
    )

mycursor = mydb.cursor()

def insert(date,sTime,eTime,interval):
    sql = "INSERT INTO logger_info (activity_date,start_time,end_time,time_used) VALUES (%s,%s,%s,%s)"
    val = (date,sTime,eTime,interval)
    mycursor.execute(sql,val)
    mydb.commit()


