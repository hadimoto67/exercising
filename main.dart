import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(FirstRoute());
}

class FirstRoute extends StatefulWidget {
  FirstRoute({super.key});

  @override
  State<FirstRoute> createState() => _FirstRouteState();
}

class _FirstRouteState extends State<FirstRoute> {
  Color firstColor = Colors.grey;
  Color secondColor = Colors.grey;
  double sliderValue = 172;
  int weight = 70;
  int age = 50;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (context) {
          return Scaffold(
            backgroundColor: const Color.fromARGB(99, 23, 9, 146),
            appBar: AppBar(
              title: Center(
                child: const Text(
                  "BMI CALCULATER",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
              backgroundColor: const Color.fromARGB(97, 4, 2, 97),
            ),
            body: Column(
              children: [
                //part one
                Expanded(
                  child: Row(
                    //first column
                    children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(99, 20, 20, 184),
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          margin: const EdgeInsets.all(5),
                          padding: const EdgeInsets.all(5),
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                firstColor = Colors.white;
                                secondColor = Colors.grey;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "FEMALE",
                                  style: TextStyle(color: firstColor),
                                ),
                                Icon(
                                  Icons.female,
                                  size: 90,
                                  color: firstColor,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(99, 20, 20, 184),
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          margin: const EdgeInsets.all(5),
                          padding: const EdgeInsets.all(5),
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                firstColor = Colors.grey;
                                secondColor = Colors.white;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "MALE",
                                  style: TextStyle(color: secondColor),
                                ),
                                Icon(
                                  Icons.male,
                                  size: 90,
                                  color: secondColor,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //part two
                Expanded(
                  child: Container(
                    height: 180,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(99, 20, 20, 184),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(30),
                    //color: Color.fromARGB(97, 236, 141, 7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            const Text(
                              "HEIGTH",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  sliderValue.toString().substring(0, 3),
                                  style: const TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                  ),
                                ),
                                const Text(
                                  "cm",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                )
                              ],
                            ),
                            CupertinoSlider(
                              value: sliderValue,
                              activeColor: Colors.white,
                              min: 120,
                              max: 240,
                              divisions: 120,
                              onChanged: (k) {
                                setState(
                                  () {
                                    sliderValue = k;
                                  },
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                //part three
                Expanded(
                  child: Container(
                    height: 170,
                    //color: Color.fromARGB(98, 109, 71, 18),
                    child: Row(
                      children: [
                        Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(99, 20, 20, 184),
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            margin: const EdgeInsets.all(5),
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "WEIGHT",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                Text(
                                  weight.toString(),
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FloatingActionButton(
                                      onPressed: () {
                                        setState(() {
                                          weight--;
                                        });
                                      },
                                      mini: true,
                                      backgroundColor:
                                          const Color.fromARGB(99, 20, 20, 184),
                                      child: const Icon(
                                        Icons.remove_circle,
                                        color: Colors.white,
                                        size: 40,
                                      ),
                                    ),
                                    FloatingActionButton(
                                      onPressed: () {
                                        setState(() {
                                          weight++;
                                        });
                                      },
                                      mini: true,
                                      backgroundColor:
                                          const Color.fromARGB(99, 20, 20, 184),
                                      child: const Icon(
                                        Icons.add_circle,
                                        color: Colors.white,
                                        size: 40,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(99, 20, 20, 184),
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            margin: const EdgeInsets.all(5),
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "AGE",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                Text(
                                  age.toString(),
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FloatingActionButton(
                                      onPressed: () {
                                        setState(() {
                                          age--;
                                        });
                                      },
                                      mini: true,
                                      backgroundColor:
                                          const Color.fromARGB(99, 20, 20, 184),
                                      child: const Icon(
                                        Icons.remove_circle,
                                        color: Colors.white,
                                        size: 40,
                                      ),
                                    ),
                                    FloatingActionButton(
                                      onPressed: () {
                                        setState(() {
                                          age++;
                                        });
                                      },
                                      mini: true,
                                      backgroundColor:
                                          const Color.fromARGB(99, 20, 20, 184),
                                      child: const Icon(
                                        Icons.add_circle,
                                        color: Colors.white,
                                        size: 40,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                //part four
                Container(
                  // height: 140,
                  //color: Color.fromARGB(97, 57, 18, 109),
                  child: Flexible(
                    fit: FlexFit.tight,
                    child: MaterialButton(
                      onPressed: () {
                        //bmi clculate
                        String status;
                        // var math;
                        double bmi = weight / pow(sliderValue, 2 / 10);
                        print(bmi.toString());
                        if (bmi < 18.5)
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SecondRoute()));
                        else if (bmi > 18.5 && bmi < 24.9)
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const thirdRoute()),
                          );
                        else if (bmi > 24.9 && bmi < 29.9)
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const fourthRoute(),
                            ),
                          );
                        else if (bmi > 30)
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const fifthRoute(),
                            ),
                          );
                        else
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const sixthRoute(),
                            ),
                          );
                        //Navigator.push(
                        // context,
                        // MaterialPageRoute(
                        //   builder: (context) => const SecondRoute()),

                        // );//;showCupertinoDialog(context:
                        // context, builder: (context) => CupertinoAlertDialog(),)
                      },
                      color: Colors.amber,
                      minWidth: double.infinity,
                      child: const Text(
                        "CALCULATE",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),
                  ),
                  padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

//class FirstRoute extends StatelessWidget {
// const FirstRoute({super.key});

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('First Route'),
    ),
    body: Center(
      child: ElevatedButton(
        child: const Text('Open route'),
        onPressed: () {
          // Navigate to second route when tapped.
        },
      ),
    ),
  );
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'your result',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: const Color.fromARGB(99, 20, 20, 184),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text(
                "your status is :",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 500,
                margin: const EdgeInsets.all(30),
                child: Card(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  color: const Color.fromARGB(255, 4, 73, 9),
                  elevation: 10,
                  child: const Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "skinny",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 40),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                            padding:
                                EdgeInsets.all(10)), //Text("your bmi is :"),
                        //  Text("data"),
                        Image(
                          image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgbuUQImfGEZZ1X0G4HabtuDcWfP0C8Ad8Iw&s",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  //r
                },
                child: const Text(
                  "back",
                  style: TextStyle(color: Colors.white),
                ),
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    fixedSize: Size(340, 60),
                    backgroundColor: Colors.amber,
                    textStyle: TextStyle(fontSize: 20)),
              ),
            ],
          ),
        ),
        backgroundColor: const Color.fromARGB(97, 4, 2, 97));
  }
}

class thirdRoute extends StatelessWidget {
  const thirdRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'your result',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: const Color.fromARGB(99, 20, 20, 184),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text(
                "your status is :",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 500,
                margin: const EdgeInsets.all(30),
                child: Card(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  color: const Color.fromARGB(255, 7, 255, 28),
                  elevation: 10,
                  child: const Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "normal",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 40),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                            padding:
                                EdgeInsets.all(20)), //Text("your bmi is :"),
                        //  Text("data"),
                        Image(
                          image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSupGE20Ikug36Xpty_jS6CotQwv3-WJA74Ew&s",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  //r
                },
                child: const Text(
                  "back",
                  style: TextStyle(color: Colors.white),
                ),
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    fixedSize: Size(340, 60),
                    backgroundColor: Colors.amber,
                    textStyle: TextStyle(fontSize: 20)),
              ),
            ],
          ),
        ),
        backgroundColor: const Color.fromARGB(97, 4, 2, 97));
  }
}

