import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final names = ["hello","welcom", "to", "flutter"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.blueGrey,
          body: SafeArea(
            child: Container(
              width: 500,
              color: Colors.grey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 10,),
                for (int i = 0; i < 4; i++)
                  Column(
                    children: [
                      Text("good luck"),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
                        padding: EdgeInsets.all(15),
                        height: 50,
                        width: 100,
                        color: Colors.blueAccent,
                        child: Text(names[i]),
                      ),
                    
                  
                 Container(
                  color: Colors.white,
                  height: 5,
                  width: 100,

                  ),
                  SizedBox(
                    width: 100,
                    height: 50,
                    child: 
                  Divider()
                  ),
              ],
            ),
              ],
        ),
      ),)
    ),));
  }
}
