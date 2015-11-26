## Some Python notes:
### Mostly working with strings
* \# Comment out single line

* """Everything between these are commented out"""

* Remember that exponentation is done by \**

* % unusual mathoperator. It returns remainder of a division (jakojaannos)

* len() length of character variable, also length of a vector
* lower(), changes all to lowercase letters, e.g. "John".lower() prints "john"
* upper(), all uppercase with same logic
* str(), converts the value in string e.g. str(5) prints "5"
* print prints the stuff you define, works also with "sth "+ "and " + "sth"
e.g. print "Let's not go to %s. 'Tis a silly %s." % (var1, var2) #Vars must be strings#

### Dates

* from datetime import datetime
* datetime.now()
* datetime.now().year/month/day/hour/minute/second

### Control flow

* not is evaluated first;
* and is evaluated next;
* or is evaluated last.
* 	if Statement:
		then what
	elif Statement:
		then what
	else:
		then what

