import 'package:flutter/material.dart';

class EtkinlikSayfasi extends StatefulWidget {
  const EtkinlikSayfasi ({super.key});

  @override
  State<EtkinlikSayfasi> createState() => _State();
}

class _State extends State<EtkinlikSayfasi> {
  @override
  Widget build(BuildContext context) {
    return  Center(

      child: Container(
        height: 200,
        color: Colors.purpleAccent,
        alignment: Alignment.center,
        child: Text("Etkinlik Sayfasi",style: TextStyle(fontSize: 40),),
      ),
    );
  }
}
