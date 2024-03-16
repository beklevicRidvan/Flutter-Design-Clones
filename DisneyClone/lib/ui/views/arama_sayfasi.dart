import 'package:flutter/material.dart';

class AramaSayfasi extends StatefulWidget {
  const AramaSayfasi({super.key});

  @override
  State<AramaSayfasi> createState() => _AramaSayfasiState();


}

class _AramaSayfasiState extends State<AramaSayfasi> {
  Color myRenk = const Color(0xFF020c41);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: myRenk,





      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10)
                    ),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star,color: Colors.white,size: 40,),
                        SizedBox(height: 5),
                        Text("Originals",style: const TextStyle(color: Colors.white,fontSize: 16),)
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10)
                    ),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.movie_filter,color: Colors.white,size: 40,),
                        SizedBox(height: 5),
                        Text("Filmler",style: const TextStyle(color: Colors.white,fontSize: 16),)
                      ],
                    ),
                  ),

                  Container(
                    alignment: Alignment.center,
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10)
                    ),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.tv,color: Colors.white,size: 40,),
                        SizedBox(height: 5),
                        Text("Diziler",style: const TextStyle(color: Colors.white,fontSize: 16),)
                      ],
                    ),
                  ),

                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Row(
                    children: [
                      Text("Keşfet",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                    ],
                  ),
                  SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildImageContainer(0,"Bilim Kurgu"),
                    const SizedBox(width: 15),
                    buildImageContainer(1,"Komedi"),
                  ],
                ),
                  SizedBox(height: 15),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildImageContainer(2,"Suç"),
                      const SizedBox(width: 15),
                      buildImageContainer(3,"Animasyon"),
                    ],
                  ),
                  SizedBox(height: 15),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildImageContainer(4,"Doctor Who"),
                      const SizedBox(width: 15),
                      buildImageContainer(5,"Loki"),
                    ],
                  ),
                  SizedBox(height: 15),




                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildImageContainer(int index,String text){
    return  Expanded(
      child: Stack(
        children:[
          Container(
            height: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(image: AssetImage("assets/grid/image${index}.png"),fit: BoxFit.cover)),
          ),
          Positioned(child: Text(text,style: TextStyle(fontFamily: "Honk",fontSize: 30),),top: 15,left: 15,)
        ]
      ),
    );
  }


}
