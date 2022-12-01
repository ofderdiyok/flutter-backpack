import 'package:beklenen_yasam_suresi/constants.dart';
import 'package:beklenen_yasam_suresi/user_data.dart';
import 'package:flutter/material.dart';

import 'hesap.dart';

class ResultPage extends StatelessWidget {
  final UserData _userData;

  ResultPage(this._userData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sonuç Sayfası"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 8,
            child: Center(
              child: Text(
                "Beklenen Yaşam Süresi: ${Hesap(_userData).hesaplama()}",
                style: kMetin,
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Geri Dön",
                style: TextStyle(fontSize: 27),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
