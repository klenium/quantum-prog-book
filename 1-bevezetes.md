# Bevezetés
#### A programok rövid története

A szoftverfejlesztés viszonylag új szakterület. A programozás ágazat kezdete megközelítőleg az 1950-es évekre rakható. Az ipari forradalmaknak köszönhetően ekkorra már fejlett gépek, elektronikus technológiák álltak a szakemberek rendelkezésére a számítógépek megépítéséhez, kezdődhetett a programnyelvek, szoftver tervezési folyamatok célzott, irányított létrehozása. A programozás bő fél évszázados múltja alatt ezek drasztikusan átalakultak, a hatékonyságok és komplexitásuk sokszorosára fejlődött, a folyamatok kiszámíthatóbbak, gördülékenyebbek lettek. Kezdetben csak 1-1 művelet sikeres, automatizált végrehajtása volt a cél, napjainkban azonban számos más dolog is fontos. Voltak programnyelvek, amik hibásan lettek megtervezve, használatuk túl bonyolult volt emberek számára, nehéz volt leírni bennük komplex rendszereket, feladatokat, nem alkalmazkodtak a fejlesztendő program struktúrájához. Ezekből sokat tanultunk, a tapasztalataink alapján újabb és újabb rendszereket fejlesztettünk ki. Manapság már óriási szoftvereket építünk, bonyolult algoritmusokat hozunk létre, számtalan mérnök foglalkozik egyszerre a feladattal, az elkészült programoktól pedig emberéletek függhetnek. Egyre rövidebb idő alatt, egyre nehezebb programot, egyre kevesebb pénzből kell fejlesztenünk, alkalmazkodva a kor elvárásának.

A klasszikus, elektronikus számítógépek azonban kezdenek csúcspontjukhoz jutni. Egy idő után már nem lehet gyorsaságukon fejleszteni, a technológia eléri határait, az algoritmusokat nem lehetséges tovább optimalizálni. Pedig rohamos igény lenne még a programok hatékonyságnövelése iránt, hiszen csak mostanában kezdenek igazán teret hódítani pl. a rengeteg számítást igénylő neurális hálózatok, vagy az egyre élethűbb kinézetű videójátékok, a tömérdek adat feldolgozása. Emiatt számtalan kutató cég foglalkozik azzal, hogy létre tudják hozni az elektronikus technológia utódját, a kvantummechanikára alapozó kvantumszámítógépet. Ezek az új gépek lényegesen más módszerekkel dolgoznak, elvi teljesítményük sokszorosa az elektronikus gépeknek.

A kvantum-programozás területe mostanában kezd megszületni. Napjainkban a kvantumszámítógép még fejlesztés alatt áll, messze vagyunk attól, hogy használatuk olyan széles körben elterjedt legyen, mint a mostani elektronikus személyi, vagy szerver oldali számítógépeké. Ennek ellenére egyre több és több kvantum programozási nyelv jelenik meg, számtalan olyan algoritmust megterveztek már, amit később kvantum-számítógépeken akarnak futtatni.

#### Igény a kvantum programokra

Mi értelme van kvantumprogramokat fejleszteni, ha még nem is igazán tudjuk min végrehajtani ezeket a programokat? A klasszikus programozás fejlődése során bebizonyosult, hogy sok elmélet hibás, és ezek a hibák csak elterjedt használatuk után derültek ki, rengeteg kárt okozva a fejlesztőknek és felhasználóknak egyaránt. Sok, korábban hatékonynak hitt algoritmushoz találtak annál sokkal gyorsabb, kevesebb memóriaigényű stb. változatot, biztonságosnak hitt protokollokban találtak támadható pontot. Mivel a kvantumszámítógépnek nagy jövőt jósolnak, tudhatjuk, hogy a közeljövőben valós igény lesz a kvantum-programokra. Annak érdekében, hogy minimalizáljuk a hibás elméletek és fejlesztési módszerek alkalmazását, vagy éppen felfedezzük, később mit tudunk még alkalmazni, a kvantumszámítógépekre szánt programok fejlesztése már most is elkezdődött. A sok évtizedekig tartó algoritmusok, protokollok fejlesztése és ellenőrzése már most is lehetséges. Szükséges, hogy találjunk olyan módszereket, amik leválthatják azokat az eljárásokat, amiket napjainkban használunk a klasszikus számítógépeknél, de egy kvantumszámítógépnek egyszerű lenne megkerülnie, hogy ha üzembe tudnak már helyezni nagyszámú kvantumszámítógépet, a szolgáltatások továbbra is működőképesek maradhassanak. Ilyen pl. a titkosított kommunikációra használt RSA algoritmus, ami az elektronikus számítógépeknél még kellő védelmet ad, de ha a kvantumszámítógépek elterjednek, már nem lehetne az interneten biztonságosan fizetni. Mivel azonban nem akarunk lemondani a biztonságos internetes fizetésről, más módszereket kell felkutatnunk, amik matematikailag bizonyítottan biztonságosak tudnak maradni a jövőre nézve is.

