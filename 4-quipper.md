## Quipper

A Quipper nyelvet 2013-tól kezdték el fejleszteni több ember közreműködésével. A Quipper tulajdonképpen Haskell könyvtárak és segédprogramok gyűjteménye, aminek felhasználásával készíthetünk Haskell nyelven írt kvantumprogramot. Számtalan kvantum programozással kapcsolatos műveletet, típust, eljárást biztosít a Quipper a fejlesztő számára, illetve sok, előre megírt algoritmus található benne. A Quipper képes szimulációra, a leírt kapuk/adatokról képeket készíteni. Ebben a fejezetben az utóbbival foglalkozunk csak.

A Haskell egy funkcionális programozási nyelv, ami azt jelenti, hogy a leírt műveletek nem egymás után, szekvenciálisan hajtódnak végre (mint pl. egy C vagy Java nyelvben), hanem jellemezhetjük a dolgokat, majd ennek a leírásnak segítségével, amint szükség van rá, a számítógép kikalkulálja az eredményt. A szekvenciális programozás esetében azt mondjuk meg a gépnek, hogy mit csináljon, funkcionális programozás esetében viszont csak azt, hogy hogyan tudja az eredményt megkapni amikor kell. Ez a két programozási módszer lényegesen eltér egymástól, nehéz a kettő közti váltás a fejlesztők számára. Néhány klasszikus számítógép támogatja CPU szinten a funkcionális végrehajtást, de többnyire a funkcionálisan leírt programok is speciális, szekvenciálisan végrehajtott programokká fordulnak  számítógépeken.

Kvantumszámítógépek esetében viszont más a helyzet. A funkcionális nyelv alkalmazása, és a hálózati kép kimenet nem véletlen: jól mutatja, hogy a kvantum programok jelenleg eltérnek a klasszikus programoktól, amiknek többsége szekvenciálisan, előre nem látható műveleteket hajthat végre, a kvantum programok többsége viszont vezetékekkel összekapcsolt kapuk sorozatából áll (másként mondva operátorokat alkalmazunk egymás után), ennek a hálózatnak az elkészítése időfüggetlen. A kvantum programok hasonlítanak a klasszikus, elektronikus hardverekhez, az áramkörök leírására is funkcionális nyelvet szokás használni: két komponens közti kapcsolat leírásánál nem azt mondjuk meg, mit csináljon a program, hanem csak jellemezzük a kapcsolatukat, a végeredményként létrejött áramkör már magától tud működni megfelelően.

A Quipper programokat egy `quipper` script futtatásával lehet lefordítani. Ez a script néhány beállítás hozzáadása után továbbítja a kódot a Haskell fordítójának. Eredményként egy futtatható állományt kapunk, ami pl. szimulációt, vagy képgenerálást végezhet el. Ha felhasználjuk a `Preview`-t, akkor az Adobe Acrobat Reader-ben megnyílik a generált hálózat ábrája.

Ez a generált hálózati ábra a megszokott formában tartalmazza a kvantum hálózatot. A létrehozott qbiteket vezetékek reprezentálják. A qbiteken végrehajtott operációkat különféle szimbólumokkal, többnyire egy négyszög dobozzal jelölik. A négyszög azokat a vezetékeket érinti, amin végrehajtódik az operáció. Az ábrát balról jobbra kell értelmezni, az x tengely a végrehajtási sorrendet jelöli. Kezdetben az alapállapotoktól indulunk, majd az operátorokon keresztül eljutunk egy végállapotba, amikor is megmérjük a qbitet, és a mért adattal további műveleteket hajthatunk végre. A mérés utáni adatfolyamot dupla vonalas vezeték jelzi, itt az adat értéke klasszikus állapot, míg a kvantumbitek között egyszeres vonal található.

A Quipper lehetőséget ad a kép testreszabására pl. kommentek, feliratok elhelyezésével, elhelyezések módosításával. A hálózati elrendezés nagy része azonban generált pozíció szerint működik.

A programot előre megadott típusokból, emőre megadott műveletek felhasználásával írhatjuk meg Haskell nyelven, illetve tetszőlegesen kiegészíthetjük saját értékekkel, műveletekkel. A Hasekll ismerete után a Quipper elemeinek megértése nem okoz nehézséget. Az elemek listája megtalálható a [hivatalos dokumentációban][2]. Aki nem jártas a Haskell használatában, nem ismeri a funkcionális programozást, ajánlott a [Learn You a Haskell for Great Good!][3] című könyv átolvasása - már csak a humoros írásmód miatt is. A Haskell megtanulása talán nehézkes lehet, ugyanakkor használata sok dolgot megkönnyít.

#### A Deutsch–Jozsa algoritmus leírása Quipper nyelven

_Megjegyzés:_ A példaprogram a [Five Quantum Algorithms Using Quipper][1] című rövid útmutatóból származik, annak egyszerűsített változata.

{% include_relative assets/code/DeutschJozsaTest.quipper.hs %}

Ha futtatjuk a programot, és a kiegyensúlyozott típust választjuk, a következő ábrát generálja a Quipper:

<img src="assets/images/quipper-balanced-output.svg" width="100%" alt="Quipper által generált kvantum-hálózat képe kiegyensúlyozott függvény esetében" />

Konstans típus esetén a kimenet:

<img src="assets/images/quipper-constant-output.svg" width="100%" alt="Quipper által generált kvantum-hálózat képe konstans függvény esetében" />

Úgy tűnhet, hogy ez a program mégsem oldotta meg a Deutsch–Jozsa problémát. Ez részben igaz is, mert szimulációt nem hajtottunk végre, az eredmény nem lett kiértékelve. Azonban ne felejtsük el, hogy a programok futtattásának pillanatában a kérdéses függvénynek ismertnek kell lennie minden esetben, így a függvény típusától függően kétféle hálózat lehetséges a válasz kikalkulálásának időpontjában. A Quipper erről a kétféle változatról készített pillanatképeket. Ha a generált hálózat alapján építenénk egy mini-kvantumszámítógépet, és elindítanánk, a helyes választ kapnánk vissza. Természetesen lehetséges olyan hálózati leírást is generálni a Quipper-rel, ami általánosságban írja le a problémát megoldó hálózatot, de ha ezt akarnánk megvalósítani, a mini-kvantumszámítógép építése közben már egyik vagy másik variációt kell választanunk.

#### Értékelés

- **Előnyök:** Kisméretű hálózatok, vagy hálózatok részleteinek szemléltetésére ábrák sokkal alkalmasabbak, mint programkódok. Ránézésre is egyből meg tudjuk mondani, melyik kvantumbiten milyen műveleteket végzünk el. Mivel a Quipper a Haskell nyelvre épül, annak a nyelvnek minden elemeét felhasználhatjuk, illetve aki jártas már a Haskell programozásban, nem kell új színtaktikát megtanulnia.
- **Hátrányok:** A generált ábrák kezelése kissé nehézkes, ugyanis nem közvetlenül fájlba menti le a PDF dokumentumot, hanem külső programmal nyitja meg. Az ábrákon sokszor nem lehet részleteket feltünteni, mert néha a hálózat túl nagy méretű, ami miatt kicsi lesz az ábra, vagy túl sok, össze-vissza kapcsolt műveletet hajtunk végre, ami miatt áttekinthetetlen lesz (hasonlóan a bonyolult nyomtatott áramkörök terveihez).

[1]: https://arxiv.org/pdf/1406.4481.pdf
[2]: https://www.mathstat.dal.ca/~selinger/quipper/doc/
[3]: http://learnyouahaskell.com/
