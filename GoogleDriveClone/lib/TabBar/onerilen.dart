import 'package:flutter/material.dart';

class OnerilenSayfasi extends StatefulWidget {
   const OnerilenSayfasi ({super.key});

  @override
  State<OnerilenSayfasi> createState() => _State();
}

class _State extends State<OnerilenSayfasi> {
  @override
  Widget build(BuildContext context) {
    return  Center(

      child: Container(
        height: 200,
        color: Colors.redAccent,
        alignment: Alignment.center,
        child: Text("Önerilen Sayfasi",style: TextStyle(fontSize: 40),),
      ),
    );
  }
}