#### A klasszikus és kvantum programok jövője

A kvantum-számítógépek megjelenésével nem érdemes eltemetni az elektronikus számítógépeket. Várhatóan a két technológia nem lecseréli egymást, hanem együtt működnek tovább. Nem éri meg ugyanis minden feladatra a (most még) méregdrága csúcstechnológiát használni. Vegyünk például egy kézi számológépet. Igaz ugyan, hogy nem tud egy nagyon bonyolult, 100 sort elfoglaló egyenletet több millió tizedesjegy pontosságú eredményét kikalkulálni egy szempillantásnyi idő alatt, na de kinek lenne erre igénye? A grafikus kártyák teljesítménye és a monitor frissítési gyorsasága se teszi lehetővé (jelenleg), hogy másodpercenként több millió, teljesen élethű képkockát megjelenítsen egy program, azonban tudjuk, hogy az emberi szem nem is lenne képes értelmezni ezt a sok részletes információt kellő gyorsasággal. Egy táblázatos adminisztrátori program működésére aligha lenne hatással, ha azt kvantumszámítógépen futtatnánk. A kvantumprogramokat számításigényes (és ebből adódóan időigényes) feladatoknál éri meg használni.

Többnyire a kényelmes, emberek által jól értelmezhető programnyelveketben megírt feladatokat le kell fordítani egy, a gép, vagy az azon futó platform által közvetlenül, egyszerűen értelmezhető, optimalizált formára. Problémát jelent ugyanakkor, hogy még nem nagyon tudjuk, milyen lesz a kvantum-számítógépek interfésze, azaz, hogy hogyan lehet hozzáférni kívülről. Jelenleg 1-2 gyártó rendelkezik kísérleti kvantumszámítógéppel. Mint az várható minden felfedezés esetében, ebben a fázisban nem a kényelmes használatra koncentrálnak, hanem a működés elérésére. Így volt ez a klasszikus számítógépek esetében is: kezdetben minimális utasításkészletet támogattak a processzorok, de új igények jelentek meg, így kevésnek bizonyultak. Ma már számtalan utasításkészlet érhető el, ám kompatibilitási okok miatt az x86 architektúra mégis elterjedt maradt, a teljesítmény rovására. Remélhetőleg, a kvantum számítógép- és programnyelv tervezők tanulni fognak ebből az esetből, számolnak azzal, hogy a kísérletek után sok változásra kell felkészülniük. A mostani szimulátorok, és a jövőbeli kvantumszámítógépek interfészét össze kell egyeztetni minél inkább, hogy a már elkészített programok átvihetők legyenek.

Ha a kvantumszámítógép elérhető lesz, a kvantum programnyelvek nagy lendületet fognak kapni. Új fejlesztőkörnyezeteket hoznak létre, vagy ha lehetséges, beépítik a már meglévő rendszerekbe a kvantum programok készítéséhez szükséges eszközöket. Várhatóan lesznek próbálkozások arra, hogy egyes programnyelveket kiterjesszék a kvantum programok világára is, hogy a fejlesztők egységes nyelven tudjanak fejleszteni a kettő között, ne kelljen külön megtanulni a sok dologban hasonlító eljárásokat. A jelenlegi szimulátorokat leváltják majd a valós fordítóprogramok.

# Kvantumprogramok felépítése

_Megjegyzés:_ A programok leírását, értelmezését lehetővé tevő nyelveket típusuk szerint különféle kategóriákba soroljuk, és emiatt eltérően is hívjuk őket (pl. a [HTML][1] jelölő, a [Java][2] programozási, a [VHDL][3] hardverleíró nyelv, az [x86][4] pedig egy utasításkészlet), noha programokkal kapcsolatos területen használjuk fel őket. A továbbiakban a "kvantum programozási nyelv" főleg csak a kvantumszámítógépekkel és programokkal kapcsolatba hozható jellemzésre használt, nem pedig a nyelv céljának, típusának meghatározására.

