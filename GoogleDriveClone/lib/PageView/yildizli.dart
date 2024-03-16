import 'package:flutter/material.dart';

import '../Sabitler/sabitler.dart';

class Yildizli extends StatefulWidget {
  const Yildizli({super.key});

  @override
  State<Yildizli> createState() => _YildizliState();
}

class _YildizliState extends State<Yildizli> {
  @override
  Widget build(BuildContext context) {


      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const FadeInImage(placeholder: AssetImage("assets/loading.gif"), image: NetworkImage("https://images.emojiterra.com/google/noto-emoji/unicode-15/color/512px/2b50.png"),),
          Text("Yıldızlı Dosya yok",style: Sabitler.anaBaslik,),
          const SizedBox(height: 10),

          const Text("Daha sonra kolayca bulmak istediğiniz ögelere yıldız"),
          const Text("ekleyin"),
        ],

      );


  }
}
