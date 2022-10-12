import 'package:acm_mobil_calismasi/events.dart';
import 'package:acm_mobil_calismasi/iletisim.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'nextEvent.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String headerName = "Faruk";

  static List<String> imgList = [
    'assets/images/1.jfif',
    'assets/images/2.jfif',
    'assets/images/3.jfif',
    'assets/images/4.jfif',
    'assets/images/5.jfif',
  ];

  static List<String> imageHeader = [
    "Kristal Geyik Ödülleri",
    "ACM Nedir?",
    "Opening Party",
    "Talewords",
    "Unithon Engineering",
    "ACM",
  ];

  final List<Widget> imageSliders = imgList
      .map((item) => Container(
            child: Container(
              margin: EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: <Widget>[
                      GestureDetector(
                          onTap: () {},
                          child: Image.asset(item,
                              fit: BoxFit.cover, width: 1000.0)),
                      Positioned(
                        bottom: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(200, 0, 0, 0),
                                Color.fromARGB(0, 0, 0, 0)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          child: Text(
                            ' ${imageHeader[imgList.indexOf(item)]}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ))
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ACM'e Hoşgeldin ${headerName}"),
      ),
      drawer: Drawer(
        elevation: 10.0,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              //child: Text("ACM'e Hoşgeldin ${headerName}", style: TextStyle(color: Colors.white, fontSize: 20),),

              decoration: BoxDecoration(
                color: Colors.purpleAccent,
                /*
                image: DecorationImage(
                  image: AssetImage("assets/images/acm_logo.png"),
                  fit: BoxFit.fill,
                ),
                */
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage(
                      "assets/images/pppicture.jpg",
                    ),
                    radius: 35.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Faruk Derdiyok',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25.0),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'farukderdiyok01@gmail.com',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 12.0),
                      ),
                    ],
                  )
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
              ),
              title: const Text(
                "Ana Sayfa",
                style: TextStyle(fontSize: 16),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.computer,
              ),
              title: const Text(
                "ACM Nedir",
                style: TextStyle(fontSize: 16),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.music_note,
              ),
              title: const Text(
                "Neler Yapıyoruz",
                style: TextStyle(fontSize: 16),
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (builder) => events()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.grid_3x3,
              ),
              title: const Text(
                "Biz Kimiz",
                style: TextStyle(fontSize: 16),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.local_fire_department,
              ),
              title: const Text(
                "Duyurular",
                style: TextStyle(fontSize: 16),
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (builder) => events()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.newspaper,
              ),
              title: const Text(
                "Blog",
                style: TextStyle(fontSize: 16),
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (builder) => events()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.contact_mail,
              ),
              title: const Text(
                "İletişim",
                style: TextStyle(fontSize: 16),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => iletisim()));
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  color: Colors.red[500],
                  child: ListTile(
                    onTap: () {
                      print("");
                      setState(() {
                        //NavigationService().navigateToScreen(nextEvent());
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => nextEvent()));
                      });
                    },
                    leading: Icon(
                      Icons.local_fire_department,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Sıradaki Etkinlik: Tanışma Partisi",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey[500],
                ),
                Container(
                  child: CarouselSlider(
                    options: CarouselOptions(
                      aspectRatio: 2.0,
                      enlargeCenterPage: true,
                      enableInfiniteScroll: false,
                      initialPage: 2,
                      autoPlay: true,
                    ),
                    items: imageSliders,
                  ),
                ),
                Divider(
                  color: Colors.grey[500],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "ACM HACETTEPE 22-23 KAYILARI BAŞLADI",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Hemen Kayıt Ol",
                    style: TextStyle(fontSize: 21),
                  ),
                ),
                Divider(
                  color: Colors.grey[500],
                ),
                Card(
                  child: Container(
                    width: 400,
                    color: Colors.purple[100],
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.fastfood, color: Colors.purple[900],),
                              Text(
                                " Günün Yemeği",
                                style: TextStyle(
                                    fontSize: 24, color: Colors.purple[900]),
                              ),

                            ],
                          ),
                          Text(
                            "12.10.2022 Çarşamba",
                            style: TextStyle(fontSize: 18),
                          ),
                          Text("Mantar Çorbası", style: TextStyle(fontSize: 18),),
                          Text("Izgara Köfte", style: TextStyle(fontSize: 18),),
                          Text("Cevizli Erişte", style: TextStyle(fontSize: 18),),
                          Text("Hoşaf", style: TextStyle(fontSize: 18),),
                          Text("Kalori : 1300", style: TextStyle(fontSize: 18),),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
