## A Quipper nyelv

A Quipper nyelvet 2013-tól kezdték el fejleszteni több ember közreműködésével. A Quipper tulajdonképpen egy Haskell könyvtár, aminek felhasználásával készíthetünk Haskell nyelven írt programot. Számtalan kvantum programozással kapcsolatos műveletet, típust, eljárást biztosít a Quipper a fejlesztő számára, illetve sok, előre megírt algoritmus található benne. A Quipper képes szimulációra, illetve a leírt kapuk/adatokról képeket készíteni. Ebben a fejezetben az utóbbival foglalkozunk csak.

A Haskell egy funkcionális programozási nyelv, ami azt jelenti, hogy a leírt műveletek egy egymás után, szekvenciálisan hajtódnak végre (mint pl. egy C vagy Java nyelvben), hanem jellemezhetjük a dolgokat, majd ennek a leírásnak segítségével, amikor szükség van rá, a számítógép kikalkulálja az eredményt. A szekvenciális programozás esetében azt mondjuk meg a gépnek, hogy mit csináljon, funkcionális programozás esetében viszont csak azt, hogy hogyan tudja az eredményt megkapni amikor kell. Ez a két programozási módszer lényegesen eltér egymástól, nehéz a kettő közti váltás a fejlesztők számára. Néhány számítógép támogatja CPU szinten a funkcionális végrehajtást, de többnyire a funkcionálisan leírt programok is speciális, szekvenciálisan végrehajtott programokká fordulnak klasszikus számítógépeken.

A funkcionális nyelv alkalmazása, és a hálózati kép kimenet nem véletlen: jól mutatja, hogy a kvantum programok jelenleg eltérnek a klasszikus programoktól, amiknek többsége szekvenciálisan, előre nem látható műveleteket hajthat végre, a kvantum programok többsége viszont vezetékekkel összekapcsolt kapuk sorozatából áll, ennek a hálózatnak az elkészítése időfüggetlen. A kvantum programok hasonlítanak a klasszikus, elektronikus hardverekhez, az áramkörök leírására is funkcionális nyelvet szokás használni.

A Quipper programokat egy `quipper` script futtatásával lehet lefordítani. Ez a script néhány beállítás hozzáadása után továbbítja a kódot a Haskell fordítójának. Eredményként egy futtatható állományt kapunk, ami pl. szimulációt, vagy képgenerálást végezhet el. Ha felhasználjuk a `Preview`-t, akkor az Adobe Acrobat Reader-ben megnyílik a generált hálózat ábrája.

Ez a generált hálózati ábra a megszokott formában tartalmazza a kvantum hálózatot. A létrehozott qbiteket vezetékek reprezentálják. A qbiteken végrehajtott operációkat különféle szimbólumokkal, többnyire egy négyszög dobozzal jelölik. A négyszög azokat a vezetékeket érinti, amin végrehajtódik az operáció. Az ábrát balról jobbra kell értelmezni, az x tengely a végrehajtási sorrendet jelöli. Kezdetben az alapállapotoktól indulunk, majd az operációkon keresztül eljutunk egy végállapotba, amikor is megmérjük a qbitet, és a mért adattal további műveleteket hajthatunk végre. A mérés utáni adatfolyamot dupla vonalas vezeték jelzi, itt az adat értéke klasszikus állapot, míg a kvantumbitek között egyszeres vonal található.

A Quipper lehetőséget ad a kép testreszabására pl. kommentek, feliratok elhelyezésével, elhelyezések módosításával. A hálózati elrendezés nagy része azonban generált pozíció szerint működik.

#### A Deutsch–Jozsa algoritmus leírása Quipper nyelven

_Megjegyzés:_ A példaprogram a [Five Quantum Algorithms Using Quipper][1] című rövid útmutatóból származik, annak egyszerűsített változata.

```haskell
import Quipper

deutsch_jozsa_circuit :: (([Qubit], Qubit) -> Circ ([Qubit], Qubit)) -> Circ [Bit]
deutsch_jozsa_circuit oracle = do
    top_qubits <- qinit (replicate 2 False)
    bottom_qubit <- qinit True
    
    mapUnary hadamard top_qubits
    hadamard_at bottom_qubit
    
    comment "before oracle"
    oracle (top_qubits, bottom_qubit)
    comment "after oracle"
    
    mapUnary hadamard top_qubits
    
    (top_qubits, bottom_qubit) <- measure (top_qubits, bottom_qubit)
    cdiscard bottom_qubit
    return top_qubits

main = do  
    putStrLn "Choose oracle type [constant/balanced]:"
    oracle_type <- getLine
    if oracle_type == "constant"
        then print_generic Preview (deutsch_jozsa_circuit constant_oracle_function)
        else print_generic Preview (deutsch_jozsa_circuit balanced_oracle_function)
        where
            constant_oracle_function (ins,out) = do
                return (ins, out)
            
            balanced_oracle_function ([x,y],out) = do
                qnot_at out `controlled` x
                qnot_at out `controlled` y
                return ([x,y],out)
```

Ha futtatjuk a programot, és a kiegyensúlyozott típust választjuk, a következő ábrát generálja a Quipper:

<img alt="Quipper által generált kvantum-hálózat képe kiegyensúlyozott függvény esetében" src="quipper-balanced-output.svg" width="100%" />

#### Értékelés

- **Előnyök:** Kisméretű hálózatok, vagy hálózatok részleteinek szemléltetésére ábrák sokkal alkalmasabbak, mint programkódok. Ránézésre is egyből meg tudjuk mondani, melyik kvantumbiten milyen műveleteket végzünk el. Mivel a Quipper a Haskell nyelvre épül, annak a nyelvnek minden elemeét felhasználhatjuk, illetve aki jártas már a Haskell programozásban, nem kell új színtaktikát megtanulnia.
- **Hátrányok:** A generált ábrák kezelése kissé nehézkes, ugyanis nem közvetlenül fájlba menti le a PDF dokumentumot, hanem külső programmal nyitja meg. Az ábrákon sokszor nem lehet részleteket feltünteni. Néha a hálózat túl nagy méretű, ami miatt kicsi lesz az ábra, vagy túl sok, össze-vissza kapcsolt műveletet hajtunk végre, ami miatt áttekinthetetlen lesz (hasonlóan a bonyolult nyomtatott áramkörök terveihez).

[1]: https://arxiv.org/pdf/1406.4481.pdf
