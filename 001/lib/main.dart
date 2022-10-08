import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(FalciUygulamasi());
}

class FalciUygulamasi extends StatelessWidget {
  const FalciUygulamasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text("Günlük Fal"),
          backgroundColor: Colors.purple,
        ),
        body: MainPage(),
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int yanitlarKontrol = 0;
  List<String> yanitlar = [
    'TIKLA FALIN GELSİN',
    'AŞK: Bugün, aşk ve ilişki hayatınızda biraz daha temkinli olmalısın. Onu her konuda doğru anlamda anladığından da emin misin?',
    'AŞK: Aşk ve ilişki hayatınızda hakimiyeti eline almak ve birlikteliğinizi dilediğiniz gibi yönlendirmek isteyebilirsin. Bu isteğinin denge içerisindeki bir ilişkiye ne şekilde fayda edeceğini gözden geçirmelisin.',
    'AŞK: Duygularınızın bugün biraz düzensiz olduğunu görebilirsiniz. Güne, daha önce hiç yapmadığınız bir şekilde başlamanızı sağlayan doğal bir elektrik hissi var. Kalbiniz her zaman doğruyu söyler.',
    'AŞK: Duygularınız çoğu zaman rasyonel düşüncelerinize galip geliyor ve sonunda derinlerde duyguların beslediği bir karmaşa ortaya çıkıyor. Çok da mantıklı düşünerek kalbinizi görmezden gelmeyin. Amacınız bu ikisi arasında dengeyi bulmak.',
    'AŞK: Duygusal olarak kötü hissetmeyin, sezgileriniz güçlü durumda. Sevgilinizin hislerini bu sezgiler ile anlamaya çalışın. Bazen sadece eğlenmek gerekir, siz de rahatlayın ve birlikte eğlenin!',
    'PARA: Kafanıza uzun süredir koyduğunuz bazı harcamalar var, bugün kendinize bunlara gerçekten ne kadar ihtiyacınız olduğunu sorun ve bir kısmını iptal edin. Bugün bir hayır kurumuna küçücük bir bağış yapın, kendinizi çok daha iyi hissedeceksiniz.',
    'PARA: Nakit akışınızın dengesini bozabilecek dönemlere giriyoruz, bu aralar kesinlikle masa başına oturup bir bütçe hesabı yapmalısınız, önümüzdeki 3 ay boyunca gelir gider dengenizden emin olmadan hareket etmeyin',
    'PARA: Bugün, başkalarına yardım, destek ve hizmet duygunuzun yüksek olduğu bir gün olabilir, hayır, bağış işlerinde yer alabilirsiniz.',
    'PARA: Bugün kendinize güveniniz oldukça yüksek, ancak bu size pek fayda getirmeyebilir, bağlantılarınız size verdikleri destekten şüphelenebilirler. Sakin hareket edin, bir adım geri durun, ve paradan çok sağlığınızla ilgilenin.',
    'PARA: Para kaynaklarımız ile ilgili detaylar bu dönem dikkat etmelisiniz. Ayrıca maddi konularda ve harcamalarda uzun süredir sizi meşgul eden bir konuda karara varabilirsiniz, yakınlarınızdan veya eşinizden karar alırken yardım isteyin.',
    'TAVSİYE: Bugün meraklı kişiliğini ön plana çıkartarak insanlara soru sormaktan çekinme ',
    'TAVSİYE: Bugün daha önce hiç fark etmediğin şeylerin hep orada olduğunu fark edebilirsin, sadece biraz daha dikkatli olmaya çalış',
    'TAVSİYE: Bugün ikili ilişkilerinde daha aktif ve verici olmaya çalışabilirsin, aynı fikirde olduğun insanları daha dikkatli dinlemeye ve sorgulamaya başla',
    'TAVSİYE: Bugün sadece işine odaklan, dikkatini dağıtacak her türlü nesne ve sosyal medyadan uzaklaşmak kendini daha mutlu hissettirebilir',
    'TAVSİYE: Bugün tek başına biraz yürüyüş yap, çocukluğunda dinlediğin şarkıları aç ve o zamanlar oynadığın oyunları hayal et'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(color: Colors.black),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 240,
              child: Image.asset("assets/images/falci.png"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8),
              child: Card(
                margin: EdgeInsets.symmetric(horizontal: 60, vertical: 5),
                color: Colors.red[400],
                child: ListTile(
                  onTap: () {
                    print("Aşk Durumuna tıklandı");
                    setState(() {
                      yanitlarKontrol = Random().nextInt(5)+1;
                    });
                  },
                  leading: Icon(
                    Icons.heart_broken,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Aşk Durumu",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 60, vertical: 5),
              color: Colors.green[400],
              child: ListTile(
                onTap: () {
                  print("Para Durumuye tıklandı");
                  setState(() {
                    yanitlarKontrol = Random().nextInt(5)+6;
                  });
                },
                leading: Icon(
                  Icons.monetization_on,
                  color: Colors.white,
                ),
                title: Text(
                  "Para Durumu",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 60, vertical: 5),
              color: Colors.orange[400],
              child: ListTile(
                onTap: () {
                  print("Günlük tavsiyeye tıklandı");
                  setState(() {
                    yanitlarKontrol = Random().nextInt(5)+11;
                  });
                },
                leading: Icon(
                  Icons.explore,
                  color: Colors.white,
                ),
                title: Text(
                  "Günlük Tavsiye",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              width: double.infinity,
              height: 150,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 5.0),
                child: Text(yanitlar[yanitlarKontrol],
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
