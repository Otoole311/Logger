##LOGGER

#######Imports#####
import datetime
from datetime import timedelta
import dbConnect
####################################


#Function to find the interval between times.
def timeUsed(startTime,EndTime):
    return startTime - EndTime

#Function to obtain time inputs from user.
def getTime():
    try:
        start = datetime.datetime.strptime(input("Enter Start time (HHMM): "), "%H%M")
        end = datetime.datetime.strptime(input("Enter End time (HHMM): "), "%H%M")
        return start, end
    except Exception as err:
        print("Please enter Correct Format: ",err)
#print(getTime())

#Function to get date from user
def getDate():
    answer = input("Use Current date? (Y/N)")
    date = ""
    if(answer.lower() == 'y'):
        date = datetime.datetime.now().date()
        return date
    else:
        date = input("Enter a date in YYYY-MM-DD format: ")
        year,month,day = map(int, date.split('-'))
        date1 = datetime.date(year,month,day)
        return date1

#Function to write content to file
def fileWrite(date,startTime,EndTime,interval):
    file = open("logger.txt","a")
    #file.write('{:15}' '{:12}' '{:12}' '{:12}' "\n".format("Date","StartTime","EndTime","Interval"))
    file.write('{:15}' '{:12}' '{:12}' '{:<12}' "\n".format(date,startTime,EndTime,interval))
    print("Data successfully recorded")
    file.close()

       
##################################################################################################################
#Main Function
def main():
    #Request Date from user
    Date = getDate()
    #Request Start and End time fromm user
    start_time, End_time = getTime()
    #find the time interval betwen the times given
    result = abs(timeUsed(start_time,End_time))
    #time in minutes
    minu = int(result/timedelta(minutes=1))
    
    #write content to file
    #Readable time values
    date = Date.strftime('%y-%m-%d')
    stime = start_time.time().strftime("%H:%M")
    etime = End_time.time().strftime("%H:%M")
    fileWrite(date,stime,etime,minu)

    ##Insert into Database
    dbConnect.insert(date,stime,etime,minu)    
    
main()
    
    
  
