# Történet, igények
> Mik a programok, mióta használjuk őket, milyen fejlődéseken mentek keresztül, hogy indult a kvantum programnyelvek útja.

A szoftverfejlesztés viszonylag új szakterület. Más mesterségek, mint pl. a bútorkészítés, több évszázados múlttal rendelkezik. A programok készítése megközelítőleg az 1950-es évekre rakható. Ekkor már fejlett gépek álltak a szakemberek rendelkezésére, kezdődhetett a programnyelvek, szoftver terveési folyamatok létrehozása. A programozás bő fél évszázada alatt ezek drasztikusan megváltoztak, a hatékonyságok és komplexitásuk sokszorosára fejlődött. Kezdetben csak 1-1 művelet sikeres, automatizált végrehajtása volt a cél, napjainkban azonban számos más dolog is fontos. Voltak programnyelvek, amik hibásan lettek megtervezve, használatuk túl bonyolult volt emberek számára, nehéz volt leírni bennük komplex rendszereket, feladatokat, nem alkalmazkodtak a fejlesztendő program struktúrájához. Manapság már óriási rendszereket építünk, bonyolult algoritmusokat hozunk létre, számtalan mérnök foglalkozik egyszerre a feladattal, az elkészült programoktól pedig emberéletek függhetnek. Egyre rövidebb idő alatt, egyre nehezebb programot, egyre kevesebb pénzből kell fejlesztenünk, alkalmazkodva a kor elvárásának. Kritikus feladat hatékony szoftverfejlesztésti folyamatot, biztonságos, gyors program készítése.

A klasszikus, elektronikus számítógépek azonban kezdenek csúcspontjukhoz jutni. Egy idő után már nem lehet hatékonyságukon javítani, a technológia eléri határait, az algoritmusokat nem lehetséges tovább optimalizálni. Pedig rohamos igény lenne még a programok hatékonyságnövelése iránt. Emiatt számtalan kutató cég foglalkozik azzal, hogy létre tudják hozni a klasszikus számítógépek utódját, a kvantummechnaikára alapozó kvantum-számítógépet. Ezek az új gépek lényegesen más módszerekkel dolgoznak, elvi teljesítményük sokszorosa az elektronikus gépeknek.

A kvantum-programozás területe mostanában kezd megszületni. Napjainkban a kvantum-számítógép még fejlesztés alatt áll, messze vagyunk attól, hogy használatuk olyan széles körben elterjedt legyen, mint a mostani elektronikus számítógépeké. Ennek ellenére egyre több és több kvantum-programozási nyelv jelenik meg, számtalan algoritmust megterveztek már, amit később kvantum-számítógépeken akarnak futtatni.

Mi értelme van kvantum-programokat fejleszteni, ha még nem is tudjuk min végrehajtani ezeket a programokat? A klasszikus programozás fejlődése során rájöttünk, hogy számtalan elmélet hibás, és ezek a hibák csak elterjedt használatuk után derültek ki. Sok, korábban hatékonynak hitt algoritmushoz találtak annál sokkal gyorsabb, kevesebb menórigényű stb. változatot. Mivel a kvantumszámítógépnek nagy jövőt jósolnak, tudhatjuk, hogy nemsokára valós igény lesz a kvantum-programokra. Annak érdekében, hogy minimalizáljuk a hibás elméletek elterjedését, vagy éppen felfedezzük, később milyen elméleteket tudunk majd alkalmazni, a kvantum-programozás már most is elkezdődött. Szükséges, hogy találjunk olyan módszereket, amik leválthatják azokat az eljárásokat, amiket napjainkban használunk a klasszikus számítógépeknél, de egy kvantum-számítógépnek gyerekjáték lenne megkerülnie. Ilyen pl. a titkosított kommunikációra használt RSA algoritmus, ami az elektronikus számítógépeknél még kellő védelmet ad, de ha a kvantum-számítógépeket elkezdik használni, már nem lehetne az interneten biztonságosan fizetni. Mivel azonban nem akarunk lemondani a biztonságos internetes fizetésről, más módszeket kell felkutatnunk.

