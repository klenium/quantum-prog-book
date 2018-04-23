## Kvantum pszeudokód
> Egyszerű algoritmus leírásra használható nyelv, nem foglalkozik a fordítás részével.

A pszeudokód nem tekinthető programozási nyelvnek, hiszen a célja pont az, hogy absztrakt módon, konkrét implementáció nélkül lehessen leírni velek az algoritmusokat. A pszeudokód elvben bármilyen másik programozási nyelvre átalakítható egyszerűen, majd annak felhasználásával futtatható. A pszeudókód célja, hogy az emberek számára könnyen értelmezhető, csak a lényeges dolgokra koncentrálva, nyelvfüggetlen leírást adhassunk különféle algoritmusokról.

A pszeudokódoknak többféle változata is van, kisebb-nagyobb eltérésekkel. Ezek többnyire a megértést nem akadályozzák, mert pl. csak másfajta jelölést használnak az értékadáshoz (`let x be zero`, vagy `x := 0`). A könnyebb kezelhetőség érdekében különböző szabványok, ajánlások születtek a pszeudokódok készítésére.

A hagyományos pszeudokódnak van kvantumos változata is. A felhasználási cél egyező: algoritmusok leírása implementációtól függetlenül. A kvantum pszeudokód nem sokban különbözik a hagyományostól, mert bár sok új funkciót lehetséges kvantum programokkal elkészíteni, ezek többségének leírása a hagyományos eszközökkel is lehetséges (pl. az unitáros kapuk hagyományos metódusokkal leírhatóak).

A kvantum pszeudokódra is készült egy egységes ajánlás. E. Knill készítette 1996-ban a kezdetleges ajánlást, azóta módosítás nem történt rajta. Ez a dokumentum nem tárgyalja a hagyományos pszeudokód elemeit, csak a kvantumprogramozással kapcsolatos dolgokkal egészíti ki azt. Az ajánlás egy része formai leírás. Fő elemei:

1. Hagyományos és kvantum bitek, regiszterek megkülönböztetése: Minden, ami a "kvantum világban" történik, annak a leírását aláhúzással kell jelölni. Ha egy változó nevének nincs aláhúzása, az klasszikus adatot jelöl, ha van, az egy kvantumregisztert.
2. Mérések, értékadások: Az aláhúzásos módszer alkalmas a kvantumregiszterek inicializálására, ahol az értékadás bal oldalán kvantumregiszter, jobb oldalán tetszőleges klasszikus érték található, illetve megmérésére, ahol pont fordított a felállás, egy hagyományos regiszterbe "kiírjuk" a kvantumregisztert.
3. Unitáris operátorok használata: A pszeudokódban lehetőségünk van megadni az operátorok mátrixos alakú leírását, majd erre hivatkozhatunk egy megszokott metódushívásként.
4. Eljárások megfordítása: A kvantum pszeudokód egyszerű szintaktikát kínál arra a gyakran használt módszerre, amikor algoritmusokat fordítva hajtunk végre. Normál esetben az unitáris operátorokat invertálnunk kell, és fordított sorrendben végrehajtani őket, azonban a kvantum pszeudokódban elegendő csak a művelet elé írni a `reverse` kulcsszót.
5. Kvantumregiszterek mérés nélkül átalakítása: Bizonyos esetekben a kvantumregiszter bizonyíthatóan klasszikus állapotba kerül a műveletek után. Ebben az esetben használhatjuk a kvantumregisztert klasszikus regiszterként, anélkül, hogy a nem megfordítható mérést el kellene végeznünk rajta. Erre való az `isClassical` kulcsszó.
6. Kvantumregiszterek eldobása: Előfordulhat, hogy egy kvantumregiszterre már nincs szükségünk a továbbiakban. Ahhoz, hogy a kvantumregiszter ne befolyásolja a későbbi műveleteket, jelezzük a `after dissipating` kifejezéssel, hogy a kvantumregisztert eldobtuk, alaphelyzetbe állítottuk.
7. Elágazások és ciklusok: Bár a programba valódi elágazást és ciklust csak akkor tudunk tenni, ha ismerjük (megmérjük) a regiszterek tartalmát, hogy össze tudjuk hasonlítani az értékeket, bizonyos unitáris operátorok játszhatnak olyan szerepet, mint a klasszikus elágazások, illetve az operátorok többszöri ismétlésével kaphatunk egy ciklust. A kvantum pszeudokód erre kínál szintaktikai lehetőséget: <ins>`if a then U(a)`</ins>, `for i=A to i=B`. Ezek a kifejezések átalakíthatók lennének a neki megfelelő (de lehet kevésbé beszédesebb) unitáris operátorokká.

#### A Deutsch–Jozsa algoritmus leírása kvantum pszeudokóddal
DeutschJozsa(n, f)

Input: f egy konstans vagy kiegyensúlyozott függvény, n pedig az f függvény bemeneti kvantumregiszerének dimenziója (a qbit-ek száma).

Output: Klasszikus igaz, ha f konstans, illetve hamis, ha kiegegysúlyozott.



<ins>control</ins> <- Initialize(0, n)

**C:** A kvantumregiszterbe betöltünk n darab 0 fázisú qbitet.

<ins>data</ins> <- Initialize(1)

<ins>state0</ins> <- Merge(<ins>control</ins>, <ins>data</ins>)

**C:** A state0 a két qregiszer összekapcsolt állapotát jelzi.

<ins>state1</ins> <- Hadamard <sup>⊗n+1</sup> (<ins>state0</ins>)

**C:** Mindegyik qbiten alkalmazunk egy Hadamard kaput.

<ins>state2</ins> <- U-Controlled-CNOT(f, <ins>control</ins>, <ins>data</ins>)

**C:** Az U-Controlled-CNOT egy olyan kaput jelöl, ami a CNOT kapuhoz hasonlóan működik, de a data ágon y ⊕ f(x) lesz a hatása.

<ins>state3</ins> <- Hadamard <sup>n</sup> (<ins>state2</ins>)

value <- <ins>state3</ins>

result <- false

if value is -1 or 1 then

result <- true

end
