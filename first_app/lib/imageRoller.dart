import 'package:flutter/material.dart';

class ImageRoller extends StatefulWidget {
  const ImageRoller({super.key});
  @override
  State<ImageRoller> createState() {
    return _ImageRollerState();
  }
}

class _ImageRollerState extends State<ImageRoller> {
  var activeImage =
      'https://ci3.googleusercontent.com/proxy/vXOW7RazoxgkiQZ7mK8o0pTAKBAqaGHjGFp5YwDihCJlb-P3W9IL7c0Vhk5GrzwC6Qp47ZLDZhbjhVlB5uGXkU9OTqOcrccmnS1BA7UWeQ4PjETLf3wbwVTcjCGuhtZwSFrZ6XXRaIIEemKTHQOFnkTYUGymBM9L1yJ1QbTZErvS0o1AaeFXqgDmNDoSuSwEojATNuwVTw=s0-d-e1-ft#http://st1.bollywoodlife.com/wp-content/uploads/photos/anushka-sharma-in-a-sultry-pic-wearing-hot-black-bikini-201607-762011.jpg';
  var number = 1;
  void rollDice() {
    setState(() {
      if (number == 1) {
        activeImage =
            'https://i.pinimg.com/originals/9f/c3/22/9fc322d1c16acd0e0aa17779af5bf199.jpg';
        number = 2;
      } else if (number == 2) {
        activeImage =
            'https://th.bing.com/th/id/OIP.-pYoEjOlrAssnkwtt2DTTQHaHa?pid=ImgDet&w=736&h=736&rs=1';
        number = 3;
      } else if (number == 3) {
        activeImage =
            'https://i.pinimg.com/originals/13/31/6b/13316b7f76c2829fc1d07d5289e02e7a.jpg';
        number = 4;
      } else if (number == 4) {
        activeImage = 'https://bollykittens.net/ANUSHKA_VOL3/A2.gif';
        number = 1;
      } else {
        activeImage =
            'https://ci3.googleusercontent.com/proxy/vXOW7RazoxgkiQZ7mK8o0pTAKBAqaGHjGFp5YwDihCJlb-P3W9IL7c0Vhk5GrzwC6Qp47ZLDZhbjhVlB5uGXkU9OTqOcrccmnS1BA7UWeQ4PjETLf3wbwVTcjCGuhtZwSFrZ6XXRaIIEemKTHQOFnkTYUGymBM9L1yJ1QbTZErvS0o1AaeFXqgDmNDoSuSwEojATNuwVTw=s0-d-e1-ft#http://st1.bollywoodlife.com/wp-content/uploads/photos/anushka-sharma-in-a-sultry-pic-wearing-hot-black-bikini-201607-762011.jpg';
        number = 1;
      }
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.network(
          activeImage,
          width: 300,
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
            onPressed: rollDice,
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(10),
                foregroundColor: Colors.black,
                backgroundColor: Colors.white,
                textStyle: const TextStyle(fontStyle: FontStyle.italic)),
            child: const Text('Click here '))
      ],
    );
  }
}
