#To find the names and addresses of all employees in a prefecture...
#SELECT CONCAT(empfname,' ',emplname) as Name, empEmail FROM ALT WHERE addressPrefecture = "Tokyo";
#To find email addresses of ALTs in a branch for sending group emails
#select empemail from ALT where branchID = 'ktk01';
#To find names of all schedulers in the company
#select empfname, emplname from officestaff where officerole = "scheduler";
#To find names and addresses of all employees in a particular city
#select concat(empfname,' ', emplname) as Name, empemail from ALT where addresscity ="Tsuchiura";
#To find the names and email addresses of ALTs who work at a particular school on a Friday
#SELECT DISTINCT CONCAT(empfname,' ',emplname) AS Name, empemail FROM ALT JOIN timetable ON ALT.empNo=TimeTable.empNo WHERE weekday = "friday" AND schoolID = "tkaoyama";
#To find names and email addresses of employees who do not have a assigned school on Fridays
#SELECT CONCAT(empfname,' ',emplname) AS Name, empemail FROM ALT JOIN timetable ON ALT.empNo=TimeTable.empNo WHERE weekday = "friday" AND schoolID = NULL;
