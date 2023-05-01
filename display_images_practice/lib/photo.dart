import 'package:flutter/material.dart';

class PhotoD extends StatefulWidget {
  const PhotoD({super.key});
  @override
  State<PhotoD> createState() {
    return _PhotoD();
  }
}

class _PhotoD extends State<PhotoD> {
  var activeImg =
      'https://th.bing.com/th/id/R.2153501d3ded76bd10febd144f73c083?rik=THxajPRTRJc%2fGQ&riu=http%3a%2f%2fthefappening.pro%2fwp-content%2fuploads%2f2017%2f12%2fPriyanka-Chopra-Sexy-The-Fappening-pro-23.jpg&ehk=0hJtXq%2fMNdSG8zp7FAroJ1g6QTep3rUu%2fVxGR2CJ%2fXc%3d&risl=&pid=ImgRaw&r=0';
  var activeImg2 =
      'https://th.bing.com/th/id/R.bb01b7a71fbd5b4c2e194b9aaaf4180f?rik=ugNJKoq2esi%2fGQ&riu=http%3a%2f%2fthefappeningblog.com%2fwp-content%2fuploads%2f2017%2f05%2fPriyanka-Chopra-Sexy-beach-3-thefappeningblog.com_.jpg&ehk=zFZTr3WzbZVN1GY2Ghd0bVqbTsWW2W29X5NLoeREok4%3d&risl=&pid=ImgRaw&r=0';
  var name = 'Priyanka Chopra';
  var no = 1;
  void changeImage() {
    setState(() {
      if (no == 1) {
        activeImg =
            'https://i.pinimg.com/originals/6b/1c/19/6b1c1945c8293afb21a8d1d1072bed00.jpg';
        activeImg2 =
            'https://thumb-p4.xhcdn.com/a/q_-iF1JdPAicTKqKYNkkag/000/410/414/924_1000.jpg';
        name = 'Alia Bhatt';
        no = 2;
      } else {
        activeImg =
            'https://th.bing.com/th/id/R.2153501d3ded76bd10febd144f73c083?rik=THxajPRTRJc%2fGQ&riu=http%3a%2f%2fthefappening.pro%2fwp-content%2fuploads%2f2017%2f12%2fPriyanka-Chopra-Sexy-The-Fappening-pro-23.jpg&ehk=0hJtXq%2fMNdSG8zp7FAroJ1g6QTep3rUu%2fVxGR2CJ%2fXc%3d&risl=&pid=ImgRaw&r=0';
        activeImg2 =
            'https://th.bing.com/th/id/R.bb01b7a71fbd5b4c2e194b9aaaf4180f?rik=ugNJKoq2esi%2fGQ&riu=http%3a%2f%2fthefappeningblog.com%2fwp-content%2fuploads%2f2017%2f05%2fPriyanka-Chopra-Sexy-beach-3-thefappeningblog.com_.jpg&ehk=zFZTr3WzbZVN1GY2Ghd0bVqbTsWW2W29X5NLoeREok4%3d&risl=&pid=ImgRaw&r=0';
        name = 'Priyanka Chopra';
        no = 1;
      }
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.network(
          activeImg,
          width: 250,
        ),
        Image.network(
          activeImg2,
          width: 250,
        ),
        const SizedBox(
          height: 10,
        ),
        ElevatedButton(onPressed: changeImage, child: Text(name))
      ],
    );
  }
}
