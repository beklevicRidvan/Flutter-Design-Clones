import 'package:flutter/material.dart';
import 'package:tasarimi_kolaylastiracak_ornek/Sabitler/sabitler.dart';

class Cevrimdisi extends StatefulWidget {
  const Cevrimdisi({Key? key}) : super(key: key);

  @override
  State<Cevrimdisi> createState() => _PaylasilanState();
}

class _PaylasilanState extends State<Cevrimdisi> {
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
            FadeInImage(placeholder: NetworkImage("https://media.tenor.com/JBgYqrobdxsAAAAi/loading.gif"), image: NetworkImage("https://5.imimg.com/data5/SI/QW/MY-2473870/student-files.jpg"),fit: BoxFit.contain,),
            SizedBox(height: 25),
            Text("Bu cihazda dosya yok",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 10),

            Text("Cihaz çevrimdışıyken açabilmek için dosya menüsündeki",style: TextStyle(fontSize: 14),),
            Text("'Çevrimdışı kullanılabilir'e hafifçe dokunun",style: TextStyle(fontSize: 14),),

          ],
        ),
      ),



    );
  }

  AppBar buildAppBar() {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.black, size: 25),
      titleTextStyle: const TextStyle(color: Colors.black, fontSize: 23),

      title: const Text("Çevrimdışı"),
      actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.search))],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1),
        child: Container(color: Colors.white),
      ),
    );
  }

  void listTrailingButton(int myIndex) {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            backgroundColor: Colors.cyan,
            insetPadding: dialogPadding,
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  title: Text(Sabitler.tumPostalar[myIndex].postaKonusu),
                  backgroundColor: Colors.cyan,
                  floating: true,
                  pinned: true,
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                      childCount: Sabitler.tumIslemler.length,
                          (context, index) {
                        return ListTile(
                          leading: Sabitler.tumIslemler[index].gorevIcon,
                          title: Text(Sabitler.tumIslemler[index].gorevAdi),
                        );
                      }),
                )
              ],
            ),
          );
        });
  }
}
