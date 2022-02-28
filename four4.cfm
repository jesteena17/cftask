<!-- 

Show below details in a page
Today's date, 
current Month in numeric, 
current month in word, 
Last friday date,
 Last day of month. 
 
 Show Last 5 days date & day like below. 
Sunday should be red, 
Monday - green, 
Tuesday - orange, 
Wednesday - yellow, 
Thursday - bold black, 
Friday - blue, 
Saturday - bold red

02-Dec-2010 - Thursday
01-Dec-2010 - Wednesday
30-Nov-2010 - Tuesday
29-Dec-2010 - Monday
28-Dec-2010 - Sunday

 -->

<cfscript>




    writeOutput("Today's date : "&dateFormat(now(),"dd-mm-yyyy")&"<br>");
    
    writeOutput("current Month in numeric : "&DateFormat(now(),"mm")&"<br>");
    writeOutput("current month in word : "&dateFormat(now(),"mmmm")&"<br>");
    writeOutput("Last day of month : "&DaysInMonth(now())&"<br>");
  
  
    writeOutput("Today's date : "&dateFormat(now(),"dd-mm-yyyy")&"<br>");
    writeOutput("Today's date : "&dateFormat(now(),"dd-mm-yyyy")&"<br>");
    writeOutput("Today's date : "&dateFormat(now(),"dd-mm-yyyy"));
    writeOutput("Today's date : "&dateFormat(now(),"dd-mm-yyyy"));
    writeOutput("Today's date : "&dateFormat(now(),"dd-mm-yyyy"));
</cfscript>

<cfset today = Now()/> 
<cfset week_number_of_today = dayOfWeek(today)>
<!--- <!-- <cfdump var="#week_number_of_today#"> --> --->
<!--- 1-sun,2-mon,3-tue,4-wed,5-thu,6-friday,7-sat --->
<cfset fridayOffset = (6-week_number_of_today)-7>

<cfset mostRecentFriday = dateAdd("d", fridayOffset, today)><br>
<cfoutput>Last friday date : #dateFormat(mostRecentFriday,"dd-mm-yyyy")#</cfoutput>

<!--- or --->
<br>
<cfset today=dayofweek(now())>
<cfoutput>
Last Friday is:
<cfif today EQ 7>
    #dateFormat(dateAdd("d",-1,now()))#
<cfelse>
    #dateFormat(dateAdd ("d",-(1+today),now()))#
</cfif>
</cfoutput>
