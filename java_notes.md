## Java notes
These are some notes about Java for the course: ohjelmoinnin perusteet 


### Basic coding ideas:
* Etene pieni askel kerrallaan
** Yritä pilkkoa ongelma osaongelmiin ja ratkaise vain yksi osaongelma kerrallaan
** Testaa aina että ohjelma on etenemässä oikeaan suuntaan eli että osaongelman ratkaisu meni oikein
**Tunnista ehdot, minkä tapauksessa ohjelman tulee toimia eri tavalla. Esimerkiksi yllä tarkistus, jolla katsotaan onko sana jo syötetty, johtaa erilaiseen toiminnallisuuden.
* Kirjoita mahdollisimman "siistiä" koodia
** sisennä koodi
** käytä kuvaavia muuttujien ja metodien nimiä
** älä tee liian pitkiä metodeja, edes mainia
** tee yhdessä metodissa vaan yksi asia
** poista koodistasi kaikki copy-paste
** korvaa koodisi "huonot" ja epäsiistit osat siistillä koodilla

* kayta metodeja jasentamaan koodia ja "ratkaisemaan" pienia ongelmanpalasia
* jos metodit alkavat tehda liian monia asioita luettavuus karsii ja metodi on syyta 
jakaa osametodeiksi


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
	int a = 12, this can take values only to little over 2 billion
	long a = 12, this can take values to 10^17
	double b = 3.14
	class big decimal for big decimal numbers
	String c = "boo"; tai: String c = new String("boo");
	boolean d = true or false
	char var = 'a' tallentaa yksittaisen merkin
	int[] = {1,2,3}; is a list
* When using the doubles there is a possiblity that the rounding errors affect in 
suprising way. Use inequalities instead.
* sana.isEmpty() toimii String muuttujilla

* if the value changes there is no need for it
* int can be chnanged to double by adding (double) infront of it
* you can't mix the types. Except double can take also values that look like integers
* variables start always with small cap letters
* variable++ = variable + 1
* % is for remainder of the divisions
* variables do not exsist before they are declared
* variables exist also only inside the object they have been introduced

* alkeis- ja viitemuuttujat. Alkeismuuttujat sisaltavat arvon itsessaan, viitemuuttujat viittaavat esimerkiksi olion ilmentymaan.

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
* "\n" is same as pressing enter if you make some input for Scanner

* var++; variable's value can is incrreased by one
* var--; minus 1
* var += 10  on sama kuin var = var +10
* var -= 10  on sama kuin var = var -10
* toimii myos muille peruslaskutoimituksille
* merkkinjonon indeksointi alkaa nollasta
* Math.pow(kantaluku, exponentti); potenssi
* String.format("%.2f", luku) double with two decimals
* Calendar.getInstance().get(Calendar.DATE/MONTH/YEAR);
* String class commands:
	- .toLowerCase() makes all the latters lower case
	- .trim() removes extra spaces from the beginning and the end
* .getClass() returns the class of the object
* metodi compareTo: jos this.m - verrattava saadaan nuoseva jarjestys. verrattava - this.m saadaan laskeva
* String [] = rivi.split(":"); voidaan jakaa teksti osiin : merkin kohdalta


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
* String input = "lisaa\n"  + "juusto\n" +     "cheese\n" +
                   "lisaa\n"  + "olut\n"   +     "beer\n" +
                   "lisaa\n"  + "kirja\n"  +     "book\n" +
                   "lisaa\n"  + "tietokone\n" +  "computer\n" +
                   "lisaa\n"  + "auto\n"   +     "car\n" +
                   "lopeta\n";
* Scanner lukija = new Scanner(input) reads the inputed text
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
* static metodit liittyvat metodin sisaltamaan luokkaan ja ovat apumetodeja
* ei-static metodit ovat metodeja, joilla muokataan luokan ilmentymia
* static metodeja kaytetaan aina luokan nimen kautta, myos luokkakohtaisia muuttujia voidaan luoda
lisaamalla muuttujan eteen static
* final maare tarkoittaa, etta muuttujan arvoa ei voi myohemmin enaa muuttaa ja sen on aina sisallettava arvo
* ei-static muuttujat ovat olion muuttujia eli siis jokaisella oliolla on omat muuttujan arvonsa
* olion sisalla non-static muuttujia ja metodeja voi myos kutsua ilman olion nimea
* huomaa, etta metodien sisaiset muuttujat ovat vain metodin apumuuttujia, eivat oliomuuttujia
* public nakyy kaikille, private vain luokan sisalla


