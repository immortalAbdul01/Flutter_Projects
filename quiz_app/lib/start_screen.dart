import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
  @override
  Widget build(context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Image.network(
          'https://th.bing.com/th/id/OIP.kGB_xG0o8f-IlocmG1d_KQHaEK?pid=ImgDet&rs=1',
          width: 450,
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'Quiz on F.r.i.e.n.d.s',
          style: TextStyle(color: Colors.black, fontSize: 44),
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(onPressed: () {}, child: const Text('Start Quiz'))
      ]),
    );
  }
}
