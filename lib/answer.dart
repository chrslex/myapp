import 'package:flutter/material.dart';

class Answer extends StatelessWidget {  
  final Function fun;
  final String ans;
  final int id;
  
  Answer(this.fun, this.ans, this.id);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          // style: ButtonStyle(
          //     backgroundColor:
          //         MaterialStateProperty.all(Colors.amber)),
          onPressed: () => fun(id),
          child: Text(ans)),
    );
  }
}
