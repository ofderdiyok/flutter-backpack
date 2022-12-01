import 'package:beklenen_yasam_suresi/constants.dart';
import 'package:beklenen_yasam_suresi/result_page.dart';
import 'package:beklenen_yasam_suresi/user_data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'MyContainer.dart';
import 'MyGenderColumn.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  late String seciliCinsiyet = "";
  double icilenSigara = 0;
  double yapilanSporGunSayisi = 0;
  int boy = 170;
  int kilo = 75;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Yaşam Beklentisi',
          style: TextStyle(color: Colors.white, fontSize: 27),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                    child: buildRowPlusMinusButton("Boy"),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    child: buildRowPlusMinusButton("Kilo"),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: MyContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Kaç gün spor yapıyorsunuz?",
                    style: kMetin,
                  ),
                  Text(
                    yapilanSporGunSayisi.round().toString(),
                    style: TextStyle(
                        color: yapilanSporGunSayisi > 2
                            ? Colors.green[600]
                            : Colors.red,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Slider(
                      min: 0,
                      max: 7,
                      divisions: 7,
                      value: yapilanSporGunSayisi,
                      onChanged: (double value) {
                        setState(() {
                          yapilanSporGunSayisi = value;
                        });
                      }),
                ],
              ),
            ),
          ),
          Expanded(
            child: MyContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Günde kaç sigara içiyorsunuz? ",
                    style: kMetin,
                  ),
                  Text(
                    icilenSigara.round().toString(),
                    style: TextStyle(
                        color: Colors.red[600],
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Slider(
                    min: 0,
                    max: 30,
                    value: icilenSigara,
                    onChanged: (double value) {
                      setState(() {
                        icilenSigara = value;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                    onPress: () {
                      setState(() {
                        seciliCinsiyet = "Kadın";
                      });
                    },
                    renk: seciliCinsiyet == "Kadın"
                        ? Colors.grey[300]
                        : Colors.white,
                    child: MyGenderColumn(
                      icon: FontAwesomeIcons.venus,
                      text: "Kadın",
                    ),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    onPress: () {
                      setState(() {
                        seciliCinsiyet = "Erkek";
                      });
                    },
                    renk: seciliCinsiyet == "Erkek"
                        ? Colors.grey[300]
                        : Colors.white,
                    child: MyGenderColumn(
                      icon: FontAwesomeIcons.mars,
                      text: "Erkek",
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 60,
            child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>ResultPage(
                    UserData(seciliCinsiyet: seciliCinsiyet, icilenSigara: icilenSigara, yapilanSporGunSayisi: yapilanSporGunSayisi, boy: boy, kilo: kilo),
                  )));
                },
                child: Text("Sonucu Gör", style: TextStyle(fontSize: 27),)),
          ),
        ],
      ),
    );
  }

  Row buildRowPlusMinusButton(String label) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        RotatedBox(quarterTurns: -1, child: Text(label, style: kMetin)),
        RotatedBox(
          quarterTurns: -1,
          child: Text(
            label=="Boy" ? "${boy}" : "${kilo}",
            style: TextStyle(
                color: Colors.blue[500],
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.blue)),
              onPressed: () {
                setState(() {
                  label=="Boy" ? boy++ : kilo++;
                });
              },
              child: Icon(Icons.add),
            ),
            ButtonTheme(
              minWidth: 36,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.blue)),
                onPressed: () {
                  setState(() {
                    label=="Boy" ? boy-- : kilo--;
                  });
                },
                child: Icon(Icons.remove),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
