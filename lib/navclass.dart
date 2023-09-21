import 'package:flutter/material.dart';

class NavClass extends StatelessWidget {
  final double result;

  NavClass({required this.result});

  String getHealthStatus() {
    if (result < 18.5) {
      return 'underweight';
    } else if (result >= 19.58 && result < 24.9) {
      return 'healthy';
    } else if (result >= 24.9 && result < 29.9) {
      return 'overweight';
    } else {
      return 'obese';
    }
  }

  @override
  Widget build(BuildContext context) {
    final healthStatus = getHealthStatus();

    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: Column(
          children: [
            Text(
              "Your Result",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15,),
            Container(
              color: Colors.white12,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    " $healthStatus",
                    style: TextStyle(color: Colors.green, fontSize: 26),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 280,
                    child: Center(
                      child: Text(
                        " Result: ${result.roundToDouble()}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 38,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Text(
                    "Your body health is $healthStatus, keep going and practice ",
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 22,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 180,
                  ),

                ],
              ),
            ),
            SizedBox(height: 40,),

            Container(
              color: Colors.pink,
              width: double.infinity,
              child: MaterialButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Re-Calculate'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
