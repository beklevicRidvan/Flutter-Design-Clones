import 'package:flutter/material.dart';
import 'package:tasarimi_kolaylastiracak_ornek/Sabitler/sabitler.dart';

class EnSon extends StatefulWidget {
  const EnSon({Key? key}) : super(key: key);

  @override
  State<EnSon> createState() => _PaylasilanState();
}

class _PaylasilanState extends State<EnSon> {
  EdgeInsets dialogPadding = const EdgeInsets.only(top: 250);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: buildAppBar(),
      body : Column(
        children: [

          Container(

            child: (ListTile(
              trailing: IconButton(onPressed: (){},icon: const Icon(Icons.window,color: Colors.white,)),
            )),
          ),

          Expanded(
            child: ListView.builder(
                itemCount: Sabitler.tumPostalar.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: ListTile(
                      title: Text(Sabitler.tumPostalar[index].postaKonusu),
                      subtitle: Row(
                        children: [
                          Text(Sabitler.tumPostalar[index].adSoyad),
                          const SizedBox(width: 5),
                          Text(Sabitler.tumPostalar[index].tarih),
                        ],
                      ),
                      leading: CircleAvatar(
                        backgroundColor: Colors.amber,
                        child: Text(Sabitler.tumPostalar[index].adSoyadHarf),
                      ),
                      trailing: IconButton(
                          onPressed: () {
                            listTrailingButton(index);
                          },
                          icon: const Icon(Icons.more_vert)),
                    ),
                  );
                }),
          )
        ],
      ),



    );
  }

  AppBar buildAppBar() {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.white, size: 25),
      titleTextStyle: const TextStyle(color: Colors.white, fontSize: 23),
      backgroundColor: Colors.cyan,
      title: const Text("En son"),
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
