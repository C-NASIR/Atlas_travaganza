import 'package:flutter/material.dart';
import 'atlas.dart';

class QuizWidget extends StatelessWidget {
  final Atlas atlas;
  QuizWidget({this.atlas});
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Quiz Widget'));
  }
}