### Luokkakirjastot - class libraries
* such as Math.
* includes general methods and variables

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
* ArrayListin viite voidaan antaa esimerkiksi useaan HashMapiin. Kirjasto esimerkki, kirjat kirjan nimen tai ISBN mukaan
* Tallaisessa tapauksessa on kiinnitettava erityista huomiota, etta kokoelmien rakenne sailyy konsistenttian lisaysten ja poisojen yhteydessa.


### Hashmap - tietoparien tallentaminen, hajautustaulu
* HashMap<String, String> postinumerot = new HashMap<>();
* postinumerot.put("00530", "Helsinki"); lisaa avain - arvo parin olioon
* postinumerot.get("00530"); palauttaa arvon, johon liittyy avain "00530"
* postinumerot.isEmpty(); true if hashmap object is empty
* postinumerot.containsKey(whatever); true if the key is in the object
* Similarly as with ArrayList methods change the original hashmap object
* if you want to update value you need to get the old and add the change to it
* Hashmap is good way to store information when information is needed to retrieve often.
It is more efficient information structure when the searching the information than ArrayList
* the key to the efficiency gain is that we know what are used as a key
* to use for loop for all the keys in Hasmap you need to use .keySet() method
for (String avain : sanaparit.keySet()) {
    System.out.print( avain + " " );
}
* arvoksi voidaan tallentaa myos ArrayList


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


