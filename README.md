# Bevezetés
## A programok rövid története
> Mik a programok, mióta használjuk őket, milyen fejlődéseken mentek keresztül, hogy indult a kvantum programnyelvek útja.

A szoftverfejlesztés viszonylag új szakterület. A programozás ágazat kezdete megközelítőleg az 1950-es évekre rakható. Az ipari forradalmaknak köszönhetően ekkorra már fejlett gépek, elektronikus technológiák álltak a szakemberek rendelkezésére a számítógépek megépítéséhez, kezdődhetett a programnyelvek, szoftver terveési folyamatok célzott, irányított létrehozása. A programozás bő fél évszázados múltja alatt ezek drasztikusan átalakultak, a hatékonyságok és komplexitásuk sokszorosára fejlődött, a folyamatok kiszámíthatóbbak, gördülékenyebbek lettek. Kezdetben csak 1-1 művelet sikeres, automatizált végrehajtása volt a cél, napjainkban azonban számos más dolog is fontos. Voltak programnyelvek, amik hibásan lettek megtervezve, használatuk túl bonyolult volt emberek számára, nehéz volt leírni bennük komplex rendszereket, feladatokat, nem alkalmazkodtak a fejlesztendő program struktúrájához. Ezekből sokat tanultunk, a tapasztalataink alapján újabb és újabb rendszereket fejlesztettünk ki. Manapság már óriási szoftvereket építünk, bonyolult algoritmusokat hozunk létre, számtalan mérnök foglalkozik egyszerre a feladattal, az elkészült programoktól pedig emberéletek függhetnek. Egyre rövidebb idő alatt, egyre nehezebb programot, egyre kevesebb pénzből kell fejlesztenünk, alkalmazkodva a kor elvárásának.

A klasszikus, elektronikus számítógépek azonban kezdenek csúcspontjukhoz jutni. Egy idő után már nem lehet gyorsaságukon fejleszteni, a technológia eléri határait, az algoritmusokat nem lehetséges tovább optimalizálni. Pedig rohamos igény lenne még a programok hatékonyságnövelése iránt, hiszen csak mostanában kezd igazán teret hódítani pl. a rengeteg számítást igénylő mesterséges-intelligencia, vagy az egyre élethűbb kinézetű videójátékok, a tömérdek adat feldolgozása. Emiatt számtalan kutató cég foglalkozik azzal, hogy létre tudják hozni az elektronikus technológia utódját, a kvantummechnaikára alapozó kvantum-számítógépet. Ezek az új gépek lényegesen más módszerekkel dolgoznak, elvi teljesítményük sokszorosa az elektronikus gépeknek.

A kvantum-programozás területe mostanában kezd megszületni. Napjainkban a kvantum-számítógép még fejlesztés alatt áll, messze vagyunk attól, hogy használatuk olyan széles körben elterjedt legyen, mint a mostani elektronikus személyi, vagy szerver oldali számítógépeké. Ennek ellenére egyre több és több kvantum-programozási nyelv jelenik meg, számtalan olyan algoritmust megterveztek már, amit később kvantum-számítógépeken akarnak futtatni.

## Igény a kvantum programokra

Mi értelme van kvantum-programokat fejleszteni, ha még nem is igazán tudjuk min végrehajtani ezeket a programokat? A klasszikus programozás fejlődése során rájöttünk, hogy sok elmélet hibás, és ezek a hibák csak elterjedt használatuk után derültek ki, rengeteg kárt okozva a fejlesztőknek és felhasználóknak. Sok, korábban hatékonynak hitt algoritmushoz találtak annál sokkal gyorsabb, kevesebb menórigényű stb. változatot, biztonságosank hitt protokollokban találtak támadható pontot. Mivel a kvantumszámítógépnek nagy jövőt jósolnak, tudhatjuk, hogy a közeljövőben valós igény lesz a kvantum-programokra. Annak érdekében, hogy minimalizáljuk a hibás elméletek és fejlesztési módszerek elterjedését, vagy éppen felfedezzük, később mit tudunk még alkalmazni, a kvantumszámítógépkre szánt programok fejlesztése már most is elkezdődött. A sok évtizedekig tartó algoritmusok, protokollok fejlesztése és ellenőrzése már most is lehetséges. Szükséges, hogy találjunk olyan módszereket, amik leválthatják azokat az eljárásokat, amiket napjainkban használunk a klasszikus számítógépeknél, de egy kvantum-számítógépnek gyerekjáték lenne megkerülnie, hogy ha üzembe tudnak már helyezni nagyszámú kvantum-számítógépet, a szolgáltatások továbbra is működőképesek maradhassanak. Ilyen pl. a titkosított kommunikációra használt RSA algoritmus, ami az elektronikus számítógépeknél még kellő védelmet ad, de ha a kvantum-számítógépek elterjednek, már nem lehetne az interneten biztonságosan fizetni. Mivel azonban nem akarunk lemondani a biztonságos internetes fizetésről, más módszeket kell felkutatnunk, amik matematikailag bizonyítottan biztonságosak tudnak maradni a jövőre nézve is.

