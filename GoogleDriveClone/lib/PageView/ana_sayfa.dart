import 'package:flutter/material.dart';

import '../Sabitler/sabitler.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  EdgeInsets dialogPadding = const EdgeInsets.only(top: 250);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 5),
          child: ListTile(
            trailing: IconButton(
              icon: const Icon(Icons.window_outlined, color: Colors.white),
              onPressed: () {},
            ),
            title: const Text("Dosyalar",style: TextStyle(color: Colors.white,fontSize: 17),),
          ),
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
