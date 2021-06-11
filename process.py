log_file = open("um-server-01.txt")
#this line accesses the information stored in um-server-01.txt for us to work with

def sales_reports(log_file):
    #def defines this as a function named sales_reports that takes in log_file as a parameter
    for line in log_file:
        #we are accessing each 'line' in log_file and running the following code on it
        line = line.rstrip()
        #this will remove any 'whitespace' at the end of the 'line'
        day = line[0:3]
        #this will set day equal to the value of index's 0-3
        if day == "Mon":
        #this determines that if the value of day is 'Tue' then we run the following command
            print(line)
        #this will report the line value to the console


sales_reports(log_file)
#this line runs the function we defined above
