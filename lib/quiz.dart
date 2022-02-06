import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';
import 'dart:collection';

class Quiz extends StatelessWidget {
  @required final List<Map<String, Object>> questions;
  @required final Function func;
  @required final int index;

  Quiz(this.func, this.questions, this.index );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[index]['questionText'] as String),
        ...(questions[index]['answer'] as List<String>).asMap().entries
            .map((e) => Answer(func, e.value, e.key))
            .toList(),
      ],
    );
  }
}
