import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/modules/bmi_calculatord/bmi_result.dart';
import 'package:my_app/shered/stayles/colors.dart';
import 'package:my_app/shered/stayles/icons.dart';

class BmiCalculatorScreen extends StatefulWidget {
  const BmiCalculatorScreen({Key? key}) : super(key: key);

  @override
  _BmiCalculatorScreenState createState() => _BmiCalculatorScreenState();
}

class _BmiCalculatorScreenState extends State<BmiCalculatorScreen> {
  bool isFemale = true;
  double height = 120.0;
  int age = 20;
  int weight = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI Calculator',
          style: TextStyle(
              fontSize: 30.0
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(17.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          isFemale = true;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const[
                            Image(
                              image:AssetImage('Assets/image/female.png'),
                              height: 90.0,
                              width: 90.0,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              'Female',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                  color: Colors.grey
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: isFemale ? darkGrey : colorContainer,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          isFemale = false;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:const [
                            Image(
                              image: AssetImage('Assets/image/male.png'),
                              height: 90.0,
                              width: 90.0,
                              color: Colors.white,
                            ),
                            SizedBox(
                               height: 20.0,
                             ),
                             Text(
                              'Male',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                  color: Colors.grey

                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            5.0,
                          ),
                          color:!isFemale ? darkGrey : colorContainer,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(
              horizontal: 17.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                   const Text(
                    'HEIGHT',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                        color: Colors.grey

                    ),
                  ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.baseline,
                     textBaseline: TextBaseline.alphabetic,
                     children:  [
                       Text(
                        '${height.round()}',
                        style: const TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.w900,
                          color: Colors.white
                        ),
                  ),
                        const Text(
                        'CM',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                            color: Colors.grey

                        ),
                  ),
                     ],
                   ),
                  Slider(
                    value: height,
                    max: 225.0,
                    min: 80,
                    activeColor: colorButton,
                    inactiveColor: Colors.grey,
                    onChanged: (value)
                    {
                      setState(() {
                        height = value;
                      });
                    },
                  ),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  5.0,
                ),
                color: colorContainer,
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(17.0),
              //margin: const EdgeInsets.all(0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          5.0,
                        ),
                        color: colorContainer,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'AGE',
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey
                            ),
                          ),
                           Text(
                            '$age',
                            style: const TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.w900,
                              color: Colors.white
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                heroTag: 'age--',
                                mini: true,
                                backgroundColor: Colors.grey[700],
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                child:const Icon(
                                  Icons.remove,
                                ),
                              ),
                              FloatingActionButton(
                                heroTag: 'age++',
                                mini: true,
                                backgroundColor: Colors.grey[700],
                                onPressed: ()
                                {
                                  setState(() {
                                    age++;
                                  });
                                },
                                child:const Icon(
                                  Icons.add,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          5.0,
                        ),
                        color: colorContainer,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'WEIGHT',
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey
                            ),
                          ),
                           Text(
                            '$weight',
                            style: const TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                heroTag: 'weight--',
                                mini: true,
                                backgroundColor: Colors.grey[700],
                                onPressed: ()
                                {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                child:const Icon(
                                  Icons.remove,
                                ),
                              ),
                              FloatingActionButton(
                                heroTag: 'weight ++',
                                mini: true,
                                backgroundColor: Colors.grey[700],
                                onPressed: ()
                                {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                child:const Icon(
                                  Icons.add,
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
          Container(
           width: double.infinity,
           height: 50.0,
           color: colorButton,
           child: MaterialButton(
               child:const Text(
                 'Calculator',
                 style: TextStyle(
                   fontSize: 20.0,
                   color: Colors.white,
                 ),
               ),
               onPressed:() {
                 double result = weight / pow(height / 100, 2);
                 print(result.roundToDouble());
                 Navigator.push(context,
                   MaterialPageRoute(
                     builder: (context) => BmiResultScreen(
                       isFemale: isFemale,
                       age: age,
                       result: result.roundToDouble(),
                     ),
                   ),
                 );
               }
               ),
         ),
        ],
      ),
    );
  }
}
