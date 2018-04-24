# Tartalomjegyzék
1. [Bevezetés](#bevezetés)
2. [Kvantumprogramok felépítése](#kvantumprogramok-felépítése)
3. [Kvantum programozási nyelvek](#kvantum-programozási-nyelvek)
   3.1. [Kvantum pszeudokód](#kvantum-pszeudokód)
   3.2. [QCL](#qcl)
   3.3. [Quipper](#quipper)
   3.4. [Q#](#q)


# Bevezetés
#### A programok rövid története

A szoftverfejlesztés viszonylag új szakterület. A programozás ágazat kezdete megközelítőleg az 1950-es évekre rakható. Az ipari forradalmaknak köszönhetően ekkorra már fejlett gépek, elektronikus technológiák álltak a szakemberek rendelkezésére a számítógépek megépítéséhez, kezdődhetett a programnyelvek, szoftver tervezési folyamatok célzott, irányított létrehozása. A programozás bő fél évszázados múltja alatt ezek drasztikusan átalakultak, a hatékonyságok és komplexitásuk sokszorosára fejlődött, a folyamatok kiszámíthatóbbak, gördülékenyebbek lettek. Kezdetben csak 1-1 művelet sikeres, automatizált végrehajtása volt a cél, napjainkban azonban számos más dolog is fontos. Voltak programnyelvek, amik hibásan lettek megtervezve, használatuk túl bonyolult volt emberek számára, nehéz volt leírni bennük komplex rendszereket, feladatokat, nem alkalmazkodtak a fejlesztendő program struktúrájához. Ezekből sokat tanultunk, a tapasztalataink alapján újabb és újabb rendszereket fejlesztettünk ki. Manapság már óriási szoftvereket építünk, bonyolult algoritmusokat hozunk létre, számtalan mérnök foglalkozik egyszerre a feladattal, az elkészült programoktól pedig emberéletek függhetnek. Egyre rövidebb idő alatt, egyre nehezebb programot, egyre kevesebb pénzből kell fejlesztenünk, alkalmazkodva a kor elvárásának.

A klasszikus, elektronikus számítógépek azonban kezdenek csúcspontjukhoz jutni. Egy idő után már nem lehet gyorsaságukon fejleszteni, a technológia eléri határait, az algoritmusokat nem lehetséges tovább optimalizálni. Pedig rohamos igény lenne még a programok hatékonyságnövelése iránt, hiszen csak mostanában kezd igazán teret hódítani pl. a rengeteg számítást igénylő mesterséges-intelligencia, vagy az egyre élethűbb kinézetű videójátékok, a tömérdek adat feldolgozása. Emiatt számtalan kutató cég foglalkozik azzal, hogy létre tudják hozni az elektronikus technológia utódját, a kvantummechanikára alapozó kvantum-számítógépet. Ezek az új gépek lényegesen más módszerekkel dolgoznak, elvi teljesítményük sokszorosa az elektronikus gépeknek.

A kvantum-programozás területe mostanában kezd megszületni. Napjainkban a kvantum-számítógép még fejlesztés alatt áll, messze vagyunk attól, hogy használatuk olyan széles körben elterjedt legyen, mint a mostani elektronikus személyi, vagy szerver oldali számítógépeké. Ennek ellenére egyre több és több kvantum-programozási nyelv jelenik meg, számtalan olyan algoritmust megterveztek már, amit később kvantum-számítógépeken akarnak futtatni.

#### Igény a kvantum programokra

Mi értelme van kvantum-programokat fejleszteni, ha még nem is igazán tudjuk min végrehajtani ezeket a programokat? A klasszikus programozás fejlődése során rájöttünk, hogy sok elmélet hibás, és ezek a hibák csak elterjedt használatuk után derültek ki, rengeteg kárt okozva a fejlesztőknek és felhasználóknak. Sok, korábban hatékonynak hitt algoritmushoz találtak annál sokkal gyorsabb, kevesebb memóriaigényű stb. változatot, biztonságosnak hitt protokollokban találtak támadható pontot. Mivel a kvantumszámítógépnek nagy jövőt jósolnak, tudhatjuk, hogy a közeljövőben valós igény lesz a kvantum-programokra. Annak érdekében, hogy minimalizáljuk a hibás elméletek és fejlesztési módszerek elterjedését, vagy éppen felfedezzük, később mit tudunk még alkalmazni, a kvantumszámítógépekre szánt programok fejlesztése már most is elkezdődött. A sok évtizedekig tartó algoritmusok, protokollok fejlesztése és ellenőrzése már most is lehetséges. Szükséges, hogy találjunk olyan módszereket, amik leválthatják azokat az eljárásokat, amiket napjainkban használunk a klasszikus számítógépeknél, de egy kvantum-számítógépnek gyerekjáték lenne megkerülnie, hogy ha üzembe tudnak már helyezni nagyszámú kvantum-számítógépet, a szolgáltatások továbbra is működőképesek maradhassanak. Ilyen pl. a titkosított kommunikációra használt RSA algoritmus, ami az elektronikus számítógépeknél még kellő védelmet ad, de ha a kvantum-számítógépek elterjednek, már nem lehetne az interneten biztonságosan fizetni. Mivel azonban nem akarunk lemondani a biztonságos internetes fizetésről, más módszereket kell felkutatnunk, amik matematikailag bizonyítottan biztonságosak tudnak maradni a jövőre nézve is.

#### A klasszikus és kvantum programok jövője

A kvantum-számítógépek megjelenésével nem érdemes eltemetni az elektronikus számítógépeket. Várhatóan a két technológia nem lecseréli egymást, hanem együtt működnek tovább. Nem éri meg ugyanis minden feladatra a (most még) méregdrága csúcstechnológiát használni. Vegyünk például egy kézi számológépet. Igaz ugyan, hogy nem tud egy nagyon bonyolult, 100 sort elfoglaló egyenletet több millió tizedesjegy pontosságú eredményét kikalkulálni egy szempillantásnyi idő alatt, na de kinek lenne erre igénye? A grafikus kártyák teljesítménye és a monitor frissítési gyorsasága se teszi lehetővé (jelenleg), hogy másodpercenként több millió, teljesen élethű képkockát megjelenítsen egy program, azonban tudjuk, hogy az emberi szem nem is lenne képes értelmezni ezt a sok részletes információt kellő gyorsasággal. Egy táblázatos adminisztrátori program működésére nem lenne hatással, ha azt kvantumszámítógépen futtatnánk. A kvantum-programokat számításigényes (és ebből adódóan időigényes) feladatoknál éri meg használni. Nem meglepő, hogy a jelenleg elérhető kvantum példaprogramok közül sok ilyen eseteket ír le.

Többnyire a kényelmes, emberek által jól értelmezhető programnyelveketben megírt feladatokat le kell fordítani egy, a gép, vagy az azon futó platform által közvetlenül, egyszerűen értelmezhető, optimalizált formára. Problémát jelent ugyanakkor, hogy még nem nagyon tudjuk, milyen lesz a kvantum-számítógépek interfésze, azaz, hogy hogyan lehet hozzáférni kívülről. Jelenleg 1-2 gyártó rendelkezik kísérleti kvantum-számítógéppel. Mint az várható minden felfedezés esetében, ebben a fázisban nem a kényelmes használatra koncentrálnak, hanem a működés elérésére. Így volt ez a klasszikus számítógépek esetében is: kezdetben minimális utasításkészletet támogattak a processzorok, de új igények jelentek meg, így kevésnek bizonyultak. Ma már számtalan utasításkészlet érhető el, ám kompatibilitási okok miatt az x86 architektúra mégis elterjedt maradt, a teljesítmény rovására. Remélhetőleg, a kvantum számítógép- és programnyelv tervezők tanulni fognak ebből az esetből, számolnak azzal, hogy a kísérletek után sok változásra kell felkészülniük.

Ha a kvantumszámítógép elérhető lesz, a kvantum programnyelvek nagy lendületet fognak kapni. Új fejlesztőkörnyezeteket hoznak létre, vagy ha lehetséges, beépítik a már meglévő rendszerekbe a kvantum programok készítéséhez szükséges eszközöket. Várhatóan lesznek próbálkozások arra, hogy egyes programnyelveket kiterjesszék a kvantum programok világára is, hogy a fejlesztők egységes nyelven tudjanak fejleszteni a kettő között, ne kelljen külön megtanulni a sok dologban hasonlító eljárásokat. A jelenlegi szimulátorokat leváltják majd a valós fordítóprogramok.

# Kvantumprogramok felépítése

_Megjegyzés:_ A programok leírását, értelmezését lehetővé tevő nyelveket típusuk szerint különféle kategóriákba soroljuk, és emiatt eltérően is hívjuk őket (pl. a [HTML][1] jelölő, a [Java][2] programozási, a [VHDL][3] hardverleíró nyelv, az [x86][4] pedig egy utasításkészlet), noha programokkal kapcsolatos területen használjuk fel őket. A továbbiakban a "kvantum programozási nyelv" főleg csak a kvantumszámítógépekkel és programokkal kapcsolatba hozható jellemzésre használt, nem pedig a nyelv céljának, típusának meghatározására.

#### Eltérések a klasszikus és kvantum műveletei programok között
> Speciális kapuk használata, qbitek elérése, mérési pontatlanság, párhuzamosság, több adat egyben kezelve.

#### Kvantum programozási nyelvek csoportosítása

Bár még jóval kevesebb nyelvet készítettem a kvantum programokhoz, mint a klasszikus programokhoz, már most is elég sok kategóriát lefednek az elérhető nyelvek, így különféle területeken, különféle feladathoz lehet őket felhasználni:

- Lehetnek alacsony vagy magas szintűek. Többnyire egy alacsony szintű nyelv szorosan kötődik a számítógéphez, vagy annak interfészéhez/utasításkészletéhez, a leírás elemi műveleteket tartalmaz, amit a számítógép akár közvetlenül is tudna értelmezni. Alacsony szintű leírásra alkalmas a [QASM][5], és a [Quil][6] nyelv.
- Egy részük hardverleíró nyelv. Ezek a nyelvek azt fogalmazzák meg, milyen alkatrészekből lehet felépíteni a hálózatot, hogyan kapcsolódnak egymáshoz az eszközök. A nyelv elemeinek konkrét fizikai jelentésük van. Ilyen pl. a QASM.
- A nyelv feldolgozásának eredménye alapján lehet szimulációs (mint pl. a [Q#][7] vagy [libquantum][9] esetében), gráfmodellt vagy hálózatképet megjelenítő (pl. [Quipper][8], vagy csak simán emberek számára tájékoztató, pszeudokód-szerű.
- A nyelv belső felépítése szerint lehet egyszerű műveleteket leíró, kevés absztrakciót használó, mint a [QCL][10], vagy pl. objektum-orientált (többé-kevésbé erre törekszik a Q# nyelv).
- Mintájuk alapján lehetnek pl. funkcionálisak vagy szekvenciálisak, kombináltak stb.
- Épülhetnek korábban már elkészített nyelvekre (pl. a Quipper egy kiegészítése a [Haskell][11] nyelvnek, a [kvantum pszeudokód][12] kiegészítése a hagyományos pszeudokódnak), vagy lehetnek teljesen újonnan felépítettek.

# Kvantum programozási nyelvek

Ebben a fejezetben néhány, egymástól eléggé eltérő kvantum programozással kapcsolatos nyelvet ismerhetünk meg. Az összehasonlíthatóság érdekében mindegyik nyelvnél találunk egy példát, ami a jól ismert Deutsch–Jozsa algoritmust mutatja be.

A feladat a következő: Adott egy függvény, _`f(x)`_, amiről csak annyit tudunk, hogy néha egy konstans értéket rendel a bemenethez, máskor viszont úgy viselkedik, mint egy pénzfeldobás: az esetek felében _`a`_, másik felében _`b`_ értéket rendel a bemenethez. Határozzuk meg, egy konkrét esetben _`f`_ melyik szabály szerint működik!

A feladat megoldása egy egyszerű Java programban:

> Ez még lehet nem azt csinálja amit kéne.

```java
package DeutschJozsaTest;

import java.util.Random;
import java.util.function.IntUnaryOperator;

public class Main {
    public static void main(String[] args) {
        IntUnaryOperator function;
        int constantValue = new Random().nextInt(2);
        if (args[0].equals("constant"))
            function = (x) -> constantValue;
        else
            function = (x) -> (x + constantValue) % 2;

        int n = Integer.parseInt(args[1]);
        int result = 0;
        for (int i = 0; i < n/2+1; ++i)
            result += function.applyAsInt(i);
        
        String type = ((result == 0 || result == n/2+1) ? "constant" : "balanced");
        System.out.println("Function is " + type + ".");
    }
}
```


[1]: https://www.w3.org/TR/html5/
[2]: https://docs.oracle.com/javase/specs/
[3]: https://ieeexplore.ieee.org/document/4772740/
[4]: https://software.intel.com/en-us/articles/intel-sdm
[5]: https://arxiv.org/abs/1707.03429
[6]: https://arxiv.org/abs/1608.03355
[7]: https://docs.microsoft.com/en-us/quantum/index?view=qsharp-preview
[8]: https://www.mathstat.dal.ca/~selinger/quipper/
[9]: http://www.libquantum.de/
[10]: http://tph.tuwien.ac.at/~oemer/qcl.html
[11]: https://www.haskell.org/
[12]: https://pdfs.semanticscholar.org/60d1/e63ca31555ec7013c5eb9a8a63788398fd14.pdf
