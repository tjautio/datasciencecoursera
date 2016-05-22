## Java notes
These are some notes about Java for the course: ohjelmoinnin perusteet 
### Notes:
* lines needs to be ended with ;
* Code needs to have structure(runko) e.g.
public class Esimerkki {
    public static void main(String[] args) {
        System.out.println("Tulostettava teksti");
    }
}
* ; separates the commands
* when declaring variables for the first time
	int a = 12
	double b = 3.14
	String c = "boo"
	boolean d = true or false
* if the value changes there is no need for it
* int can be chnanged to double by adding (double) infront of it
* you can't mix the types. Except double can take also values that look like integers
* variables start always with small cap letters
* variable++ = variable + 1
* % is for remainder of the divisions

## Commands:
* // comment out
* System.out.println("txt"); prints the line and ends the row
* System.out.print("txt" + variable); print the line but does not end the row
* if one part of the prev. is string then also the other is converted
* but with parenthesis this can be averted
* \n Changes line in the text

### Conditional statements
* if(TRUE?){
	do sthg;
	}
	
* if(TRUE){
	do sthg
	} else if (TRUE) {
	do sthg
	} else {
	do sthg
	}

### Logical operators
* && AND
* || OR
* equals used with strings
* string-variable.equals("other text")

### Loops
* while (true){
do something}
* break stops the loop

### importing tool to read text:
* import java.util.Scanner;
* Scanner lukija = new Scanner(System.in);
* String teksti = lukija.nextlin()
* to get integers out from text 
* Integer.parseInt(lukija.nextlin())