# Eltérések a klasszikus és kvantum programok között
> Speciális kapuk használata, qbitek elérése, mérési pontatlanság, párhuzamosság, több adat egyben kezelve.

# Kvantum programok felhasználási területe
> Hol éri meg kvantum programot alkalmazni klasszikus helyett, hol nem, ár/érték.

A kvantum-számítógépek megjelenésével nem érdemes eltemetni az elektronikus számítógépeket. Várhatóan a két technológia nem lecseréli egymást, hanem együtt működnek majd. Nem éri meg ugyanis minden feladatra a (most még) méregdrága csúcstechnológiát használni. Vegyünk például egy kézi számológépet. Igaz ugyan, hogy nem tud egy nagyon byonolult képlet több millió tizedejes pontosságú eredményét kikalkulálni egy szempillantásnyi idő alatt, na de kinek lenne erre igénye? A számítógépes játékok teljesítménye, és a monitor frissítési gyorsasága se teszi lehetővé (jelenleg), hogy másodpercenként több millió képkockát megjelenítsen egy program, azonban tudjuk, hogy az emberi szem nem is lenne képes értelmezni ezt a sok információt kellő gyorsasággal, így csak pazarlás lenne a képkockák előállítása.

A kvantum-programokat számításigényes feladatoknál éri meg használni. Ilyen pl. a mesterséges intelligencia, biztonsági számítások, természettudományos szimulációk, stb. Nem megpelő, hogy a jelenleg elérhető kvantum példaprogramok közül sok ilyen eseteket ír le.

# Fordítás, futtatás
> Mi tudja futtatni a kvantum-programot, milyen formátumba kell lefordítani, architektúrák, szimulációk

Klasszikus számítógépek esetében a programnyelveket le kell fordítani egy, az elektronikus gép által közvetlenül értelmezhető formára. Ezt a fordítást kvantum-programnyelvek esetében is el kell végezni, mivel az szoftverfejlesztők számára a hatékony, egyszerű, átlátható tervezési folyamat a fontos, a végrehajtó számítógépnek ugyanakkor a minél kevesebb művelet, az egyértelmű, kellően kis részekre szétbontott feladatok.

Problémát jelent ugyanakkor, hogy még nem nagyon tudjuk, milyen lesz a kvantum-számítógépek interfésze. Jelenleg 1-2 gyártó rendelkezik kísérleti kvantum-számítógéppel. Mint az várható, ebben a fázisban nem a kényelmes használatra koncentrálnak, hanem a működés megvalósítására. Így volt ez a klasszikus számítógépek esetében is: kezdetben minimális utasításkészletet támogattak a processzorok, ezek azonban később kevésnek bizonyultak. Ma már számtalan utasításkészlet érhető el, ám kompatibilitási okok miatt az x86 architektúra mégis elterjedt maradt, a teljesítmény rovására. Remélhetőleg, a kvantum számítógép- és programnyelv tervezők tanulni fognak ebből az esetből, számolnak azzal, hogy a kísérletek után sok változásra kell felkészülniük.

A jelenlegi kvantum-programokat lehetséges klasszikus számítógépeken futtatni, emulációval. Sok esetben a mostani kvantum-programokat ilyen módon tudjuk csak felhasználni. Ezek természetesen sokkal lassabbak, mintha valós kvantum-számítógépeken futnának, sőt, a kvantum-algoritmusok emukációja még a klasszikus megfelelőjüknél is lassabb lehet. Azonban így lehetőségünk nyílik a szemmel észre nem vett hibák megkeresésére is, azon ugyanis a programok futtatásából kiderülnek - már ha sikerül megfelelő teszteket írnunk.

> Hogyan lehet a lenti nyelveket lefordítani és futtatni.

# Kvantum programnyelvek csoportosítása
> Mennyire absztrakt, objektumorientált, funkcionális, párhuzamosság.

# A QCL nyelv
> https://github.com/aviggiano/qcl

> https://en.wikipedia.org/wiki/Quantum_computation_language

# A Q# nyelv
> https://github.com/Microsoft/Quantum

> https://en.wikipedia.org/wiki/Q_Sharp
