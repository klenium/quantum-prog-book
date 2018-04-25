<h2 id="q-sharp">Q#</h2>

A Q# nyelvet 2017 végén mutatta be a Microsoft, jelezve, hogy a cég a későbbiekben nagy figyelmet fog fordítani a kvantumprogramozásnak. A [Microsoft Quantum Development Kit][2] nagyban épít már korábban kifejlesztett és bevált technológiákra, mint pl. a C# nyelv, a Visual Studio fejlesztőkörnyezet. A Q# nyelv sok sajátosságot mutat más, főleg C# és F# nyelvekkel, ami könnyebbé teszi a szintaktika megértését, gyorsítva ezzel a fejlesztési folyamatot. Viszonylag gazdag elemekkel rendelkezik, a benne leírt algoritmusok könnyedén felismerhetők.

Jelenleg a Microsoft Quantum Development Kit, és azon belül a Q# nyelv egy Visual Studio kiegészítőként telepíthető. Ez egy kifejlett fejlesztőeszköz, amit a Microsoft már 1997 óta fejleszt, sok változáson ment keresztül. Eddigiekben főleg C++ és .NET fejlesztésre használták, de az eszköz számtalan más nyelvet képes kezelni.

Ez a kiegészítő még nem túl fejlett, ami nem meglepő, tekintve, hogy kb. fél éve jelent meg. A helyes működésre helyezték a legnagyobb hangsúlyt, az automatikus kiegészítés, hibák azonnali kijelzése, tippek megjelenítése - ahogy az ma már elvárható egy kompakt fejlesztőeszköztől - még csak kezdetlegesen érhető el. Várhatóan a közeljövőben ezt fejleszteni fogják, amint igény mutatkozik a Q# nyelv használata iránt, illetve az alap nyelvi elemeket sikerül hibátlanra, könnyen használhatóra alakítani.

A Microsoft kvantum fejlesztőcsomagjában a szimuláció és a kvantum program leírása élesen elkülönül. A szimuláció C# nyelven lehetséges - itt fel lehet használni a C# nyelv tetszőleges elemét, ami nagy szabadságot ad a fejlesztők számára, a tesztesetek lehetnek nagyon komplexek is, illetve könnyű a külvilággal kommunikálni (pl. megjeleníteni az eredményt). A két nyelv párhuzamos használata jól mutatja a :NET keretrendszer egyik fő jellemzőjét, mégpedig a nyelvfüggetlenséget: a különböző nyelvekben leírt dolgok egyező névtérben vannak, így elérhető az egyik a másikból fennakadás nélkül, a fordító elvégzi a szükséges konverziókat.

A kvantum programokat egy `.qs` kiterjesztésű fájlokban kell megírni Q# nyelven. Ebbe a fájlba több operációt és függvényt, típusokat és értékeket írhatunk le. A kvantum programnak van egy belépő, más nyelvekből `main`-ként ismert pontja, ahol a bemeneti paramétereket várja, illetve visszatérési értéke megadja a kvantum program eredményét. Ezek tetszőleges értékeke lehetnek, így a klasszikus programból bármilyen adat átvihető a kvantum programba. Természetesen a kvantum programból nem vihető ki a klasszikus programba kvantum bitek és regiszterek, csak azoknak mért eredményei.

A Q# típusrendszere klasszikus (pl. `Int`, `Bool`), és kvantum (`Qubit`, `Result`), és további segédtípusokat (pl. operációk, generikus, saját típusok) különböztet meg. A klasszikus típusok lehetővé teszik a két program közti kommunikációt, illetve az algoritmusok beállításait (pl. a qregiszter elemeinek számát megadhatjuk egy `Int` típussal). A qregiszterek `Qubit` tömbökből állnak. A qbiteket az operáció elején le kell foglalni, majd végén visszaállítani 0 fázisba, és elengedni őket. A foglalás és elengedés között tetszőleges transzformációkat, méréseket alkalmazhatunk a qbiteken. Számtalan, előre definiált segédoperáció érhető el a `Microsoft.Quantum` névtér alatt, amiket felhasználva gyakori műveleteket gyorsan tudunk elvégezni. Ilyenek a gyakran használt unitér operátorok, illetve a kapuk több qbiten való végrehajtását lehetővé tevő `ApplyToEach` függvény, vagy a hibakeresésre használható `AssertQubit` művelet.