* public Class{
	private final variable;
This means that the value of the variable can't be changed after the class has been created
* Luokkakirjastot ks. ylla
* aksessori (accessor?) is a method that lets you read the value of a variable
* Geneerisyys. Luokille on mahdollista antaa parametrina vapaavalintaisen tyyppinen olio
esim. public class Luokka<T>{ private T alkio...}
* jos luokan metodin edesta jatetaan pois public tai private talloin kaikki pakkauksen luokat
voivat kayttaa metodia

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

### Reading files
* Reading text from file
* ArrayList<String> rivit = new ArrayList<>();

// luodaan lukija tiedoston lukemista varten
try (Scanner lukija = new Scanner(new File("tiedosto.txt"))) {

  // luetaan kaikki tiedoston rivit
  while (lukija.hasNextLine()) {
    rivit.add(lukija.nextLine());
  }
} catch (Exception e) {
  System.out.println("Virhe: " + e.getMessage());
}
* Reading integers from file
* ArrayList<Integer> rivit = new ArrayList<>();
        try (Scanner lukija = new Scanner(new File(tiedosto))) {
            while (lukija.hasNextLine()) {
                rivit.add(Integer.parseInt(lukija.nextLine()));
            }
        } catch (Exception e) {
            System.out.println("Virhe: " + e.getMessage());

* Reading webpages
* ArrayList<String> rivit = new ArrayList<>();

// luodaan lukija web-osoitteen lukemista varten
try (Scanner lukija = new Scanner(new URL("http://www.cs.helsinki.fi/home/").openStream())) {

  // luetaan osoitteesta http://www.cs.helsinki.fi/home/
  // saatava vastaus 
  while (lukija.hasNextLine()) {
    rivit.add(lukija.nextLine());
  }
} catch (Exception e) {
  System.out.println("Virhe: " + e.getMessage());
}
}

### Tables - taulukot
* int[] luvut = {100, 1, 42};
* they are immutable
* can contain all he types of variables;
* System.out.println(luvut[0]);  // tulostaa luvun taulukon indeksistä 0
* table.length gives the size of the table
* for each loop works as in ArrayLists
* vaihtoehtoinen tapa luoda taulukko:
 int alkioita = 99;
int[] taulukko = new int[alkioita];
* matriisi tyyppinen taulukko:
int rivit = 2;
int sarakkeet = 3;
int[][] kaksiulotteinenTaulukko = new int[rivit][sarakkeet];
* Tables can contain any type of objects

### static
* static methods are linked to a class
* static methods can handle only numbers that are given as parameters
* methods without static are linked to objects (i.e. needs to be used with objects)
* all methods that are suppose to change the state of an object should be written without static
* static methods are useful for example checking some features of the objects

### periytymisesta
* Esimerkiksi Object luokalla on olemassa kutsu toString()
tosin tama ei ole useinmiten se mita haluamme, mutta kun kirjoitamme metodin
@Override
public String toString(){
return "blaah, blaah"
}
* .equals() komento periytyy muillekin olioille. Mutta huomaa, etta se tarkastelee ovatko kaksi oliota samoja, EI ovatko olioiden sisallot samat!!!
* contains() metodi kayttaa .equals metodia ja se ei toimi oikein ellei sita aseteta luokkiin
tama on siis tarkeaa, jos haluataan kayttaa hakua ArrayListeilla
* hashCode() on sama jos halutaan kayttaa hashMapia, en ihan viela ymmartanyt tata, mutta se tuintui toimivan parhaiten kaytettyna String-muuttujille
* jos luokkaa halutaan kayttaa HashMap-avaimena, niin silloin equals() taytyy maaritella uudestaan siten, etta sisallollisesti samat oliot tuottavat true tuloksen ja hashCode() siten, etta saman sisaltoinen olio tuottaa saman arvon
* alaluokka subclass ja yliluokka superclass
* luokan ominaisuudet peritaan sanalla extends
* protected maare muuttujalle voidaan kaytta, kun halutaan alaluokkien nakevan muuttujan tai metodin
* super() kutsulla kutsutaan yliluokan konstruktoria ja muuttujat alustetaan. Toimii kuin this.

### Rajapinta - Interface
* public interface Nimi(), ovat kuin luokkia, mutta eivat aina sisalla metodien
toteutusta
* luokka voi kayttaa rajapinnan runkoa ja maaritella metodien toteutuksen (tama on pakko olla)
* public class Viesti implements Nimi{}
* alustettaessa muuttujaa myos rajapinnan nimea voidaan kayttaa muuttujat tyyppina
* tyyppimuunnos onnistuu vain jos muuttuja on oikeasti tyyppia
* Rajapinta voi olla myos paluuarvo ja nain ollen on mahdollista palauttaa rajapinnan toteuttavia luokkai ilman, etta itse luokka on varmuudella tiedossa
* Javassa on lukuisia valmiita rajapintoja. Esim. List, Map, Set, Collection
* kun luokka toteuttaa rajapinnan on mahdollista luokan kauttaa rajapintaa muuttujatyyppina, joka helpottaa ja antaa joustoa
* haettaessa luokkia, jotka on tallennettu rajapintana ne on kuitenkin muutettava haluttuun luokkaan ennen kasittelya
* luokka voi myos toteuttaa useampia rajapintoja (erotetaan pilkulla)
* Rajapintoihin voi myos ohjelmoida oletusmetodeja, joiden toteutus on myos annettu. Naiden maarittely aloitetaan avainsanalla default (tyypiltaan ne ovat automaattisesti public)

### List:
* ArrayList on yksi Listin toteutus
* ArrayList voidaan toteuttaa Listin kautta:
List<String> koe = new ArrayList<>();
* LinkedList<>() on toinen Listin toteutus


### Map:
* HashMap on Mapin toteutus
* HashMap on siis toteutettavissa Mapin kautta, kuten edella List ja ArrayList

### Set:
* Joukkoihin liittyvaa toiminnallisuutta
* Nayttaa vain uniikit alkiot
* Esim. HashSet() ja KeySet()
* Set joukon alkioihin voi kayttaa for-each looppia

### Collection:
* kuvaa kokoelmiin liittyvaa toiminnallisuutta
* List ja Set luokat ovat kokoelmia eli molemmat toteuttavat Collectionin
* Esim. contains() ja size() kuuluvat kokoelmiin
* for-each toimii kaikilla Collection rajapinnan luokilla

### Comparable:
* Geneerisyys hyodyntaa ko. rajapintaa
* Maarittelee kuinka oliot jarjestetaan

### Collections:
* Comparable ja Comparator ovat toteutuksia

### Single Responsibility Principle
* oliosuunnittelun periaate
* luokalla tulee olla VAIN yksi vastuu ja selkea tehtava
* usein on vaikea nahda suoralta kadelta, mika on hyva muoto ohjelmalle
mutta on ok muokata ohjelmaa jalkeenpain selkeampaan suuntaan

### Luokkien pakkaaminen kirjastoihin
* NetBeans: New -> Java Package..., johon voi luoda uusia paketteja
* koodin alkuun tulee: package kirjasto;
* pakkaukset voivat sisaltaa itsessaan pakkauksia
* talloin niita kutustan package kirjasto.toinen;
* pakkauksia voidaan ladata luokkien kayttoon import komennolla
* import kirjasto.toinen.Luokka;

### Poikkeustilanteet:
* Jos tulee poikkeus, niin ne voidaan yrittaa kasitella
try{} catch (Exception e) {} rakenteella
* try sisaltaa kutsun joka heittaa poikkeuksen ja catch maarittaa mita tehdaan sen jalkeen
* eli catch suoritetaan vain, jos try lohkon sisall oleva koodi ei toimi normaalisti
* metodit ja konstruktorit voivat heittaa poikkeuksia. Niita on kahdenlaisia: sellaisia joita on pakko kasitella ja sellaisia joita ei ole
* throws Exception metodin perassa heittaa poikkeuksen eteenpain metodin kutsujalle
* throws Excpetion on geneerinen muoto, joka ei maarittele virheen muotoa

### Tiedostojen lukeminen
* luokka File(String pathname)
* Scanner voi lukea myos tiedostoja
* jos filet on projectin juuressa, niin ne voidaan lukea vain tiedostonimella. Muuten tarvitaan koko polku
* Merkiston voi valita: new Scanner(file, "UTF-8");
* Scanner-luokan metodi .hasNext() kertoo onko tiedostossa viela seuraava rivi
* .next() palauttaa seuraavan sanan
* .nextLine() seuraavan rivin

### Olioiden tyypeista ja periytymisesta
* kaikki oliot ovat tyyppia Object ja ne voidaan esitella aina silla maaritteella
* tassa on siis kysymys periytymisesta. Esim. string perii Object luokan ominaisuudet, mutta ei toisinpain
* Aliluokat voivat kayttaa omia ylikirjoiettuja metodeja vaikka luokka olisi maaritelty superluokaksi, mutta aliluokkien omat metodit eivat ole talloin kaytossa
* perimisen kanssa on syyta olla tarkkana, ettei sita ylirakenna. Aliluokan on tarkoitus olla yliluokan erikoistapaus. Muista Single Responsibility Principle - SRP

### Abstraktit luokat:
* Niista ei itsessaan voi tehda ilmentymia
* sen aliluokista tehdaan ilmentymia
* avainsana: public abstract class Nimi
* verrattuna rajapintoihin erona on se, etta abstrakteihin luokkiin voidaan maaritella toiminnallisuutta

### FileWriter luokka:
* kirjoitetaan tiedostoon
* FileWriter k = new FileWriter("file.txt");
* k.write("kirjoita tama");
* k.close();
* on olemassa append, jolla lisataan tiedostoon, mutta usein on helpompaa vain luoda uusi tiedosto, johpon siirretaan tekstin sisalto

### Swing-kirjasto ja kayttoliittymakomponentit
* tarjoaa luokkia kayttoliittymakomponenttien luomiseen
* olio-muuttujia ei saa alustaa luokkamaarittelyssa. Vain metodien sisalla
* http://docs.oracle.com/javase/tutorial/uiswing/components/index.html
* JFrame() luo ikkunan
* JButton() luo painittkeita
* perusikkunan luomiseen tarvittava run() metodi
@Override
    public void run() {
        frame = new JFrame("Frame");
        frame.setPreferredSize(new Dimension(200, 100));

        frame.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);

        luoKomponentit(frame.getContentPane());

        frame.pack();
        frame.setVisible(true);
    }
* seuraavaksi pitaa luoda luoKomponentit metodi





	

