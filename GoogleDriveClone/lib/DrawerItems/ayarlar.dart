import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tasarimi_kolaylastiracak_ornek/DrawerItems/YolOlanWidgetlar/bildirim_ayarlar%C4%B1.dart';
import 'package:tasarimi_kolaylastiracak_ornek/DrawerItems/YolOlanWidgetlar/depolama.dart';

class Ayarlar extends StatefulWidget {
  const Ayarlar({Key? key}) : super(key: key);

  @override
  State<Ayarlar> createState() => _PaylasilanState();
}

class _PaylasilanState extends State<Ayarlar> {
  EdgeInsets dialogPadding = const EdgeInsets.only(top: 250);
  String selectedOption = 'Sistem varsayılanı';
  String onBellekBoyut = '250 MB';
  bool swicthState = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Depolama Alanı",
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                            "15 GB toplam depolama alanından 1 GB\nkadarı kullanılıyor."),
                        const SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => const Depolama()));
                          },
                          style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                  Colors.blue.shade200)),
                          child: Text(
                            "Depolama alanını yönet",
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Bildirimler",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          const SizedBox(height: 15),
                          ListTile(
                            contentPadding: const EdgeInsets.all(0),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) =>
                                          const BildirimAyarlari()));
                            },
                            title: const Text(
                              "Bildirim Ayarları",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Uygulamalar için otomatik yedekleme",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          ListTile(
                            contentPadding: EdgeInsets.all(0),
                            title: Text("Yedekle ve Sıfırla"),
                            subtitle: Text("Cihazınız için yedekleme ayarları"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Tema",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          ListTile(
                            contentPadding: const EdgeInsets.all(0),
                            title: const Text("Tema seçin"),
                            subtitle: Text(
                              selectedOption,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onTap: () {
                              buildRadioButton(context);
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Döküman önbelleği",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          ListTile(
                            contentPadding: const EdgeInsets.all(0),
                            title: const Text("Ön belleği temizle"),
                            subtitle:
                                const Text("Önbelleğe alınan tüm dökumanları kaldır"),
                            onTap: () {
                              buildOnbellekTemizle(context);
                            },
                          ),
                          ListTile(
                            contentPadding: const EdgeInsets.all(0),
                            title: const Text("Önbellek boyutu"),
                            subtitle: Text(
                                "Önbellek boyutu $onBellekBoyut olarak ayarlandı"),
                            onTap: () {
                              buildOnbellekBoyutuAyarla(context);
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            alignment: AlignmentDirectional.topStart,
                            child: const Text(
                              "Veri kullanımı",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Yalnızca kablosuz ile dosya aktar",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    "Kablosuz bağlantı olmadığında,\ndosyaların yüklenmesi ve güncellenmesi\nduraklatılır.",
                                    style: TextStyle(
                                        color: Colors.grey.shade600,
                                        fontSize: 14),
                                  )
                                ],
                              ),
                              Expanded(
                                  child: SwitchListTile(
                                      tileColor: Colors.transparent,
                                      contentPadding: const EdgeInsets.all(0),
                                      inactiveTrackColor: Colors.blue,
                                      thumbColor: const MaterialStatePropertyAll(
                                          Colors.white),
                                      activeColor: Colors.amber.shade400,
                                      value: swicthState,
                                      onChanged: (deger) {
                                        setState(() {
                                          swicthState = deger;
                                        });
                                        if (deger) {
                                          WidgetsBinding.instance
                                              .addPostFrameCallback(
                                            (_) {
                                              buildVeriKullanimUyarisi();
                                              deger = !deger;
                                            },
                                          );
                                        }
                                      })),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.black, size: 25),
      titleTextStyle: const TextStyle(color: Colors.black, fontSize: 23),
      title: const Text("Ayarlar"),
    );
  }

  void buildRadioButton(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.cyan.shade200,
            title: const Text("Tema seçin"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                RadioListTile<String>(
                  contentPadding: const EdgeInsets.all(0),
                  activeColor: Colors.black,
                  title: const Text('Koyu'),
                  value: 'Koyu',
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value!;
                      Navigator.pop(context);
                    });
                  },
                ),
                RadioListTile<String>(
                  contentPadding: const EdgeInsets.all(0),
                  activeColor: Colors.black,
                  title: const Text('Açık'),
                  value: 'Açık',
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value!;
                      Navigator.pop(context);
                    });
                  },
                ),
                RadioListTile<String>(
                  contentPadding: const EdgeInsets.all(0),
                  activeColor: Colors.black,
                  title: const Text('Sistem varsayılanı'),
                  value: 'Sistem varsayılanı',
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value!;
                      Navigator.pop(context);
                    });
                  },
                ),
              ],
            ),
          );
        });
  }

  void buildOnbellekBoyutuAyarla(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.cyan.shade200,
            title: const Text("Önbellek boyutu"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                RadioListTile<String>(
                  contentPadding: const EdgeInsets.all(0),
                  activeColor: Colors.black,
                  title: const Text('100 MB'),
                  value: '100 MB',
                  groupValue: onBellekBoyut,
                  onChanged: (value) {
                    setState(() {
                      onBellekBoyut = value!;
                      Navigator.pop(context);
                    });
                  },
                ),
                RadioListTile<String>(
                  contentPadding: const EdgeInsets.all(0),
                  activeColor: Colors.black,
                  title: const Text('250 MB'),
                  value: '250 MB',
                  groupValue: onBellekBoyut,
                  onChanged: (value) {
                    setState(() {
                      onBellekBoyut = value!;
                      Navigator.pop(context);
                    });
                  },
                ),
                RadioListTile<String>(
                  contentPadding: const EdgeInsets.all(0),
                  activeColor: Colors.black,
                  title: const Text('500 MB'),
                  value: '500 MB',
                  groupValue: onBellekBoyut,
                  onChanged: (value) {
                    setState(() {
                      onBellekBoyut = value!;
                      Navigator.pop(context);
                    });
                  },
                ),
                RadioListTile<String>(
                  contentPadding: const EdgeInsets.all(0),
                  activeColor: Colors.black,
                  title: const Text('1000 MB'),
                  value: '1000 MB',
                  groupValue: onBellekBoyut,
                  onChanged: (value) {
                    setState(() {
                      onBellekBoyut = value!;
                      Navigator.pop(context);
                    });
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("İptal"),
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }

  void buildOnbellekTemizle(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            contentPadding: const EdgeInsets.all(10),
            title: const Text("Önbelleği temizle"),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Row(
                  children: [
                    Text("Döküman önbelleği temizlenecek"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text("İptal")),
                    TextButton(onPressed: () {}, child: const Text("Tamam"))
                  ],
                ),
              ],
            ),
          );
        });
  }

  buildVeriKullanimUyarisi() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            contentPadding: const EdgeInsets.all(10),
            title: const Text("Veri kullanım uyarısı"),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Row(
                  children: [
                    Text(
                        "Mobil veri planınıza bağlı olarak\ndosyaları mobil ağ üzerinden\naktarmak ek ücret alınmasına neden\nolabilir"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () {}, child: const Text("Ek bilgi edinin")),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text("İptal")),
                    TextButton(onPressed: () {}, child: const Text("Tamam"))
                  ],
                ),
              ],
            ),
          );
        });
  }
}
