import 'package:flutter/material.dart';

class iletisim extends StatefulWidget {
  const iletisim({Key? key}) : super(key: key);

  @override
  State<iletisim> createState() => _iletisimState();
}

class _iletisimState extends State<iletisim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("İletişim"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 250,
                    child: Image.asset("assets/images/acmpng.png"),
                  ),
                ),
                SizedBox(height: 50,),
                Text("Bizimle iletişime geçin", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                SizedBox(height: 25,),
                Text("Her türlü tavsiye, öneri, şikayet...", style: TextStyle(fontSize: 16),),
                SizedBox(height: 25,),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Ad"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Soyad"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TextField(
                    obscureText: false,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Telefon Numarası"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("E-mail"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Mesaj"),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: (){
                        print("Mesaj gönderildi!");
                      },
                      child: Text("Mesajı Gönder", style: TextStyle(fontSize: 24),)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
