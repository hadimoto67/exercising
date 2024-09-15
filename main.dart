import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(myApp());
}

class myApp extends StatefulWidget {
  myApp({super.key});

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
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
              title: const Text(
                "BMI CALCULATER",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
              backgroundColor: const Color.fromARGB(97, 4, 2, 97),
            ),
            body: Column(
              children: [
                //part one
                Expanded(
                  child: Container(
                    height: 140,
                    // color: Color.fromARGB(98, 109, 71, 18),
                    child: Row(
                      //first column
                      children: [
                        Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(99, 20, 20, 184),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            margin: const EdgeInsets.fromLTRB(8, 8, 4, 8),
                            padding: const EdgeInsets.all(20),
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  firstColor = Colors.white;
                                  secondColor = Colors.grey;
                                });
                              },
                              child: Column(
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
                                Radius.circular(15),
                              ),
                            ),
                            margin: const EdgeInsets.fromLTRB(8, 8, 4, 8),
                            padding: const EdgeInsets.all(20),
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  firstColor = Colors.grey;
                                  secondColor = Colors.white;
                                });
                              },
                              child: Column(
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
                ),
                //part two
                Expanded(
                  child: Container(
                    height: 180,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(99, 20, 20, 184),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    margin: const EdgeInsets.fromLTRB(8, 8, 8, 8),
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
                                  setState(() {
                                    sliderValue = k;
                                  });
                                }),
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
                                Radius.circular(15),
                              ),
                            ),
                            margin: const EdgeInsets.fromLTRB(8, 8, 4, 8),
                            padding: const EdgeInsets.all(20),
                            child: Column(
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
                                Radius.circular(15),
                              ),
                            ),
                            margin: const EdgeInsets.fromLTRB(8, 8, 4, 8),
                            padding: const EdgeInsets.all(20),
                            child: Column(
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
                Flexible(
                  fit: FlexFit.tight,
                  child: MaterialButton(
                    onPressed: () {
                      //bmi clculate
                      String status;
                      // var math;
                      double bmi = weight / pow(sliderValue, 2/100);
                      print(bmi.toString());


                      if (bmi < 18.5) {
                        status = "under weight";
                      } 
                      else if (bmi > 18.5 && bmi < 24.9) {
                        status = "healthy weight";
                      } 
                      else if (bmi > 24.9 && bmi < 29.9) {
                        status = "over weight";
                      } 
                      else if (bmi > 30) {
                        status = "obese";
                      } 
                      else {
                        status = "error!your bmi is $bmi";
                      }

                      showCupertinoDialog(
                          context: context,
                          builder: (context) => CupertinoAlertDialog(
                                title: const Text("your status is ..."),
                                content: Text(status),
                                actions: [
                                  TextButton(
                                    onPressed: () => Navigator.of(context).pop(),
                                    child: const Text("dismis"),
                                  ),
                                ],
                              ));
                    },
                    color: Colors.amber,
                    minWidth: double.infinity,
                    child: const Text(
                      "CALCULATE",
                      style: TextStyle(color: Colors.white, fontSize: 50),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
