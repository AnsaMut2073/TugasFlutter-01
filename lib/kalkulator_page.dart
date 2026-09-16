import 'package:flutter/material.dart';

class KalkulatorPage extends StatefulWidget {
  const KalkulatorPage({super.key});

  @override
  State<KalkulatorPage> createState() => _KalkulatorPageState();
}

class _KalkulatorPageState extends State<KalkulatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("kalkulator page")),
      body: Column(
        children: [
          Text("Selamat Datang!", style: TextStyle(
              fontSize: 20,
              color: Colors.teal,
              fontWeight: FontWeight.bold
          )),
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(hintText: 'A1'),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(hintText: 'A2'),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),  // <-- ini margin-nya
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {}, child: Text("+")),
                SizedBox(width: 10),
                ElevatedButton(onPressed: () {}, child: Text("-")),
                SizedBox(width: 10),
                ElevatedButton(onPressed: () {}, child: Text("×")),
                SizedBox(width: 10),
                ElevatedButton(onPressed: () {}, child: Text("/")),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(25),
            child: Text("hasil"),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: ElevatedButton(
                onPressed: () {},
                child: Text("RESET")
            ),
          ),
        ],
      )
    );
  }
}