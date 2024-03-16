import 'package:flutter/material.dart';


class Spam extends StatefulWidget {
  const Spam({Key? key}) : super(key: key);

  @override
  State<Spam> createState() => _PaylasilanState();
}

class _PaylasilanState extends State<Spam> {
  EdgeInsets dialogPadding = const EdgeInsets.only(top: 250);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body : Container(
        alignment: Alignment.center,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeInImage(placeholderFit: BoxFit.contain,placeholder: AssetImage("assets/loading.gif"), image: NetworkImage("https://us.123rf.com/450wm/123vector/123vector1408/123vector140800159/31027668-vector-illustration-of-spam-sign-on-white-background.jpg?ver=6"),),
            SizedBox(height: 25),
            Text("Spam bölümü boş",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),


          ],
        ),
      ),



    );
  }

  AppBar buildAppBar() {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.black, size: 25),
      titleTextStyle: const TextStyle(color: Colors.black, fontSize: 23),

      title: const Text("Spam"),
      actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.search))],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: Container(color: Colors.white,alignment: Alignment.center,child: const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(Icons.report_gmailerrorred,size: 45,),SizedBox(width:10),Text("Spam'deki dosyalar Drive'ın hiçbir\nbölümünde görünmez.30 gün sonra\nkalıcı olarak kaldırılır.",style: TextStyle(fontSize: 17),),
        ],) ),
      ),
    );
  }


}
