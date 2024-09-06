import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Center(
            child: dice(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class dice extends StatefulWidget {
  dice({
    this.color,
    super.key,
  });
  Color? color;
  @override
  State<dice> createState() => _diceState();
}

class _diceState extends State<dice> {
  int number = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    print("setState");
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("tap!");

        setState(() {
          number = Random().nextInt(6) ;
        });
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 3),
            color: widget.color),
        height: 150,
        width: 150,
        child:[dice1(),
        dice2(),
        dice3(),
        dice4(),
        dice5(),
        dice6()] [number]
      ),
    );
  }
}

class dice2 extends StatelessWidget {
  const dice2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
     //       padding: EdgeInsets.all(15),
            child: Icon(Icons.circle),
          ),
          Container(
      //      padding: EdgeInsets.all(15),
            child: Icon(Icons.circle),
          )
        ],
      ),
    );
  }
}

class dice1 extends StatelessWidget {
  const dice1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.all(5),
            child: Icon(Icons.circle),
          )
        ],
      ),
    );
  }
}

class dice3 extends StatelessWidget {
  const dice3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.all(5),
            child: Icon(Icons.circle),
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: Icon(Icons.circle),
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: Icon(Icons.circle),
          ),
        ],
      ),
    );
  }
}

class dice4 extends StatelessWidget {
  const dice4({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [dice2(), dice2()],
      ),
    );
  }
}


class dice5 extends StatelessWidget {
  const dice5({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [dice2(), dice1(),dice2()],
      ),
    );
  }
}


class dice6 extends StatelessWidget {
  const dice6({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
         
          children: [dice3(), dice3()],
        ),
      ),
    );
  }
}
