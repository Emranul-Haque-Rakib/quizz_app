import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: QuizPage(),
        ),
      ),
    ));
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> ScoreKeeper=[ ] ;

  List<String> question= [
    'The Cow is a Dangerous Animal',
    'Tiger is a Domestic Animal',
    'Bangladesh is a democratic country'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.all(10.00),
              child: Center(
                child: Text(question.first,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                    )),
              ),
            )),
        Expanded(
            child: Padding(
          padding: EdgeInsets.all(15.00),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
            ),
            child: Text(
              'TRUE',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.00,
              ),
            ),
            onPressed: () {},
          ),
        )),
        Expanded(
            child: Padding(
          padding: EdgeInsets.all(15.00),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
            ),
            child: Text(
              'FALSE',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.00,
              ),
            ),
            onPressed: () {},
          ),
        )),

        Row(
          children: ScoreKeeper,

        )
      ],
    );

    //  throw UnimplementedError();
  }
}
