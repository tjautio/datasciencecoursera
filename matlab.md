## MATLAB notes
These are basic notes about MATLAB syntax etc.
### The basic operators:
* = assignment operator
* ; semicolon at the end of the line stops the print
* variables must start with letter and contain letters, numbers and underscore
* clear - removes the variables from workspace
* clc - clears the command window
* http://se.mathworks.com/help/matlab/descriptive-statistics.html
* http://se.mathworks.com/help/matlab/elementary-math.html
* http://se.mathworks.com/help/matlab/linear-algebra.html

### Arrays
* all MATLAB variables are Arrays
* row vector x = [7 8]
* column vector x = [7; 8]
* x = [1:3] equally spaced sequence
* square brackets are not required
* x = begin:step:end
* linspace(first,last, elements) gives a vector
* x = x' transposes the vector
* x = [1 2 3]' gives a transpose
* rand(var); creates a square matrix with dimension of var
* rand(2,3); gives matrix 2x3 (rows x columns)
* zeros(vars) gives the same but with zeros
* ones(vars)

### Saving and loading data
* save <filename.mat> <object>
* load <filename.mat>
* importing is done through the current folder

### Indexing
* A(3,5) gives the value on the 3rd row and 5th column
* end uses the last element
* end-1 is the second last, end-2 third last etc.
* A(:,2) gives all row and 2nd column
* A(1:3,2) would give rows 1 to 3 and 2 column

### Operations for arrays
* v + scalar = adds the scalar to all
* element-wise operations are done by adding . in front of the operator
* size() gives the dimensions of the array
* [max, index]= max(object) prints the value and the index
* Help under F1 or doc <function name>

### Plotting
* plot(x,y)
* plot(x,y, 'r -- *') r = color, -- style of line \* marker
* hold on to plot more than one in the same fig
* hold off to 
* close all to shut down the windows
* in vector the index is automatically used as x-axis
* title('Name')
* ylabel('text'), xlabel('text')
* legend()

### Editor - scripts
* create a piece of code <name.m>
* when the file is saved in the workspace we can run the script by just writing the name of the script

### Logical operators
* == > < ~=
* works also for vectors vector > scalar
* for two vectors it does element-wise
* AND &, OR |
* logicals can be used as index, e.g. v(v>6) prints a vector of values larger than 6

### Flow Control
* 	if <condition>
			<statement>
	end
	
* 	if <condition>
			<statement>
	else 
		<statement>
	end
* 	for i = 1:3	
		disp(i)
	end
	
