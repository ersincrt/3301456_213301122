import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
              displayColor: Colors.white,
            ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

int yanitIndex = 0;

class _MyHomePageState extends State<MyHomePage> {
  List<String> yanitlar = [
    'TIKLA GÜNLÜK BURÇ YORUMUN GELSİN',
    'KOÇ: Bugün, aşk ve ilişki hayatınızda biraz daha temkinli olmalısın. Onu her konuda doğru anlamda anladığından da emin misin?',
    'KOÇ: Aşk ve ilişki hayatınızda hakimiyeti eline almak ve birlikteliğinizi dilediğiniz gibi yönlendirmek isteyebilirsin. Bu isteğinin denge içerisindeki bir ilişkiye ne şekilde fayda edeceğini gözden geçirmelisin.',
    'KOÇ: Duygularınızın bugün biraz düzensiz olduğunu görebilirsiniz. Güne, daha önce hiç yapmadığınız bir şekilde başlamanızı sağlayan doğal bir elektrik hissi var. Kalbiniz her zaman doğruyu söyler.',
    'KOÇ: Duygularınız çoğu zaman rasyonel düşüncelerinize galip geliyor ve sonunda derinlerde duyguların beslediği bir karmaşa ortaya çıkıyor. Çok da mantıklı düşünerek kalbinizi görmezden gelmeyin. Amacınız bu ikisi arasında dengeyi bulmak.',
    'KOÇ: Duygusal olarak kötü hissetmeyin, sezgileriniz güçlü durumda. Sevgilinizin hislerini bu sezgiler ile anlamaya çalışın. Bazen sadece eğlenmek gerekir, siz de rahatlayın ve birlikte eğlenin!',
    'İKİZLER: Kafanıza uzun süredir koyduğunuz bazı harcamalar var, bugün kendinize bunlara gerçekten ne kadar ihtiyacınız olduğunu sorun ve bir kısmını iptal edin. Bugün bir hayır kurumuna küçücük bir bağış yapın, kendinizi çok daha iyi hissedeceksiniz.',
    'İKİZLER: Nakit akışınızın dengesini bozabilecek dönemlere giriyoruz, bu aralar kesinlikle masa başına oturup bir bütçe hesabı yapmalısınız, önümüzdeki 3 ay boyunca gelir gider dengenizden emin olmadan hareket etmeyin',
    'İKİZLER: Bugün, başkalarına yardım, destek ve hizmet duygunuzun yüksek olduğu bir gün olabilir, hayır, bağış işlerinde yer alabilirsiniz.',
    'İKİZLER: Bugün kendinize güveniniz oldukça yüksek, ancak bu size pek fayda getirmeyebilir, bağlantılarınız size verdikleri destekten şüphelenebilirler. Sakin hareket edin, bir adım geri durun, ve paradan çok sağlığınızla ilgilenin.',
    'İKİZLER: Para kaynaklarımız ile ilgili detaylar bu dönem dikkat etmelisiniz. Ayrıca maddi konularda ve harcamalarda uzun süredir sizi meşgul eden bir konuda karara varabilirsiniz, yakınlarınızdan veya eşinizden karar alırken yardım isteyin.',
    'TERAZİ: Bugün meraklı kişiliğini ön plana çıkartarak insanlara soru sormaktan çekinme ',
    'TERAZİ: Bugün daha önce hiç fark etmediğin şeylerin hep orada olduğunu fark edebilirsin, sadece biraz daha dikkatli olmaya çalış',
    'TERAZİ: Bugün ikili ilişkilerinde daha aktif ve verici olmaya çalışabilirsin, aynı fikirde olduğun insanları daha dikkatli dinlemeye ve sorgulamaya başla',
    'TERAZİ: Bugün sadece işine odaklan, dikkatini dağıtacak her türlü nesne ve sosyal medyadan uzaklaşmak kendini daha mutlu hissettirebilir',
    'TERAZİ: Bugün tek başına biraz yürüyüş yap, çocukluğunda dinlediğin şarkıları aç ve o zamanlar oynadığın oyunları hayal et'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey,
        title: Text('BURÇ YORUMLARI'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
                width: 150,
                margin: EdgeInsets.only(bottom: 20),
                child: Image.asset('assets/zodiac.webp')),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 40.0),
              child: ListTile(
                leading: Icon(Icons.heat_pump, color: Colors.grey),
                title: Text(
                  'KOÇ BURCU',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                onTap: () {
                  setState(() {
                    yanitIndex = Random().nextInt(5) + 1;
                  });
                },
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 40.0),
              child: ListTile(
                leading: Icon(
                  Icons.heat_pump,
                  color: Colors.brown,
                ),
                title: Text(
                  'İKİZLER BURCU',
                  style: TextStyle(
                    color: Colors.brown,
                  ),
                ),
                onTap: () {
                  setState(() {
                    yanitIndex = Random().nextInt(5) + 6;
                  });
                },
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 40.0),
              child: ListTile(
                leading: Icon(
                  Icons.heat_pump,
                  color: Colors.blue,
                ),
                title: Text(
                  'TERAZİ BURCU',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
                onTap: () {
                  setState(() {
                    yanitIndex = Random().nextInt(5) + 11;
                  });
                },
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 25),
                height: 150,
                width: double.infinity,
                child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                    child: Text(yanitlar[yanitIndex],
                        style: TextStyle(fontSize: 16),
                        textAlign: TextAlign.center))),
            Text(("Github değişiklik kontrolü için eklendi "))
          ],
        ),
      ),
    );
  }
}
