import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: Text("welcom"),
          backgroundColor: Colors.blueAccent,
        ),
        backgroundColor: Colors.grey,
        body: Center(
          child: Image(
              image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSFvYnevTpW6ZalCiz1grTyy2HmoU7kjeFcg&s")),
        )),
  ));
}
