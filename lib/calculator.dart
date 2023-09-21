import 'dart:math';

import 'package:flutter/material.dart';

import 'package:projectiti/navclass.dart';

class BMICalculator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return bmicalculator_state();
  }
}

class bmicalculator_state extends State {
  double slidervalue = 170;
  int wieght = 60;
  int age = 25;
  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: const Text(' BMI Calculator'),
        centerTitle: true,
        elevation: 3,
        titleTextStyle: TextStyle(
            color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
      ),
      backgroundColor: Colors.black26,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        isMale = true;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 155,
                        decoration: BoxDecoration(
                            color: isMale ? Colors.white12: Colors.black54,
                            borderRadius: BorderRadius.circular(24)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              size: 80,
                            ),
                            Text(
                              'Male',
                              style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w300),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  InkWell(
                    onTap: () {
                      isMale = !isMale;
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 170,
                          decoration: BoxDecoration(
                              color: isMale ? Colors.white12 : Colors.black54,
                              borderRadius: BorderRadius.circular(24)),
                          child: Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.female,
                                  size: 80,
                                ),
                                Text(
                                  'Female',
                                  style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w300),
                                )
                              ],
                            ),
                          )),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(32)),
                child: Container(
                  color: Colors.white12,
                  child: Column(
                    children: [
                      Text(
                        'Height',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            color: Colors.pink),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            '${slidervalue.round()}',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 40,
                                color: Colors.white),
                          ),
                          Text('CM',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white)),
                        ],
                      ),
                      Slider(
                        value: slidervalue,
                        onChanged: (value) {
                          setState(() {
                            slidervalue = value;
                            print(slidervalue.round());
                          });
                        },
                        max: 220,
                        min: 80,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.black45),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 165,height: 170,
                        decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(22)),
                        child: Column(
                          children: [
                            Text(
                              'Wieght',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white38),
                            ),
                            Text(
                              '$wieght',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.indigo),
                            ),
                            SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      wieght++;
                                      print("$age");
                                    });
                                  },
                                  mini: true,
                                  child: Icon(Icons.add),
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      wieght--;
                                      print("$age");
                                    });
                                  },
                                  mini: true,
                                  child: Icon(Icons.remove),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 170,height: 170,
                        decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(22)),
                        child: Column(
                          children: [
                            Text(
                              'Age',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white38),
                            ),
                            Text(
                              '$age',
                              style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.indigo),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      setState(() {
                                        age++;
                                        print("$age");
                                      });
                                    });
                                  },
                                  mini: true,
                                  child: Icon(Icons.add),
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                      print("$age");
                                    });
                                  },
                                  mini: true,
                                  child: Icon(Icons.remove),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            color: Colors.pink,
            width: double.infinity,
            child: MaterialButton(
              onPressed: () {
                var result = wieght / pow(slidervalue / 100, 2);
                print('${result.round()}');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NavClass(
                            result: result,
                          )),
                );
              },
              child: Text('Calculate'),
            ),
          ),
        ],
      ),
    );
  }
}
