import 'package:flutter/material.dart';

class nextEvent extends StatefulWidget {
  const nextEvent({Key? key}) : super(key: key);

  @override
  State<nextEvent> createState() => _nextEventState();
}

class _nextEventState extends State<nextEvent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },),
        title: Text("Sıradaki Etkinlik"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 45, vertical: 10),
                  color: Colors.purple[500],
                  child: ListTile(
                    onTap: () {
                      print("");
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => nextEvent()));
                      });
                    },
                    leading: Icon(
                      Icons.local_fire_department,
                      color: Colors.white,
                    ),
                    title:Text(
                      "Tanışma Partisi",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
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
