import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/shered/stayles/colors.dart';

class BmiResultScreen extends StatelessWidget {

  final bool isFemale;
  final double result;
  final int age;

    const BmiResultScreen({Key? key,
    required this.isFemale,
    required this.result,
    required this.age,
}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI RESULT',
          style: TextStyle(
            fontSize: 30.0
          ),
        ),
      ),
      body: Column(
        children: [
           const Padding(
             padding:EdgeInsets.all(30.0),
             child: Text(
              'Your Result',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50.0,
                color: Colors.white,
              ),
          ),
           ),
           Container(
             margin: const EdgeInsets.symmetric(
                 horizontal: 10.0
             ),
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10.0,),
               color: colorContainer,
             ),
             width: double.infinity,
             height: 500.0,
             child: Padding(
               padding: const EdgeInsets.symmetric(
                   vertical: 50.0,
                 horizontal: 40.0,
               ),
               child: Column(
                 children: [
                   Image(
                     image:isFemale? const AssetImage('Assets/image/female.png') : const AssetImage('Assets/image/male.png'),
                     height: 150.0,
                     width: 150.0,
                     color: Colors.green[800],
                   ),
                   const SizedBox(
                     height: 50.0,
                   ),
                   Text(
                     '${result.roundToDouble()}',
                     style: const TextStyle(
                       fontWeight: FontWeight.w900,
                       fontSize: 85.0,
                       color: Colors.white,
                     ),
                   ),
                   const SizedBox(
                     height: 45.0,
                   ),
                   if( result >= 18.5 && result <= 25)
                   const Text(
                    'You have a normal body weight.\n Good job!.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                   const Text(
                     'You have a Abnormal body weight.\n Take care of your health!.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20.0,
                      color: Colors.white,
                   ),
                   ),
                 ],
               ),
             ),
           ),
          const SizedBox(
            height: 20.0,
          ),
          Container(
            width: double.infinity,
            height: 55.0,
            color: colorButton,
            child: MaterialButton(
              onPressed: ()
              {
                Navigator.pop(context);
              },
              child:const Text(
                'Re-Calculator',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
