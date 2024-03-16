import 'package:flutter/material.dart';

class IndirmeSayfasi extends StatefulWidget {
  const IndirmeSayfasi({super.key});

  @override
  State<IndirmeSayfasi> createState() => _IndirmeSayfasiState();
}

class _IndirmeSayfasiState extends State<IndirmeSayfasi> {

  Color myRenk = const Color(0xFF020c41);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(




      backgroundColor: myRenk,

      body: const Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.download_for_offline,size: 150,color: Colors.grey,),
            SizedBox(height: 20),
            Text("İndirilmiş içerik yok",style: TextStyle(color: Colors.white,fontSize: 20),),
            SizedBox(height: 20),

            Text("İndirdiğiniz filmler ve diziler burada",style: TextStyle(color: Colors.grey,fontSize: 18),),
            Text("görünecektir",style: TextStyle(color: Colors.grey,fontSize: 18),)


          ],
        ),
      ),
    );
  }
}
