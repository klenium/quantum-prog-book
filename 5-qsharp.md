<h2 id="q-sharp">Q#</h2>

A Q# nyelvet 2017 végén mutatta be a Microsoft, jelezve, hogy a cég a későbbiekben nagy figyelmet fog fordítani a kvantumprogramozásnak. A [Microsoft Quantum Development Kit][2] nagyban épít már korábban kifejlesztett és bevált technológiákra, mint pl. a C# nyelv, a Visual Studio fejlesztőkörnyezet. A Q# nyelv sok sajátosságot mutat más, főleg C# és F# nyelvekkel, ami könnyebbé teszi a szintaktika megértését, gyorsítva ezzel a fejlesztési folyamatot. Viszonylag gazdag elemekkel rendelkezik, a benne leírt algoritmusok könnyedén felismerhetők.

Jelenleg a Microsoft Quantum Development Kit, és azon belül a Q# nyelv egy Visual Studio kiegészítőként telepíthető. Ez egy kifejlett fejlesztőeszköz, amit a Microsoft már 1997 óta fejleszt, sok változáson ment keresztül. Eddigiekben főleg C++ és .NET fejlesztésre használták, de az eszköz számtalan más nyelvet képes kezelni.

Ez a kiegészítő még nem túl fejlett, ami nem meglepő, tekintve, hogy kb. fél éve jelent meg. A helyes működésre helyezték a legnagyobb hangsúlyt, az automatikus kiegészítés, hibák azonnali kijelzése, tippek megjelenítése - ahogy az ma már elvárható egy kompakt fejlesztőeszköztől - még csak kezdetlegesen érhető el. Várhatóan a közeljövőben ezt fejleszteni fogják, amint igény mutatkozik a Q# nyelv használata iránt, illetve az alap nyelvi elemeket sikerül hibátlanra, könnyen használhatóra alakítani.

A Microsoft kvantum fejlesztőcsomagjában a szimuláció és a kvantum program leírása élesen elkülönül. A szimuláció C# nyelven lehetséges - itt fel lehet használni a C# nyelv tetszőleges elemét, ami nagy szabadságot ad a fejlesztők számára, a tesztesetek lehetnek nagyon komplexek is, illetve könnyű a külvilággal kommunikálni (pl. megjeleníteni az eredményt). A két nyelv párhuzamos használata jól mutatja a :NET keretrendszer egyik fő jellemzőjét, mégpedig a nyelvfüggetlenséget: a különböző nyelvekben leírt dolgok egyező névtérben vannak, így elérhető az egyik a másikból fennakadás nélkül, a fordító elvégzi a szükséges konverziókat.

A Q#, és q C# illetve F# szintaktikái között sok hasonlósság figyelmhető meg. Sok elemet, módszert átvettek a korábbi nyelvekből - ilyen pl. az `using` kulcsszó és a köré épülő minta: lefoglaljuk az erőforrást, végrehajtunk rajta tetszőleges műveletet, majd felszabadítjuk, vagy az F# nyelvben használt `let` kulcsszó a módosíthatatlan változók esetében. Mégis a Microsoft fejlesztői törekedtek arra, hogy felismerhető legyen a különbség: a Q# nyelvben a típusoknak nagy kezdőbetűi vannak, a névtér meghatározása és kibontása kissé eltérű módon adható meg, az operátorok paraméterei eltérő helyen és sorrendben vannak, mint a hagyományos metódusoknál stb. Erre azért lehetett szükség, hogy a fejlesztők ránézésre meg tudják mondani, a két nyelv közül melyikben dolgoznak éppen, ugyanis sok hibát okozhat, ha összekevernék a nyelveket és azok elemeit, hiszen a C# nyelven elérhető, a .NET keretrendszerben megtalálható könyvtáraknak akár lehet, nincs is értelme egy kvantum programban, vagy teljesen máshogy kell a műveletet elvégezni.

A kvantum programokat egy `.qs` kiterjesztésű fájlokban kell megírni Q# nyelven. Ebbe a fájlba több operációt és függvényt, típusokat és értékeket írhatunk le. A kvantum programnak van egy belépő, más nyelvekből `main`-ként ismert pontja, ahol a bemeneti paramétereket várja, illetve visszatérési értéke megadja a kvantum program eredményét. Ezek tetszőleges értékeke lehetnek, így a klasszikus programból bármilyen adat átvihető a kvantum programba. Természetesen a kvantum programból nem vihető ki a klasszikus programba kvantumbit, csak azoknak mért eredményei.

