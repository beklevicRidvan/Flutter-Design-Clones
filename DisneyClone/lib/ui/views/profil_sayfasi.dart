import 'package:bootcamp3_odev/data/entity/icerik.dart';
import 'package:flutter/material.dart';

class ProfilSayfasi extends StatefulWidget {
  const ProfilSayfasi({super.key});

  @override
  State<ProfilSayfasi> createState() => _ProfilSayfasiState();
}

class _ProfilSayfasiState extends State<ProfilSayfasi> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Icerik.myRenk,
      body:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        
          children: [
            Container(
              margin: const EdgeInsets.only(top: 25),
              alignment: Alignment.center,
              child:   ElevatedButton(style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(),backgroundColor: Colors.blueGrey.withOpacity(0.2)),onPressed: (){}, child: const Text("PROFİLLERİ DÜZENLE",style: const TextStyle(fontSize: 20,color: Colors.white),)),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15),
              decoration:const BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey,width: 1))),
              margin: const EdgeInsets.only(top: 20,left: 20),
              child: const Row(
                children: [
                   Text("İzleme Listem",style: TextStyle(color: Colors.white,fontSize: 17),),
                ],
              ),
        
            ),
            Container(
              margin:const  EdgeInsets.only(top: 20,left: 20),
              padding: EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey,width: 1))),
        
              child: const Row(
                children: [
                   Text("Hesap",style: TextStyle(color: Colors.white,fontSize: 17),),
                ],
              ),
            ),
            Container(
              margin:const  EdgeInsets.only(top: 20,left: 20),
              padding: EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey,width: 1))),
        
              child: const Row(
                children: [
                  Text("Yasal",style: TextStyle(color: Colors.white,fontSize: 17),),
                ],
              ),
            ),
            Container(
              margin:const  EdgeInsets.only(top: 20,left: 20),
              padding: EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey,width: 1))),
        
              child: const Row(
                children: [
                  Text("Yardım",style: TextStyle(color: Colors.white,fontSize: 17),),
                ],
              ),
            ),
            Container(
              margin:const  EdgeInsets.only(top: 20,left: 20),
              padding: EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey,width: 1))),
        
              child: const Row(
                children: [
                  Text("Oturumu Kapat",style: TextStyle(color: Colors.white,fontSize: 17),),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20,left: 20),
              padding: const EdgeInsets.symmetric(vertical: 15),
        
              child:const Row(
                children: [
                  Text("Sürüm:2.26.4-rc2(2401182)",style: TextStyle(color: Colors.grey),)
                ],
              ),
            ),
        
        
          ],
        ),
      ),
    );
  }
}
