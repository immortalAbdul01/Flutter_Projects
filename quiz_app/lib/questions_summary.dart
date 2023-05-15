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
            final bool isCorrectAns =
                data['choosen_ans'] == data['correct_ans'];

            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 30,
                  height: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: isCorrectAns ? Colors.lightGreen : Colors.red,
                      borderRadius: BorderRadius.circular(100)),
                  child: Text(((data['question_index'] as int) + 1).toString(),
                      style: const TextStyle()),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(data['question'] as String),
                      const SizedBox(
                        height: 25,
                      ),
                      Text(data['choosen_ans'] as String),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        data['correct_ans'] as String,
                        style: const TextStyle(
                            color: Colors.black, backgroundColor: Colors.green),
                      ),
                      const SizedBox(
                        height: 25,
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
