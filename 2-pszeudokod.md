## Kvantum pszeudokód

A pszeudokód nem tekinthető programozási nyelvnek, hiszen a célja pont az, hogy absztrakt módon, konkrét implementáció nélkül lehessen leírni vele az algoritmusokat. A pszeudokód elvben bármilyen másik programozási nyelvre átalakítható egyszerűen, majd annak felhasználásával futtatható. A pszeudókód célja, hogy az emberek számára könnyen értelmezhető, csak a lényeges dolgokra koncentrálva, nyelvfüggetlen leírást adhassunk különféle algoritmusokról.

A pszeudokódoknak többféle változata is van, kisebb-nagyobb eltérésekkel. Ezek többnyire a megértést nem akadályozzák, mert pl. csak másfajta jelölést használnak az értékadáshoz (`let x be zero`, vagy `x := 0`). A könnyebb kezelhetőség érdekében készült néhány ajánlás a pszeudokódok készítésére.

A hagyományos pszeudokódnak van kvantumos változata is. A felhasználási cél egyező: algoritmusok leírása implementációtól függetlenül, csak éppen már kvantumszámítógép meglétét feltételezve. A kvantum pszeudokód nem sokban különbözik a hagyományostól, mert bár sok új funkciót lehetséges kvantum programokkal elkészíteni, ezek többségének leírása a hagyományos formában is lehetséges (pl. az unitér operátorok hagyományos metódusokkal leírhatók).

A kvantum pszeudokódra is készült egy ajánlás. E. Knill készítette 1996-ban a kezdetleges ajánlást, azóta módosítás nem történt rajta. Ez a dokumentum nem tárgyalja a hagyományos pszeudokód elemeit, csak a kvantumprogramozással kapcsolatos dolgokkal egészíti ki azt. Az ajánlás egy része formai leírás. Fő elemei:

- Hagyományos és kvantum bitek, regiszterek megkülönböztetése: Minden, ami a "kvantum világban" történik, annak a leírását aláhúzással kell jelölni. Ha egy változó nevének nincs aláhúzása, az klasszikus adatot jelöl, ha van, az egy kvantumregisztert.
- Mérések, értékadások: Az aláhúzásos módszer alkalmas a kvantumregiszterek inicializálására, ahol az értékadás bal oldalán kvantumregiszter, jobb oldalán tetszőleges klasszikus érték található, illetve megmérésére, ahol pont fordított a felállás, egy hagyományos regiszterbe "kiírjuk" a kvantumregisztert.
- Unitér operátorok használata: A pszeudokódban lehetőségünk van megadni az operátorok mátrixos vagy más matematikai alakú leírását, majd erre hivatkozhatunk egy megszokott metódushívásként végrehajthatjuk a műveletet.
- Eljárások megfordítása: A kvantum pszeudokód egyszerű szintaktikát kínál arra a gyakran használt módszerre, amikor algoritmusokat fordítva hajtunk végre. Normál esetben az unitér operátorokat invertálnunk kell, és fordított sorrendben végrehajtani a műveleteket, azonban a kvantum pszeudokódban elegendő csak a művelet elé írni a `reverse` kulcsszót.
- Kvantumregiszterek mérés nélkül átalakítása: Bizonyos esetekben a kvantumregiszter bizonyíthatóan klasszikus állapotba kerül a műveletek után. Ebben az esetben használhatjuk a kvantumregisztert klasszikus regiszterként a tövábbiakban, anélkül, hogy a nem megfordítható mérést el kellene végeznünk rajta. Erre való az `isClassical` kulcsszó.
- Kvantumregiszterek eldobása: Előfordulhat, hogy egy kvantumregiszterre már nincs szükségünk a továbbiakban. Ahhoz, hogy a kvantumregiszter ne befolyásolja a későbbi műveleteket, jelezzük a `after dissipating` kifejezéssel, hogy a kvantumregisztert eldobtuk, alaphelyzetbe állítottuk.
- Elágazások és ciklusok: Bár a kvantumprogramba klasszikus értelemben vett elágazást és ciklust csak akkor tudunk tenni, ha ismerjük (megmérjük) a regiszterek tartalmát, hogy össze tudjuk hasonlítani az értékeket, bizonyos unitér operátorok játszhatnak olyan szerepet, mint az elágazások, illetve az operátorok többszöri ismétlésével kaphatunk egy ciklust. A kvantum pszeudokód erre kínál szintaktikai lehetőséget: <ins>`if a then U(a)`</ins>, `for i=A to i=B`. Ezek a kifejezések átalakíthatók lennének a neki megfelelő (de lehet kevésbé beszédesebb) unitér operátorokká.

#### A Deutsch–Jozsa algoritmus leírása kvantum pszeudokóddal

{% include_relative assets/code/DeutschJozsaTest.qupseudo.html %}

#### Értékelés
- **Előnyök:** A kvantum psezudokód a legfontosabb dolgokra ad egységes jelölési lehetőséget, miközben kellő szabadságot ad az algoritmus leírásának testerszabására. Az emberek számára könnyen áttekinthetővé teszi az algoritmusok értelmezését, technikai részletek nélkül.
- **Hátrányok:** Mivel kevés dolog van szabályozva, sokszor keveredik LaTeX, vagy más matematikai képleteket leíró nyelvekkel, amiknek a kódolása nehezebb feladat lehet. Mivel sok elemre nincs egységes ajánlás, a pszeudokód leírásában sok komment található, ami rontja a leírás minőségét.