class fourthRoute extends StatelessWidget {
  const fourthRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'your result',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: const Color.fromARGB(99, 20, 20, 184),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text(
                "your status is :",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 500,
                margin: const EdgeInsets.all(30),
                child: Card(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  color: Colors.amber,
                  elevation: 10,
                  child: const Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "over weight",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 40),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                            padding:
                                EdgeInsets.all(20)), //Text("your bmi is :"),
                        //  Text("data"),
                        Image(
                          image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFU2jBbQBmSsH-kU0D0iVhH8VnHQFPrbGo1g&s",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  //r
                },
                child: const Text(
                  "back",
                  style: TextStyle(color: Colors.white),
                ),
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    fixedSize: Size(340, 60),
                    backgroundColor: Colors.amber,
                    textStyle: TextStyle(fontSize: 20)),
              ),
            ],
          ),
        ),
        backgroundColor: const Color.fromARGB(97, 4, 2, 97));
  }
}

class fifthRoute extends StatelessWidget {
  const fifthRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'your result',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: const Color.fromARGB(99, 20, 20, 184),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text(
                "your status is :",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 500,
                margin: const EdgeInsets.all(30),
                child: Card(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  color: const Color.fromARGB(255, 255, 65, 7),
                  elevation: 10,
                  child: const Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "obese",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 40),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                            padding:
                                EdgeInsets.all(20)), //Text("your bmi is :"),
                        //  Text("data"),
                        Image(
                          image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyON2ADOvumhJvBA8Vf58SsBq6SSnrHJPr-4WJ-iIzPj1Ktv6_vfxGY_CEbK0JwQxsd0M&usqp=CAU",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  //r
                },
                child: const Text(
                  "back",
                  style: TextStyle(color: Colors.white),
                ),
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    fixedSize: Size(340, 60),
                    backgroundColor: Colors.amber,
                    textStyle: TextStyle(fontSize: 20)),
              ),
            ],
          ),
        ),
        backgroundColor: const Color.fromARGB(97, 4, 2, 97));
  }
}

class sixthRoute extends StatelessWidget {
  const sixthRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('sixth Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
            // Navigate back to first route when tapped.
          },
          child: const Text('dismis'),
        ),
      ),
    );
  }
}
