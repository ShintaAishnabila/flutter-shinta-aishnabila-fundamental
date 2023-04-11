import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final lebar = MediaQuery.of(context).size.width;
    final tinggi = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF4F1BB),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(86),
          child: Container(
            padding: EdgeInsets.only(top: 26, bottom: 25, left: 32),
            width: 392,
            color: Color(0xFFED6A5A),
            child: Text(
              'CALCULATOR',
              style: TextStyle(
                  color: Color(0xFFF4F1BB),
                  fontSize: 25,
                  fontWeight: FontWeight.w800),
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 59),
            teksKu('RESULT: 0'),
            SizedBox(height: 43),
            textFieldKu('ENTER FIRST NUMBER'),
            SizedBox(height: 42),
            textFieldKu('ENTER SECOND NUMBER'),
            SizedBox(height: 59),
            tombolKu(() {}, 'ADD'),
            tombolKu(() {}, 'SUBSTRACT'),
            tombolKu(() {}, 'MULTIPLY'),
            tombolKu(() {}, 'DIVIDE'),
          ],
        ),
      ),
    );
  }
}

Widget teksKu(String data) {
  return Container(
    margin: EdgeInsets.only(left: 48),
    child: Text(data,
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black)),
  );
}

Widget textFieldKu(String data) {
  return Container(
    margin: EdgeInsets.only(right: 48, left: 48),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Color(0xFFD9D9D9),
    ),
    child: TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: data,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        labelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
      ),
    ),
  );
}

Widget tombolKu(VoidCallback hitungan, String data) {
  return Center(
      child: Container(
    height: 42,
    width: 202,
    margin: EdgeInsets.only(left: 95, right: 95, bottom: 40),
    child: ElevatedButton(
        onPressed: hitungan,
        child: Text(data,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800)),
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFED6A5A),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        )),
  ));
}
