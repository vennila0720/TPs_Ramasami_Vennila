import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.account_circle, size: 50),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Flutter McFlutter',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      Text(
                        'Experienced App Developer',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '123 Main Street',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'SourceSansPro',
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    '(415) 555-0198',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'SourceSansPro',
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.accessibility),
                  Icon(Icons.timer),
                  Icon(Icons.phone_android),
                  Icon(Icons.phone_iphone),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