#### Eltérések a klasszikus és kvantum programok között

A klasszikus programok felépítése néhány szempontból hasonlít a kvantum programokéra, más esetekben azonban gyökeres eltérések vannak köztük. Néhány ilyen eltérés (a teljesség igénye nélkül):

- A kvantumbiteken végrehajtott műveletek nem lehetnek tetszőlegesek. A kvamtum-számítástechnika 2. posztulátuma értelmében a változásokat unitér operátorokkal tudjuk leírni. Nem minden transzformáció rendelkezik azokkal a tulajdonságokkal, amik ehhez szükségesek. Jól mutatja ezt az ÉS kapu: ennek 2 be-, és 1 kimenete van, a műveletet nem tudjuk egyértelműen megfordítani. Habár az ÉS művelet értelmezhető a kvamtum programban is, ki kell terjeszteni, hogy teljesüljün rá a feltétel.
- A kvantumbiteknek nem határozható meg pontosan az értékük minden esetben. Klasszikus programoknál mindig tudhatjuk, hogy egy bit 0, vagy 1 értéket velet csak fel, a kvantumbit azonban másképpen működik. A tetszőleges állapotú kvantumbit egy pillanatban meghatározott valósínűséggel van egyik-másik állapotban. Néhány méréssel, vagy előzőtes műveletek alkalmazásával kinyerhetjük a pontos értéket, azonban nem mindig. Emiatt néha ismételni kell a műveleteket, vagy tippelni kell a végeredményt, vagy meg kell elégednünk a nem garantáltan jó válasszal.
- A mérések befolyásolják a mért adatot. Klasszikus programban nem feltételezzük, hogy egy regiszter tartalmának kiolvasásának külső hatása lenne (igazából lehetnek, pl. a gyorsítótárazás miatt, de ezek a kiolvasási művelet szempontjából láthatatlanok, nélkölüzhetőek). A kvantumprogramok készítésénél fel kell készülnünk arra, hogy az operátorok alkalmazása közben nem tudhatjuk pontosan a kvantumbitek értékét, mérés után pedig már nem tudjuk pontosan ugyan azt az értéket felhasználni.
- A kvantum-számítástechnikában léteznek összefonódott állapotok, ahol az egyik kvantumbit megmérése befolyásolja a másik kvantumbit értékét. Klasszikus programokban ha ilyesmit akarunk elérni, speciális adatszerkezetet kell létrehoznunk, és mauálisan kellene átállítanunk az adatok állapotát, hogy a következő kiolvasás eredményét befolyásolni tudjuk. A kvantumprogramokban mindez magától adódik - ami vagy jó nekünk, vagy nem.
- Kvantumbitek összekapcsolásával, és a Hadamard kapu alkalmazásával egy regiszterben több lehetséges értéket is eltárolhatunk, mint a neki megfelelő számú klasszikus regiszterben. Ezáltal jóval nagyobb tárkapacitáshoz férhetünk hozzá (már ha sikerül kellő számú kvantumbitet tárolonunk).
- A kvantumregiszter minden kvantumbitjén egyszerre végrehajthatóak átalaítások. Ezt nevezik kvantum-párhuzamosságnak. Ez nem egyenlő a párhuzamosítással, ami azt jelenti, hogy egymástól függetlenül több egység is ugyan azt végzi el. A kvantum-párhuzamosításnál egy adaton, egy egység, egyszerre hajtja végre ugyanazt a műveletet. Klasszikus számítógépeknél ilyenre nem igen van lehetőségünk, hiszen a CPU végső soron egyidőben csak egy műveletet tud végrehajtani.
- Jelenleg még nincs igazán szekvenciális kvantum programozás, pedig klasszikus programozásnál ez a legelterjedtebb módszer. Ez azért van, mert kvantumszámítógépet most még csak elemi alkatrészekből tudunk összerakni, így ezek célhardverek lesznek. Nincs általános célú feldolgozóegység kifejlesztve, ami tetszőleges operációt tudna végrehajtani az adaton egymás után. A kvantum hálózatok leírása pedig leginkább funkcionális nyelvekkel lehetséges.
- Klasszikus programoknál - ha betartjuk a típuskonverziókat - tetszőleges adatot lemásolhatunk, hiszen minden adat értékét pontosan ismerjük. Kvantumbiteknél nem így áll a helyzet: nem másolhatunk le tetszőleges kvantumbitet, csak ha ismerjük az állapotát, vagy egyértelműen meg tudjuk különböztetni őket. Ezt az elméletet figyelembe kell vennünk sokszor algoritmusok tervezésénél - néha jól jön, néha nem.

