import 'package:flutter/material.dart';
import 'package:test_application/themes/theme.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 12),
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome to',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width / 12,
                          color: Colors.blueGrey),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/welcome_logo.png'),
                        Text(' Application',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width / 12,
                                color: Colors.blueGrey))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Image.asset(
            'assets/welcome_pic.png',
          )
        ],
      ),
    );
  }
}
