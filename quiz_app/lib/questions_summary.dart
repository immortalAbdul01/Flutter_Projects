import 'package:flutter/material.dart';

class Summarrydata extends StatelessWidget {
  const Summarrydata(this.summary, {super.key});
  final List<Map<String, Object>> summary;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summary.map((data) {
            return Row(
              children: [
                Text(((data['question_index'] as int) + 1).toString()),
                Expanded(
                  child: Column(
                    children: [
                      Text(data['question'] as String),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(data['choosen_ans'] as String),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        data['correct_ans'] as String,
                        style: const TextStyle(
                            color: Colors.white,
                            backgroundColor: Color.fromARGB(255, 2, 117, 5)),
                      )
                    ],
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
