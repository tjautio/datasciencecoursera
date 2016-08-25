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
* Few notes about the style:
* use camelCase
* avoid copy paste whenever possible
* separate logical parts of the code in separate sections 
* and use methods for each a bit more complicated process
* /*  tekstia joka on kommentoitu pois */

### Variables
* when declaring variables for the first time
	int a = 12
	double b = 3.14
	String c = "boo"; tai: String c = new String("boo");
	boolean d = true or false
	char var = 'a' tallentaa yksittaisen merkin
	int[] = {1,2,3}; is a list
* sana.isEmpty() toimii String muuttujilla

* if the value changes there is no need for it
* int can be chnanged to double by adding (double) infront of it
* you can't mix the types. Except double can take also values that look like integers
* variables start always with small cap letters
* variable++ = variable + 1
* % is for remainder of the divisions
* variables do not exsist before they are declared
* variables exist also only inside the object they have been introduced

### NetBeans
* Alt+Shift+F helps with most intendation issues
* Ctrl+r you can change all the occurences of a variable or method

## Commands:
* // comment out
* System.out.println("txt"); prints the line and ends the row
* System.out.print("txt" + variable); print the line but does not end the row
* In System.out.print(...+"\t"+...) prints tab
* if one part of the prev. is string then also the other is converted
* but with parenthesis this can be averted
* \n Changes line in the text
* object.equals("what you want to check"), returns boolean
* object.length gives the length of the object
* string.charAt(n); returns the nth character in the string
* string.indexOf("string"); returns the first index value of the word (note: indexation start from 0), if not exist then -1
* variables are defined only in the blocks they're defined

* var++; variable's value can is incrreased by one
* var--; minus 1
* var += 10  on sama kuin var = var +10
* var -= 10  on sama kuin var = var -10
* toimii myos muille peruslaskutoimituksille
* merkkinjonon indeksointi alkaa nollasta
* Math.pow(kantaluku, exponentti); potenssi
* String.format("%.2f", luku) double with two decimals
* Calendar.getInstance().get(Calendar.DATE/MONTH/YEAR);


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
* while(condition){
	do something}

* break; breaks the loop
* continue; starts the loop from the beginning
	
* for(int i =0; i < 5;i++){
	do something}

* for(int i : lista){}

### importing tool to read text:
* import java.util.Scanner;
* Scanner lukija = new Scanner(System.in);
* String teksti = lukija.nextLine()
* to get integers out from text 
* Integer.parseInt(lukija.nextLine())

### How to run java programs on command line
* Clean and build gives you .jar file (Java Archive)
* That combines everything in the program in one file
* java - jar <filename>

### Debugger
* koodissa olevat aputulosteet on hyva vaihtoehto pienemmissa ohjelmissa
* NetBeansissa klikkaamalla rivinumeroa tehdaan break point
* F8 suorittaa seuraavan komennon
* F5 suorittaa seuraavaan break pointiin
* F7 step_into eli menee metodin sisalle (metodi on vissiin vahan kuin funktio)

### Methods - metodit
* like functions?
* parameters and outputs, parametri ja paluuarvo
* these will be created inside public class {}
* starting with public static void ,method_name(){}
* the execution order is important to realize:
public static void main(String[] args){} suoritetaan rivi kerrallaan. Kun
tassa tormataan metodiin, siirrytaan suorittamaan metodin koodi rivi kerrallaan
ja sen jalkeen palataan takaisin mainiin.
* metodi ei voi sijaita toisen metodin sisalla
* metodit voivat kutsua toisiaan. Kuten main:kin, joka tavallaan on metodi
* mainin muuttujat eivat nay metodeille tai toisinpain
* Tama patee vain alkeistietotyyppisille muuttujille
* Mutta, jos parametri on ArrayList, niin metodi kasittelee alkuperaista listaa
* public static void (void tarkoittaa, etta mitaan ei palauteta)
* public static int (int kertoo, etta metodi palauttaa kokonaisluvun)
* return metodissa maarittaa palautusarvon
* ArrayList is also valid parameter for a method


