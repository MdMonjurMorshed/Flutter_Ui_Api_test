import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:test_application/themes/theme.dart';

class Grocery extends StatelessWidget {
  const Grocery({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: height / 12),
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: EdgeInsets.only(top: height / 14),
                  child: Column(children: [
                    Center(
                        child: Text(
                      'Best quality',
                      style: TextStyle(
                          fontSize: width / 12, color: Colors.blueGrey),
                    )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Grocery',
                          style: TextStyle(
                              fontSize: width / 12,
                              color: Apptheme.appColor.splashBackColor,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          ' Door to Door',
                          style: TextStyle(
                              fontSize: width / 12, color: Colors.blueGrey),
                        )
                      ],
                    )
                  ]),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height / 12),
              child: Image.asset('assets/grocery.png'),
            )
          ],
        ),
      ),
    );
  }
}