Ellentétben a hagyományos programozási nyelvekkel, a Q#-ban egy operációnak több "belseje" is lehet. Ugyanis ha az operációnak nincs visszatérési értéke, akkor megadhatjuk az adjoint (megfordított) és a controlled (irányított), illetve ezek ötvözésének viselkedését is. Többnyire a fordító elég okos ahhoz, hogy ezeket a viselkedéseket a rendes viselkedésből kikövetkeztesse (mivel a legtöbb alap kapu maga is unitér operátor, így megfordítható és irányítható), de ha mégse, vagy hatékonyságnövelés miatt szükséges, megadhatjuk mi is mindegyiket külön-külön.

A Q# kétféle típusú változókat különböztet meg:
1. Mutable: Az ilyen változók deklarálása a `mutable` kulcsszóval lehetséges. A benne tárolt adat később megváltoztatható, a `set` kulcsszó felhasználásával. Ilyen típusúnak érdemes választani pl. a mérési eredményeket tároló tömböt: elsőnek lefoglaljuk a tömböt, majd minden mérési eredményt beleírunk.
2: Immutable: Ezek a `let` kulcsszóval deklarálhatók. A későbbiekben nem rendelhető hozzájuk másik érték. Ilyen típusúnak érdemes választani a konstans paramétereket (mint pl. az algoritmusban használt qbitek száma), a köztes állapotokban qbitek azonosítására használt változókat (ebben az esetben a qbit értéke megváltozhat, de az, hogy az immutable változó melyik qbitre hivatkozik, az nem).

A mérések eredménye `Result` típusú változóban tárolódik. Egy ilyen típusú változó értéke `One` vagy `Zero` lehet. Ezek az értékek nem 1 és 0 számokat jelölnek! Noha természetesen ha a mérési eredmény értéke 1, akkor a változó `One`-t fog tárolni, azonban ha a qbit együtthatója nem pontosan 1, a program (az alkalmazott mérési operátornak megfelelően) dönti el, melyik klasszikus bitre alakítja át a kvantumbit értékét.

A Q# nyelv további elemei könnyen értelmezhetőek, ha már van ismeretünk más programozási nyelvekben. A teljes lista megtalálható a [hivatalos dokumentációban][2].

Egy tipikus Q# nyelven leírt program felépítése:

1. Felhasznált névterek megadása az `open` kulcsszóval.
2. Segéd- és főoperátorok deklarálása.
3. Az operációkban lefoglaljuk a szükséges qbiteket.
4. Végrehajtjuk a kívánt műveleteket.
5. Ha kell, elvégezzük a méréseket a qbiteken.
6. A mérési eredmény alapján kikalkuláljuk a kívánt eredményt, esetleg további műveleteket végzünk el.
7. Alaphelyzetbe állítjuk a qbiteket.
8. Átadjuk a klasszikus programnak a kvantum program eredményét.

#### A Deutsch–Jozsa algoritmus leírása Q# nyelvben és tesztelése C# nyelven