### Libraries:
* import java.util.*; tuo kaikki util. kirjastot

### ArrayList - oliosailo
* import java.util.ArrayList; tuodaan array kayttoon
* ArrayList<String> lista = new ArrayList<>(); Strings
* ArrayList<Integer> lista = new ArrayList<>(); Integers
* ArrayList<Double> doublet = new ArrayList<>(); Doubles
* ArrayList<Character> merkit = new ArrayList<>(); Characters
* ArrayList<String> copy = new ArrayList<>(nameOfTheListToBeCopied); copies the list to new object
* lista.add("eka"); ... lisataan sana listan loppuun
* lista.size(); kertoo lukumaaran
* lista.get(n); tulostaa n. elementin
* lista.remove("tama"); poistaa "taman" listalta
* lista.remove(3); poistaa indeksilla 3 olevan elementin. Muista indeksointi alkaa 0sta
* lista.contains("susi"); boolean onko "susi" listalla
* ArrayList(Integer) luvut:
* Methods change the original ArrayList object and not a copy of it
* luvut.remove(n); poistaa n. elementin listalta. Jos halutaan poistaa luku n
* luvut.remove(Integer.valueOf(2)); poistaa luvun, jonka arvo on 2.
* ArrysList:lle on olemassa oma for each loop:
* for(String lista_i : lista){
	System.out.println(lista_i);
	}
	
* import java.util.Collections;
* Collections.sort(lista); jarjestaa
* Collections.reverse(lista); kaantaa
* Collections.shuffle(lista); sekoittaa

### Hashmap - tietoparien tallentaminen
* HashMap<String, String> postinumerot = new HashMap<>();
* postinumerot.put("00530", "Helsinki"); lisaa avain - arvo parin olioon
* postinumerot.get("00530"); palauttaa arvon, johon liittyy avain "00530"
* postinumerot.isEmpty(); true if hashmap object is empty
* postinumerot.containsKey(whatever); true if the key is in the object
* Similarly as with ArrayList methods change the original hashmap object
* if you want to update value you need to get the old and add the change to it


### Classes
* e.g.
public class Henkilo {
    private String nimi;
    private int ika;
}
* With this specification nimi and ika are capsulated inside the object
* When you want to create your own object (for example Henkilo) it happens as follows:
* Henkilo nimi = new Henkilo("Suen Tassu");

* Next you need the constructor:
public class Henkilo {
    private String nimi;
    private int ika;

    public Henkilo(String nimiAlussa) {
        this.ika = 0;
        this.nimi = nimiAlussa;
    }
}
* this. command means that in this particular object the attribute gets this particular value
* next we need to add methods for the object. It works as we have already done
* expect that static is not used with classes
* there can be several simultaneous constructors in the same class
* The parameter types must differ
* Here is how it is possible to shorten the expression:
* public Henkilo(String nimi) {
    this(nimi, 0);  // suorita tässä toisen konstruktorin koodi ja laita ika-parametrin arvoksi 0
}

public Henkilo(String nimi, int ika) {
    this.nimi = nimi;
    this.ika = ika;
    this.paino = 0;
    this.pituus = 0;
}
* The same thing can be done also with methods.
* Example below:
* public void vanhene() {
    this.ika = this.ika + 1;
}

public void vanhene(int vuodet) {
    this.ika = this.ika + vuodet;
}

### Object oriented programming
* In prosedural programming where the flow is organised in smaller parts, methods, that do their bit
* With objects the idea is kind of the same. ArrayLists are objects
* Java includes toString method:
public String toString() {
        return this.nimi + ", ikä " + this.ika + " vuotta";
    }
* if you System.out.println(class); it returns the same as System.out.println(class.toString());
* Object oriented programming is about capsulating the concepts into their own objects


### Random numbers
* import java.util.Random;
...{
Random rands = new Random();
rands.nextInt(10); gives the random number between 0-9
}


	

