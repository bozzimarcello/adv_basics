import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({
    super.key,
    required this.summaryData,
  });

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map((data) {
        return Row(
          children: [
            // the as operator is used to cast the value to the desired type
            // used often when using maps with generic types
            Text(((data['question_index'] as int) + 1).toString()),
            Expanded( 
              // without Expanded, the row will try to take up to infinite space
              child: Column(
                children: [
                  Text(data['question'] as String),
                  const SizedBox(height: 5,),
                  Text(data['user_answer'] as String),
                  Text(data['correct_answer'] as String),
                ],
              ),
            ),
          ],
        );
      }).toList(), // convert the iterable to a list
    );
  }
}