A Q# típusrendszere klasszikus (pl. `Int`, `Bool`), és kvantum (`Qubit`, `Result`), és további segédtípusokat (pl. operációk, generikus, saját típusok) különböztet meg. A klasszikus típusok lehetővé teszik a két program közti kommunikációt, illetve az algoritmusok beállításait (pl. a qregiszter elemeinek számát megadhatjuk egy `Int` típussal). A qregiszterek `Qubit` tömbökből állnak. A qbiteket az operáció elején le kell foglalni, majd végén visszaállítani 0 fázisba, és elengedni őket. A foglalás és elengedés között tetszőleges transzformációkat, méréseket alkalmazhatunk a qbiteken. Számtalan, előre definiált segédoperáció érhető el a `Microsoft.Quantum` névtér alatt, amiket felhasználva gyakori műveleteket gyorsan tudunk elvégezni. Ilyenek a gyakran használt általános unitér operátorok, illetve a kapuk több qbiten való végrehajtását lehetővé tevő `ApplyToEach` függvény, vagy a hibakeresésre használható `AssertQubit` művelet.

Ellentétben a hagyományos programozási nyelvekkel, a Q#-ban egy operációnak több "belseje" is lehet. Ugyanis ha az operációnak nincs visszatérési értéke, akkor megadhatjuk az adjoint (megfordított) és a controlled (irányított), illetve ezek ötvözésének viselkedését is. Többnyire a fordító elég okos ahhoz, hogy ezeket a viselkedéseket a rendes viselkedésből kikövetkeztesse (mivel a legtöbb alap kapu maga is unitér operátor, így megfordítható és irányítható), de ha mégse, vagy hatékonyságnövelés miatt szükséges, megadhatjuk mi is mindegyiket külön-külön.

A Q# kétféle típusú változókat különböztet meg:
1. Mutable: Az ilyen változók deklarálása a `mutable` kulcsszóval lehetséges. A benne tárolt adat később megváltoztatható, a `set` kulcsszó felhasználásával. Ilyen típusúnak érdemes választani pl. a mérési eredményeket tároló tömböt: elsőnek lefoglaljuk a tömböt, majd minden mérési eredményt beleírunk.
2. Immutable: Ezek a `let` kulcsszóval deklarálhatók. A későbbiekben nem rendelhető hozzájuk másik érték. Ilyen típusúnak érdemes választani a konstans paramétereket (mint pl. az algoritmusban használt qbitek száma), a köztes állapotokban qbitek azonosítására használt változókat (ebben az esetben a qbit értéke megváltozhat, de az, hogy az immutable változó melyik qbitre hivatkozik, az nem).

A mérések eredménye `Result` típusú változóban tárolódik. Egy ilyen típusú változó értéke `One` vagy `Zero` lehet. Ezek az értékek nem 1 és 0 számokat jelölnek! Noha természetesen ha a mérési eredmény biztosan 1, akkor a változó `One`-t fog tárolni, azonban ha a qbit mért együtthatója alapján az érték nem biztos, a program (az alkalmazott mérési operátornak megfelelően) dönti el, melyik klasszikus bitre alakítja át a kvantumbit értékét.

A Q# nyelv további elemei könnyen értelmezhetőek, ha már van ismeretünk más szekvenciális, objektum-orientált programozási nyelvekben. A teljes lista megtalálható a [hivatalos dokumentációban][2].

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

{% include_relative assets/code/DeutschJozsaTest.driver.cs %}
 
Az algoritmust leíró kvantum program:
 
{% include_relative assets/code/DeutschJozsaTest.operation.qs %}

#### Értékelés
- **Előnyök:** Nagyon kényelmes, hogy a szimuláció és a kvantum program leírása elkülönül. Főleg, mert így ha elérhetővé válik a kvantumszámítógép, lehetőség lesz a szimuláció egyszerű eltávolítására. A Q# színtaktikája könnyedén értelmezhető azok számára, akik dolgoztak már C# vagy hasonló nyelvekkel, ami gyorsítja a tanulást. Várhatóan a Microsoft sokáig fejleszteni fogja a nyelvet, mint ahogy teszi azt a C# esetében is, ami napjainkban talán a legmodernebb klasszikus programozási nyelvnek mondható. A Visual Studio használatával nagyon gyors és egyszerű a szimulációk lefuttatása, kényelmesen dolgozhatunk a már megszokott fejlesztőkörnyezetben.
- **Hátrányok:** A Microsoft Quantum Development Kit még csak fél éve jelent meg. Érezhető, hogy kezdeti fázisban van a fejlesztés. Bár működőképesek a programok, a fejlesztőeszköz, és a nyelvi elemek, elérhető segédoperációk használata kevésbé kifinomult, hosszú távon még sok fejlesztést igényelnek.

[1]: https://github.com/Microsoft/Quantum/tree/master/Samples/SimpleAlgorithms
[2]: https://docs.microsoft.com/en-us/quantum/?view=qsharp-preview
