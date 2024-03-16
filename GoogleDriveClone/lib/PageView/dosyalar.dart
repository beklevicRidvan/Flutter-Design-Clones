import 'package:flutter/material.dart';

import '../Sabitler/sabitler.dart';

class Dosyalar extends StatefulWidget {
  const Dosyalar({super.key});

  @override
  State<Dosyalar> createState() => _DosyalarState();
}

class _DosyalarState extends State<Dosyalar> {

  List<String> siralamaOlcutuListesi = [
    "Paylaşım tarihi (En Yeni)",
    "Paylaşım tarihi (En Eski)",
    "Ad",
    "Son değiştirilme tarihi",
    "Son değiştirdiğim tarih",
    "Son Açtığım tarih"
  ];
  String secilenSiralama = "Ad";

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
              title: DropdownButton<String>(


                style: const TextStyle(color: Colors.white, fontSize: 18),
                dropdownColor: Colors.cyan,
                iconEnabledColor: Colors.white,
                icon: const Icon(Icons.arrow_downward),

                value: secilenSiralama,
                items: siralamaOlcutuListesi.map((String olcut) {
                  return DropdownMenuItem<String>(

                    value: olcut,

                    child: Text(olcut),

                  );
                }).toList(),
                onChanged: (yeniDeger) {
                  setState(() {
                    secilenSiralama = yeniDeger!;
                    _filtrelemeFonksiyonu();
                  });
                },
              ),
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

  void _filtrelemeFonksiyonu() {
    switch (secilenSiralama) {
      case 'Paylaşım tarihi (En Yeni)':
        setState(() {
          Sabitler.tumPostalar
              .sort((a, b) => b.gonderilmeTarihi.compareTo(a.gonderilmeTarihi));
        });
        break;

      case 'Paylaşım tarihi (En Eski)':
        setState(() {
          Sabitler.tumPostalar
              .sort((a, b) => a.gonderilmeTarihi.compareTo(b.gonderilmeTarihi));
        });
        break;

      case 'Ad':
        setState(() {
          Sabitler.tumPostalar.sort((a, b) => a.adSoyad.compareTo(b.adSoyad));
        });
    }
  }
}
