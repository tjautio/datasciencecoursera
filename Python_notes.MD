## Some Python notes:
### Mostly working with strings
* \# Comment out single line

* """Everything between these are commented out"""

* Remember that exponentation is done by \**

* % unusual mathoperator. It returns remainder of a division (jakojaannos)

* len() length of character variable, also length of a vector
* .lower(), changes all to lowercase letters, e.g. "John".lower() prints "john"
* .upper(), all uppercase with same logic
* str(), converts the value in string e.g. str(5) prints "5"
* print prints the stuff you define, works also with "sth "+ "and " + "sth"
e.g. print "Let's not go to %s. 'Tis a silly %s." % (var1, var2) #Vars must be strings#
* when you need to get a float from two integers use float()
* \ continuation character that can be used to break lines
* list.append(n) adds a term n at the end of the list
* list.pop(n), del(list[n]) removes an element with index n
* list.remove(n), removes the term n if n is in the list
d
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
		
### How to do Pig Latin intepreter:
* first commands, then how to use them
* raw_input("question") promts the user to give input
* var.isalpha() returns True if only alphabets

* create variable with raw_input
* check that we got something reasonable
* use .isalpha()
* use .lower() to change all lowercase letters
* take the first letter by word[0]

### Functions
* \*=, +=, -=, \\=
* def function(par1, par2):
	par1 sth par2 

### Modules
* import module
* from module import function
* from module import function as fun ... Changes the name of the function
* from module import \* ...(the slash is for .md) This imports all the functions from the module, so no need e.g. math.sqrt(), just sqrt() is enough
* dir(module) tells you all the 

### Some build in fuctions
* max(), returns the maximum
* min(), returns the mimimum
* abs(), absolute value
* type(), tells the type of the data

### Lists and Dictionaries
* empty list y = []
* e.g. a = [1,2,3], a[1]=2, a[1:2] = [2,3]
* a.append('4') adds number 4 to the list above
* strings are kind of like a list of characters
* a.index(2) = 1
* a.insert(0, 0) = [0,1,2,3,4]
* a.sort() re-organises the list
* a.remove(3)
* zip() combines two(or more) lists as pairs and stops at the end of the shorter one
* enumerate() creates an indexing

* empty dictionary y = {}
* Dictionaries have keys
* e.g. b = {'a': 1, 'b' :2, 'c':3}
* b['b']=2
* Adding: b['d']=4 or chnaging if 'd' already exists
* del b['d'] deletes d:4 from the dictionary
* Dictionaries can hold lists, strings, ints etc.
* y.items() prints the key-value pairs
* y.keys() prints all the keys
* y.values() print all the values

### For loop
* for i in [list]:
	do smth
* this gives you the index that you use to iterate over the list

### for loop
* for variable in list_name:
	Do things
* this gives you the actual list element
	
* print something , (means in a loop that the things stay on the same line)
* for index, item in enumerate(list):
    print index, item

### while loop
* while count < finite number: 
	do things until break
* while loop_condition:
	do things
	set loop_condition = FALSE
* good use for while loops is user prompts when we need a correct answer
* while/else: else condition is executed when while is false
	
### List comprehension
* list = [i for i in range() if sth]

### List slicing
* [start:end:stride]
* if one of them is left empty then the default is used, start = 0, end = end of the list, stride = 1

### Anonymous functions
* passing functions like they're values or variables
* lambda x: x sthg