## A klasszikus és kvantum programok jövője

A kvantum-számítógépek megjelenésével nem érdemes eltemetni az elektronikus számítógépeket. Várhatóan a két technológia nem lecseréli egymást, hanem együtt működnek tovább. Nem éri meg ugyanis minden feladatra a (most még) méregdrága csúcstechnológiát használni. Vegyünk például egy kézi számológépet. Igaz ugyan, hogy nem tud egy nagyon byonolult, 100 sort elfoglaló egyenletet több millió tizedesjegy pontosságú eredményét kikalkulálni egy szempillantásnyi idő alatt, na de kinek lenne erre igénye? A grafikus kártyák teljesítménye, és a monitor frissítési gyorsasága se teszi lehetővé (jelenleg), hogy másodpercenként több millió, teljesen élethű képkockát megjelenítsen egy program, azonban tudjuk, hogy az emberi szem nem is lenne képes értelmezni ezt a sok részletes információt kellő gyorsasággal. Egy táblázatos adminisztrátori program működésére nem lenne hatással, ha azt kvantumszámítógépen futtatnánk. A kvantum-programokat számításigényes (és ebből adódóan időigényes) feladatoknál éri meg használni. Nem megpelő, hogy a jelenleg elérhető kvantum példaprogramok közül sok ilyen eseteket ír le.

Többnyire a kényelmes, emberek által jól értelmezhető programnyelveketben megírt feladatokat le kell fordítani egy, a gép, vagy az azon futó platform által közvetlenül, egyszerűen értelmezhető, optimalizált formára. Problémát jelent ugyanakkor, hogy még nem nagyon tudjuk, milyen lesz a kvantum-számítógépek interfésze, azaz, hogy hogyan lehet hozzáférni kívülről. Jelenleg 1-2 gyártó rendelkezik kísérleti kvantum-számítógéppel. Mint az várható minden felfedezés esetében, ebben a fázisban nem a kényelmes használatra koncentrálnak, hanem a működés elérésére. Így volt ez a klasszikus számítógépek esetében is: kezdetben minimális utasításkészletet támogattak a processzorok, de új igények jelentek meg, így kevésnek bizonyultak. Ma már számtalan utasításkészlet érhető el, ám kompatibilitási okok miatt az x86 architektúra mégis elterjedt maradt, a teljesítmény rovására. Remélhetőleg, a kvantum számítógép- és programnyelv tervezők tanulni fognak ebből az esetből, számolnak azzal, hogy a kísérletek után sok változásra kell felkészülniük.

Ha a kvantumszámítógép elérhető lesz, a kvantum programnyelvek nagy lendületet fognak kapni. Új fejlesztőkörnyezeteket hoznak létre, vagy ha lehetséges, beépítik a már meglévő rendszerekbe a kvantum programok készítéséhez szükséges eszközöket. Várhatóan lesznek próbálkozások arra, hogy egyes programnyelveket kiterjesszék a kvantum programok világára is, hogy a fejlesztők egységes nyelven tudjanak fejleszteni a kettő között, ne kelljen külön megtanulni a sok dologban hasonlító eljárásokat. A jelenlegi szimulátorokat leváltják majd a valós fordítóprogramok.

# Kvantumprogramok felépítése
## Eltérések a klasszikus és kvantum műveletei programok között
> Speciális kapuk használata, qbitek elérése, mérési pontatlanság, párhuzamosság, több adat egyben kezelve.

## Kvantumprogramok kimenetei
> Mire lehet lefordítani, hogyan lehet megjeleníteni, mit ír le (szoftver vagy hadver).

# Kvantum programozási nyelvek
## Kvantum pszeudokód
> Egyszerű algoritmus leírásra használható nyelv, nem foglalkozik a fordítás részével.
>
> https://pdfs.semanticscholar.org/60d1/e63ca31555ec7013c5eb9a8a63788398fd14.pdf

## A QCL nyelv
> Elsők között lett létrehozva, C-re hasonlító "mindent tudó" kvantum-nyelv.
>
> https://github.com/aviggiano/qcl
>
> https://en.wikipedia.org/wiki/Quantum_computation_language

## A Quipper nyelv
> Könnyen generálhatóak vele vizuális kvantum-áramkörök.
>
> https://www.mathstat.dal.ca/~selinger/quipper/

## A Q# nyelv
> Nemrég jött ki, MS csinálja, hasonlít a C#-ra, szimulátor.
>
> https://github.com/Microsoft/Quantum
>
> https://en.wikipedia.org/wiki/Q_Sharp
