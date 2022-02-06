import 'package:flutter/material.dart';
import './quiz.dart';
import 'package:myapp/resource.dart';
import 'quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var index = 0;
  var result = 0;
  var score = 0;

  static const questions = [
    {
      'questionText': "Anjay mabar?",
      'answer': ['yahahah', 'hayyuuu', 'ashiap'],
      'jb': 2
    },
    {
      'questionText': "Anjay mabar2?",
      'answer': ['yahahah2', 'hayyuuu2', 'ashiap2'],
      'jb': 2
    },
    {
      'questionText': "Anjay mabar3?",
      'answer': ['yahahah3', 'hayyuuu4', 'ashiap3'],
      'jb': 2
    },
    {
      'questionText': "Anjay mabar4?",
      'answer': ['yahahah4', 'hayyuuu4', 'ashiap4'],
      'jb': 0
    },
  ];
  void func(int id) {
    if (questions[index]['jb'] == id) {
      setState(() {
        index++;
      });
    }

    if (index < questions.length) {
      print("We have more questions !");
    } else {
      print("No more questions !");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 1, 86, 197),
          title: Strings.title,
        ),
        body: index < questions.length
            ? Quiz(func, questions, index)
            : Center(
                child: Column(
                  children: [
                    Text("Done !"),
                    TextButton(onPressed: (){
                      setState(() {
                        index = 0;
                      });
                    }, child: Text("Restart Quiz !"))
                  ],
                ),
              ),
      ),
      theme: ThemeData.lerp(ThemeData.dark(), ThemeData.light(), 0.9),
    );
  }
}