_Megjegyzés:_ A példaprogram a [hivatalos Q# repository][1]-ből származik, annak egyszerűsített változata.

Tesztelésre használt szimuláció:

{% highlight C# %}
using Microsoft.Quantum.Simulation.Core;
using Microsoft.Quantum.Simulation.Simulators;

namespace DeutschJozsaTest
{
    class Driver
    {
        static void Main(string[] args)
        {
            var sim = new QuantumSimulator(throwOnReleasingQubitsNotInZeroState: true);

            bool isConstant = new System.Random().Next(0, 2) == 0;
            System.Console.WriteLine("The function operates as " + (isConstant ? "constant" : "balanced") + ".");

            // Manuálisan megadjuk, a függvény melyik esetekben ad vissza 0-t vagy 1-et.
            var onesForConstant = new QArray<long> { 0, 1, 2, 3 };
            var onesForBalanced = new QArray<long> { 1, 2 };
            var oneValues = isConstant ? onesForConstant : onesForBalanced;
            var result = DeutschJozsaTestCase.Run(sim, 2, oneValues).Result;

            System.Console.WriteLine("Detected function as " + (result ? "constant" : "balanced") + ".");
            System.Console.ReadLine();
        }
    }
}
{% endhighlight %}
 
Az algoritmust leíró kvantum program:
 
{% highlight C# %}
namespace DeutschJozsaTest {
    open Microsoft.Quantum.Primitive;
    open Microsoft.Quantum.Canon;
    
    operation DeutschJozsaTestCase(n : Int, markedElements : Int[]) : Bool {
        body {
            mutable resultArray = new Result[n];
            using (qubits = Qubit[n + 1]) {
                // Az utolsó qbit-et 1-re állítjuk.
                X(qubits[n]);
                
                ApplyToEach(H, qubits);
                
                let target = qubits[n];
                let inputs = qubits[0..n-1];
                for (idxMarked in 0..Length(markedElements)-1) {
                    // Létrehozzuk és futtatjuk a függvényt, aminek hozzárendelési szabályát előre megadjuk.
                    (ControlledOnInt(markedElements[idxMarked], ApplyToEachCA(X, _))) (inputs, [target]);
                }
                ApplyToEach(H, qubits[0..(n-1)]);
                
                for (idx in 0..(n - 1)) {
                    set resultArray[idx] = MResetZ(qubits[idx]);
                }
                Reset(qubits[n]);
            }

            // A függvény létrehozása miatt ebben a tesztben akkor konstans f, ha minden mérési
            // eredmény 0. Át lehet alakítani a függvény létrehozását úgy, hogy az eredeti formát
            // visszakaphassuk, ahol f akkor konstans, ha a mérési eredmény 1 vagy -1. Ez ugyanakkor
            // a végrehajtott műveleteket számottevően nem befolyásolja.
            return ForAll(IsResultZero, resultArray);
         }
    }
}
{% endhighlight %}

#### Értékelés
- **Előnyök:** Nagyon kényelmes, hogy a szimuláció és a kvantum program leírása elkülönül. Főleg, mert így ha elérhetővé válik a kvantumszámítógép, lehetőség lesz a szimuláció egyszerű eltávolítására. A Q# színtaktikája könnyedén értelmezhető azok számára, akik dolgoztak már C# vagy hasonló nyelvekkel, ami gyorsítja a tanulást. Várhatóan a Microsoft sokáig fejleszteni fogja a nyelvet, mint ahogy teszi azt a C# esetében is, ami napjainkban talán a legmodernebb klasszikus programozási nyelvnek mondható. A Visual Studio használatával nagyon gyors és egyszerű a szimulációk lefuttatása, kényelmesen dolgozhatunk a már megszokott fejlesztőkörnyezetben.
- **Hátrányok:** A Microsoft Quantum Development Kit még csak fél éve jelent meg. Érezhető, hogy kezdeti fázisban van a fejlesztés. Bár működőképesek a programok, a fejlesztőeszköz, és a nyelvi elemek, elérhető segédoperációk használata kevésbé kifinomult, hosszú távon még sok fejlesztést igényelnek.

[1]: https://github.com/Microsoft/Quantum/tree/master/Samples/SimpleAlgorithms
[2]: https://docs.microsoft.com/en-us/quantum/?view=qsharp-preview