A felsorolt eltéréseknek számtalan további következménye is van, ami szintén eltérést eredményez. Ilyen pl. a kvantum teleportálás, ahol egy adatot úgy tudunk elküldeni másnak, hogy a valódi értékét ismernénk. A jelenlegi klasszikus számítógépek csak ismert biteket tudnak továbbítani a kábeleken keresztül.

#### Kvantum programozási nyelvek csoportosítása

Bár még jóval kevesebb nyelvet készítettem a kvantum programokhoz, mint a klasszikusokhoz, már most is elég sok kategóriát lefednek az elérhető nyelvek, így különféle területeken, különféle feladathoz lehet őket felhasználni. A programozási nyelvek csoportosíthatóak többek között a következők szerint is:

- Lehetnek alacsony vagy magas szintűek. Többnyire egy alacsony szintű nyelv szorosan kötődik a számítógéphez, vagy annak interfészéhez/utasításkészletéhez, a leírás elemi műveleteket tartalmaz, amit a számítógép akár közvetlenül is tudna értelmezni. Alacsony szintű leírásra alkalmas a [QASM][5], és a [Quil][6] nyelv.
- Egy részük hardverleíró nyelv. Ezek a nyelvek azt fogalmazzák meg, milyen alkatrészekből/elemekből lehet felépíteni a hálózatot, hogyan kapcsolódnak egymáshoz az eszközök. A nyelv elemeinek konkrét fizikai jelentésük van. Ilyen pl. a QASM.
- A nyelv feldolgozásának eredménye alapján lehet szimulációs (mint pl. a [Q#][7] vagy [libquantum][9] esetében), gráfmodellt vagy hálózatképet megjelenítő (pl. [Quipper][8], vagy csak simán emberek számára tájékoztató, pszeudokód-szerű.
- A nyelv belső felépítése szerint lehet egyszerű műveleteket leíró, kevés absztrakciót használó, mint a [QCL][10], vagy pl. objektum-orientált (ilyen volt a Q language).
- Mintájuk alapján lehetnek pl. funkcionálisak vagy szekvenciálisak, kombináltak stb.
- Épülhetnek korábban már elkészített nyelvekre (pl. a Quipper egy kiegészítése a [Haskell][11] nyelvnek, a [kvantum pszeudokód][12] kiegészítése a hagyományos pszeudokódnak), vagy lehetnek teljesen újonnan felépítettek.

További csoportosítási szempontok átvehetőek a klasszikus programozási nyelvek esetéből, mint pl. erősen típusús nyelvek, natív vagy értelmezett nyelvek. Ezeknek a csoportoknak azonban még nem igazán van szerepük jelenleg.

# Kvantum programozási nyelvek

Ebben a fejezetben néhány, egymástól eléggé eltérő kvantum programozással kapcsolatos nyelvet ismerhetünk meg. Az összehasonlíthatóság érdekében mindegyik nyelvnél találunk egy példát, ami a jól ismert Deutsch–Jozsa algoritmust mutatja be.

A feladat a következő: Adott egy függvény, `f(x)`, amiről csak annyit tudunk, hogy néha egy konstans értéket rendel a bemenethez, máskor viszont úgy viselkedik, mint egy pénzfeldobás: az esetek felében `a`, másik felében `b` értéket rendel a bemenethez. Határozzuk meg, egy konkrét esetben `f` melyik szabály szerint működik!

A feladat megoldható klasszikus programokkal is, azonban lépésszámra jóval nagyobb, mint amennyire a kvantumprogramoknak szüksége van. Egy lehetséges klasszikus megoldás, Java nyelven:

> Ez még lehet nem azt csinálja amit kéne.

{% include_relative assets/code/DeutschJozsaTest.java %}


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
