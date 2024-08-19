import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final names =[
    "welcom","to","flutter"
  ];
  @override
  Widget build(BuildContext context) {
    var container4 = Container(
                  color:Colors.greenAccent
                  
                 
                
                    child: Column(
                          mainAxisSize:MainAxisSize.max,
                          children: [
                            for (int i=0;i<3;i++)
                            Container(
                             margin: EdgeInsets.symmetric(horizontal: 20,vertical: 60),
                        padding: EdgeInsets.all(15),
                        height: 100,
                        width: 100,
                        color: Colors.grey,
                        child: Text(names[i]),
                            )
                          ]
                        ),
                    
                  );
    var container3 = container4;
    var container2 = container3;
    var container = container2;
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
              backgroundColor: Colors.blueGrey,
              body: SafeArea(
                child:container,
                
               
              )),
        ),
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

widget({required Column child}) {
}
