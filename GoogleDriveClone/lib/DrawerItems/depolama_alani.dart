import 'package:flutter/material.dart';

class DepolamaAlani extends StatefulWidget {
  const DepolamaAlani({super.key});

  @override
  State<DepolamaAlani> createState() => _DepolamaAlaniState();
}

class _DepolamaAlaniState extends State<DepolamaAlani>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  bool avantajlariGoster1 = false;
  bool avantajlariGoster2 = false;
  bool avantajlariGoster3 = false;

  bool avantajlariGoster4 = false;
  bool avantajlariGoster5 = false;
  bool avantajlariGoster6 = false;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Google One"),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.cancel_outlined,
                  size: 30,
                )),
            const SizedBox(width: 15)
          ]),
      body: Column(
        children: [
          const SizedBox(height: 30),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Google One ile daha fazla depolama",
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
          const SizedBox(height: 5),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "alanına sahip olun",
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
          const SizedBox(height: 20),
          tabBarimBottom(),
          const SizedBox(height: 10),
          Expanded(
            child: TabBarView(
                controller: tabController,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  buildTabBarViewItem1(),
                  buildTabBarViewItem2(),
                ]),
          ),
        ],
      ),
    );
  }

  Widget buildTabBarViewItem1() {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        buildTabViewBodyContainer1(),
        const SizedBox(height: 20),
        buildTabViewBodyContainer2(),
        const SizedBox(height: 20),
        buildTabviewBodyContainer3(),
        const SizedBox(height: 30),
        buildTabViewBodyContainer4(),
      ],
    );
  }

  Widget buildTabBarViewItem2() {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        buildTabViewItem2BodyContainer1(),
        const SizedBox(height: 20),
        buildTabViewItem2BodyContainer2(),
        const SizedBox(height: 20),
        buildTabViewItem2BodyContainer3(),
        const SizedBox(height: 20),
        buildTabViewItem2BodyContainer4(),

      ],
    );
  }

  Widget buildTabViewBodyContainer1() {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.blueGrey,
              Colors.white54,
            ],
          ),
          border: Border(
            top: BorderSide(color: Colors.green, width: 4.0),
            bottom: BorderSide(color: Colors.red, width: 4.0),
            left: BorderSide(color: Colors.blue, width: 4.0),
            right: BorderSide(color: Colors.yellow, width: 4.0),
          ),
          color: Colors.white),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.bookmark_border),
                      Text(
                        "İndirimli fiyat",
                        style: TextStyle(fontSize: 18),
                      )
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
                Text(
                                  "Basic (100 GB)",
                                  style: TextStyle(fontSize: 18),
                                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "₺9,99",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.grey.shade800,
                          decoration: TextDecoration.lineThrough),
                    ),
                    const SizedBox(width: 10),
                    const Text("3 ay süreyle ₺2,99/ay",
                        style: TextStyle(fontSize: 18)),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Sonrasında ₺9,99/ay",
                      style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Dilediğiniz zaman iptal\nedebilirsiniz. Şartlar\ngeçerlidir.",
                      style: TextStyle(fontSize: 16),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          hizmetSartlariKabulEt();
                        },
                        child: const Text("Teklifi Kullan"))
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          avantajlariGoster1 = !avantajlariGoster1;
                        });
                      },
                      child: const Row(
                        children: [
                          Text(
                            "Tüm avantajları göster",
                            style: TextStyle(color: Colors.black),
                          ),
                          Icon(
                            Icons.arrow_drop_down_outlined,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                if (avantajlariGoster1)
                  Container(
                    padding: const EdgeInsets.all(16),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            height: 3,
                            width: 300,
                            color: Colors.black45,
                          ),
                          const ListTile(
                            selectedTileColor: Colors.white,
                            leading: Icon(
                              Icons.check,
                              color: Colors.blue,
                            ),
                            title: Text("100 GB depolama alanı"),
                          ),
                          const ListTile(
                            selectedTileColor: Colors.white,
                            leading: Icon(
                              Icons.check,
                              color: Colors.blue,
                            ),
                            title: Text("Google uzmanlarına erişin"),
                          ),
                          const ListTile(
                            selectedTileColor: Colors.white,
                            leading: Icon(
                              Icons.check,
                              color: Colors.blue,
                            ),
                            title: Text("5 kişiyle daha paylaşma olanağı"),
                          ),
                          const ListTile(
                            selectedTileColor: Colors.white,
                            leading: Icon(
                              Icons.check,
                              color: Colors.blue,
                            ),
                            title: Text(
                              "Google Fotoğraflar'daki diğer düzenleme özellikleri",
                              style: TextStyle(
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                          const ListTile(
                            selectedTileColor: Colors.white,
                            leading: Icon(
                              Icons.check,
                              color: Colors.blue,
                            ),
                            title: Text("Üyelere sunulan ek avantajlar"),
                          ),
                          const ListTile(
                            selectedTileColor: Colors.white,
                            leading: Icon(
                              Icons.check,
                              color: Colors.blue,
                            ),
                            title: Text(
                              "Dark Web'i izleyin",
                              style: TextStyle(
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildTabViewBodyContainer2() {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.blueGrey,
              Colors.white54,
            ],
          ),
          border: Border(
            top: BorderSide(color: Colors.green, width: 4.0),
            bottom: BorderSide(color: Colors.red, width: 4.0),
            left: BorderSide(color: Colors.blue, width: 4.0),
            right: BorderSide(color: Colors.yellow, width: 4.0),
          ),
          color: Colors.white),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.bookmark_border),
                      Text(
                        "İndirimli fiyat",
                        style: TextStyle(fontSize: 18),
                      )
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
                Text(
                                  "Standard (200 GB)",
                                  style: TextStyle(fontSize: 18),
                                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "₺19,99",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.grey.shade800,
                          decoration: TextDecoration.lineThrough),
                    ),
                    const SizedBox(width: 10),
                    const Text("3 ay süreyle ₺4,99/ay",
                        style: TextStyle(fontSize: 18)),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Sonrasında ₺19,99/ay",
                      style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Dilediğiniz zaman iptal\nedebilirsiniz. Şartlar\ngeçerlidir.",
                      style: TextStyle(fontSize: 16),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          hizmetSartlariKabulEt();
                        }, child: const Text("Teklifi Kullan"))
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      style: const ButtonStyle(
                        alignment: Alignment.center,
                      ),
                      onPressed: () {
                        setState(() {
                          avantajlariGoster2 = !avantajlariGoster2;
                        });
                      },
                      child: const Row(
                        children: [
                          Text(
                            "Tüm avantajları göster",
                            style: TextStyle(color: Colors.black),
                          ),
                          Icon(
                            Icons.arrow_drop_down_outlined,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                if (avantajlariGoster2)
                  Container(
                    padding: const EdgeInsets.all(16),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            height: 3,
                            width: 300,
                            color: Colors.black45,
                          ),
                          const ListTile(
                            selectedTileColor: Colors.white,
                            leading: Icon(
                              Icons.check,
                              color: Colors.blue,
                            ),
                            title: Text("200 GB depolama alanı"),
                          ),
                          const ListTile(
                            selectedTileColor: Colors.white,
                            leading: Icon(
                              Icons.check,
                              color: Colors.blue,
                            ),
                            title: Text("Google uzmanlarına erişin"),
                          ),
                          const ListTile(
                            selectedTileColor: Colors.white,
                            leading: Icon(
                              Icons.check,
                              color: Colors.blue,
                            ),
                            title: Text("5 kişiyle daha paylaşma olanağı"),
                          ),
                          const ListTile(
                            selectedTileColor: Colors.white,
                            leading: Icon(
                              Icons.check,
                              color: Colors.blue,
                            ),
                            title: Text(
                              "Google Fotoğraflar'daki diğer düzenleme özellikleri",
                              style: TextStyle(
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                          const ListTile(
                            selectedTileColor: Colors.white,
                            leading: Icon(
                              Icons.check,
                              color: Colors.blue,
                            ),
                            title: Text("Üyelere sunulan ek avantajlar"),
                          ),
                          const ListTile(
                            selectedTileColor: Colors.white,
                            leading: Icon(
                              Icons.check,
                              color: Colors.blue,
                            ),
                            title: Text(
                              "Dark Web'i izleyin",
                              style: TextStyle(
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildTabviewBodyContainer3() {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.blueGrey,
              Colors.white54,
            ],
          ),
          border: Border(
            top: BorderSide(color: Colors.green, width: 4.0),
            bottom: BorderSide(color: Colors.red, width: 4.0),
            left: BorderSide(color: Colors.blue, width: 4.0),
            right: BorderSide(color: Colors.yellow, width: 4.0),
          ),
          color: Colors.white),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.bookmark_border),
                      Text(
                        "İndirimli fiyat",
                        style: TextStyle(fontSize: 18),
                      )
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
                Text(
                                  "Premium (2 TB)",
                                  style: TextStyle(fontSize: 18),
                                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "₺49,99",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.grey.shade800,
                          decoration: TextDecoration.lineThrough),
                    ),
                    const SizedBox(width: 10),
                    const Text("3 ay süreyle ₺12,99/ay",
                        style: TextStyle(fontSize: 18)),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Sonrasında ₺49,99/ay",
                      style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Dilediğiniz zaman iptal\nedebilirsiniz. Şartlar\ngeçerlidir.",
                      style: TextStyle(fontSize: 16),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          hizmetSartlariKabulEt();
                        }, child: const Text("Teklifi Kullan"))
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      style: const ButtonStyle(
                        alignment: Alignment.center,
                      ),
                      onPressed: () {
                        setState(() {
                          avantajlariGoster3 = !avantajlariGoster3;
                        });
                      },
                      child: const Row(
                        children: [
                          Text(
                            "Tüm avantajları göster",
                            style: TextStyle(color: Colors.black),
                          ),
                          Icon(
                            Icons.arrow_drop_down_outlined,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                if (avantajlariGoster3)
                  Container(
                    padding: const EdgeInsets.all(16),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            height: 3,
                            width: 300,
                            color: Colors.black45,
                          ),
                          const ListTile(
                            selectedTileColor: Colors.white,
                            leading: Icon(
                              Icons.check,
                              color: Colors.blue,
                            ),
                            title: Text("2 TB depolama alanı"),
                          ),
                          const ListTile(
                            selectedTileColor: Colors.white,
                            leading: Icon(
                              Icons.check,
                              color: Colors.blue,
                            ),
                            title: Text("Google uzmanlarına erişin"),
                          ),
                          const ListTile(
                            selectedTileColor: Colors.white,
                            leading: Icon(
                              Icons.check,
                              color: Colors.blue,
                            ),
                            title: Text("5 kişiyle daha paylaşma olanağı"),
                          ),
                          const ListTile(
                            selectedTileColor: Colors.white,
                            leading: Icon(
                              Icons.check,
                              color: Colors.blue,
                            ),
                            title: Text(
                              "Google Fotoğraflar'daki diğer düzenleme özellikleri",
                              style: TextStyle(
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                          const ListTile(
                            selectedTileColor: Colors.white,
                            leading: Icon(
                              Icons.check,
                              color: Colors.blue,
                            ),
                            title: Text("Üyelere sunulan ek avantajlar"),
                          ),
                          const ListTile(
                            selectedTileColor: Colors.white,
                            leading: Icon(
                              Icons.check,
                              color: Colors.blue,
                            ),
                            title: Text(
                              "Dark Web'i izleyin",
                              style: TextStyle(
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildTabViewBodyContainer4() {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
            "Depoloma alanı planı satın almaya hazır değil misiniz? Hesap depolama alanında yer açın."),
        SizedBox(height: 15),
        Text(
            "Planınızı dilediğiniz zaman iptal edebilir veya değiştirebilirsiniz. Depolama alanı Drive, Fotoğraflar ve Gmail için kullanılır"),
        SizedBox(height: 15),
        Text(
            "Bir Google One planı satın alarak Google One Hizmet Şartları'nı kabul etmiş olursunuz. Bu hizmette verilerin nasıl işlendiği Google Gizlilik Polikası'nda açıklanmıştır."),
      ],
    );
  }


  Widget buildTabViewItem2BodyContainer1() {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.blueGrey,
              Colors.white54,
            ],
          ),
          border: Border(
            top: BorderSide(color: Colors.green, width: 4.0),
            bottom: BorderSide(color: Colors.red, width: 4.0),
            left: BorderSide(color: Colors.blue, width: 4.0),
            right: BorderSide(color: Colors.yellow, width: 4.0),
          ),
          color: Colors.white),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.bookmark_border),
                      Text(
                        "İndirimli fiyat",
                        style: TextStyle(fontSize: 18),
                      )
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
                Text(
                  "Basic (100 GB)",
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "₺29,97",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.grey.shade800,
                          decoration: TextDecoration.lineThrough),
                    ),
                    const SizedBox(width: 10),
                    const Text("3 ay süreyle ₺8,99",
                        style: TextStyle(fontSize: 18)),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Sonrasında ₺9,99/yıl",
                      style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                const Row(children: [Text(
                  "Yıllık planla %16 tasarruf\nedin.",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 18,
                  ),
                )],),

                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Dilediğiniz zaman iptal\nedebilirsiniz. Şartlar\ngeçerlidir.",
                      style: TextStyle(fontSize: 16),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          hizmetSartlariKabulEt();
                        },
                        child: const Text("Teklifi Kullan"))
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          avantajlariGoster4 = !avantajlariGoster4;
                        });
                      },
                      child: const Row(
                        children: [
                          Text(
                            "Tüm avantajları göster",
                            style: TextStyle(color: Colors.black),
                          ),
                          Icon(
                            Icons.arrow_drop_down_outlined,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                if (avantajlariGoster4)
                  Container(
                    padding: const EdgeInsets.all(16),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            height: 3,
                            width: 300,
                            color: Colors.black45,
                          ),
                          const ListTile(
                            selectedTileColor: Colors.white,
                            leading: Icon(
                              Icons.check,
                              color: Colors.blue,
                            ),
                            title: Text("100 GB depolama alanı"),
                          ),
                          const ListTile(
                            selectedTileColor: Colors.white,
                            leading: Icon(
                              Icons.check,
                              color: Colors.blue,
                            ),
                            title: Text("Google uzmanlarına erişin"),
                          ),
                          const ListTile(
                            selectedTileColor: Colors.white,
                            leading: Icon(
                              Icons.check,
                              color: Colors.blue,
                            ),
                            title: Text("5 kişiyle daha paylaşma olanağı"),
                          ),
                          const ListTile(
                            selectedTileColor: Colors.white,
                            leading: Icon(
                              Icons.check,
                              color: Colors.blue,
                            ),
                            title: Text(
                              "Google Fotoğraflar'daki diğer düzenleme özellikleri",
                              style: TextStyle(
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                          const ListTile(
                            selectedTileColor: Colors.white,
                            leading: Icon(
                              Icons.check,
                              color: Colors.blue,
                            ),
                            title: Text("Üyelere sunulan ek avantajlar"),
                          ),
                          const ListTile(
                            selectedTileColor: Colors.white,
                            leading: Icon(
                              Icons.check,
                              color: Colors.blue,
                            ),
                            title: Text(
                              "Dark Web'i izleyin",
                              style: TextStyle(
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildTabViewItem2BodyContainer2() {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.blueGrey,
              Colors.white54,
            ],
          ),
          border: Border(
            top: BorderSide(color: Colors.green, width: 4.0),
            bottom: BorderSide(color: Colors.red, width: 4.0),
            left: BorderSide(color: Colors.blue, width: 4.0),
            right: BorderSide(color: Colors.yellow, width: 4.0),
          ),
          color: Colors.white),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.bookmark_border),
                      Text(
                        "İndirimli fiyat",
                        style: TextStyle(fontSize: 18),
                      )
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
                Text(
                  "Standard (200 GB)",
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "₺59,97",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.grey.shade800,
                          decoration: TextDecoration.lineThrough),
                    ),
                    const SizedBox(width: 10),
                    const Text("3 ay süreyle ₺14,99",
                        style: TextStyle(fontSize: 18)),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Sonrasında ₺199,99/yıl",
                      style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                const Row(children: [Text(
                  "Yıllık planla %16 tasarruf\nedin.",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 18,
                  ),
                )],),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Dilediğiniz zaman iptal\nedebilirsiniz. Şartlar\ngeçerlidir.",
                      style: TextStyle(fontSize: 16),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          hizmetSartlariKabulEt();
                        }, child: const Text("Teklifi Kullan"))
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      style: const ButtonStyle(
                        alignment: Alignment.center,
                      ),
                      onPressed: () {
                        setState(() {
                          avantajlariGoster5 = !avantajlariGoster5;
                        });
                      },
                      child: const Row(
                        children: [
                          Text(
                            "Tüm avantajları göster",
                            style: TextStyle(color: Colors.black),
                          ),
                          Icon(
                            Icons.arrow_drop_down_outlined,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                if (avantajlariGoster5)
                  Container(
                    padding: const EdgeInsets.all(16),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            height: 3,
                            width: 300,
                            color: Colors.black45,
                          ),
                          const ListTile(
                            selectedTileColor: Colors.white,
                            leading: Icon(
                              Icons.check,
                              color: Colors.blue,
                            ),
                            title: Text("200 GB depolama alanı"),
                          ),
                          const ListTile(
                            selectedTileColor: Colors.white,
                            leading: Icon(
                              Icons.check,
                              color: Colors.blue,
                            ),
                            title: Text("Google uzmanlarına erişin"),
                          ),
                          const ListTile(
                            selectedTileColor: Colors.white,
                            leading: Icon(
                              Icons.check,
                              color: Colors.blue,
                            ),
                            title: Text("5 kişiyle daha paylaşma olanağı"),
                          ),
                          const ListTile(
                            selectedTileColor: Colors.white,
                            leading: Icon(
                              Icons.check,
                              color: Colors.blue,
                            ),
                            title: Text(
                              "Google Fotoğraflar'daki diğer düzenleme özellikleri",
                              style: TextStyle(
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                          const ListTile(
                            selectedTileColor: Colors.white,
                            leading: Icon(
                              Icons.check,
                              color: Colors.blue,
                            ),
                            title: Text("Üyelere sunulan ek avantajlar"),
                          ),
                          const ListTile(
                            selectedTileColor: Colors.white,
                            leading: Icon(
                              Icons.check,
                              color: Colors.blue,
                            ),
                            title: Text(
                              "Dark Web'i izleyin",
                              style: TextStyle(
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildTabViewItem2BodyContainer3() {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.blueGrey,
              Colors.white54,
            ],
          ),
          border: Border(
            top: BorderSide(color: Colors.green, width: 4.0),
            bottom: BorderSide(color: Colors.red, width: 4.0),
            left: BorderSide(color: Colors.blue, width: 4.0),
            right: BorderSide(color: Colors.yellow, width: 4.0),
          ),
          color: Colors.white),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.bookmark_border),
                      Text(
                        "İndirimli fiyat",
                        style: TextStyle(fontSize: 18),
                      )
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
                Text(
                  "Premium (2 TB)",
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "₺149,97",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.grey.shade800,
                          decoration: TextDecoration.lineThrough),
                    ),
                    const SizedBox(width: 10),
                    const Text("3 ay süreyle ₺38,99",
                        style: TextStyle(fontSize: 18)),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Sonrasında ₺499,99/yıl",
                      style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                const Row(children: [Text(
                  "Yıllık planla %16 tasarruf\nedin.",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 18,
                  ),
                )],),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Dilediğiniz zaman iptal\nedebilirsiniz. Şartlar\ngeçerlidir.",
                      style: TextStyle(fontSize: 16),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          hizmetSartlariKabulEt();
                        }, child: const Text("Teklifi Kullan"))
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      style: const ButtonStyle(
                        alignment: Alignment.center,
                      ),
                      onPressed: () {
                        setState(() {
                          avantajlariGoster6 = !avantajlariGoster6;
                        });
                      },
                      child: const Row(
                        children: [
                          Text(
                            "Tüm avantajları göster",
                            style: TextStyle(color: Colors.black),
                          ),
                          Icon(
                            Icons.arrow_drop_down_outlined,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                if (avantajlariGoster6)
                  Container(
                    padding: const EdgeInsets.all(16),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            height: 3,
                            width: 300,
                            color: Colors.black45,
                          ),
                          const ListTile(
                            selectedTileColor: Colors.white,
                            leading: Icon(
                              Icons.check,
                              color: Colors.blue,
                            ),
                            title: Text("2 TB depolama alanı"),
                          ),
                          const ListTile(
                            selectedTileColor: Colors.white,
                            leading: Icon(
                              Icons.check,
                              color: Colors.blue,
                            ),
                            title: Text("Google uzmanlarına erişin"),
                          ),
                          const ListTile(
                            selectedTileColor: Colors.white,
                            leading: Icon(
                              Icons.check,
                              color: Colors.blue,
                            ),
                            title: Text("5 kişiyle daha paylaşma olanağı"),
                          ),
                          const ListTile(
                            selectedTileColor: Colors.white,
                            leading: Icon(
                              Icons.check,
                              color: Colors.blue,
                            ),
                            title: Text(
                              "Google Fotoğraflar'daki diğer düzenleme özellikleri",
                              style: TextStyle(
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                          const ListTile(
                            selectedTileColor: Colors.white,
                            leading: Icon(
                              Icons.check,
                              color: Colors.blue,
                            ),
                            title: Text("Üyelere sunulan ek avantajlar"),
                          ),
                          const ListTile(
                            selectedTileColor: Colors.white,
                            leading: Icon(
                              Icons.check,
                              color: Colors.blue,
                            ),
                            title: Text(
                              "Dark Web'i izleyin",
                              style: TextStyle(
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildTabViewItem2BodyContainer4() {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
            "Depoloma alanı planı satın almaya hazır değil misiniz? Hesap depolama alanında yer açın."),
        SizedBox(height: 15),
        Text(
            "Planınızı dilediğiniz zaman iptal edebilir veya değiştirebilirsiniz. Depolama alanı Drive, Fotoğraflar ve Gmail için kullanılır"),
        SizedBox(height: 15),
        Text(
            "Bir Google One planı satın alarak Google One Hizmet Şartları'nı kabul etmiş olursunuz. Bu hizmette verilerin nasıl işlendiği Google Gizlilik Polikası'nda açıklanmıştır."),
      ],
    );
  }

  PreferredSizeWidget tabBarimBottom() {
    return PreferredSize(
      preferredSize: const Size(double.infinity, 80),
      child: TabBar(
          automaticIndicatorColorAdjustment: false,
          labelStyle: const TextStyle(
            color: Colors.black,
          ),
          unselectedLabelColor: Colors.black,
          indicatorColor: Colors.cyan,
          indicator: BoxDecoration(
              color: Colors.grey.shade300,
              border: Border.all(
                  color: Colors.black, width: 1, style: BorderStyle.solid)),
          indicatorSize: TabBarIndicatorSize.tab,
          controller: tabController,
          tabs: const [
            Tab(
              child: Text("Aylık",
                  style: TextStyle(fontSize: 17, color: Colors.black)),
            ),
            Tab(
              child: Column(
                children: [
                  Text("Yıllık",
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "%16",
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      Text(
                        " indirim",
                        style: TextStyle(fontSize: 17, color: Colors.black),
                      )
                    ],
                  )
                ],
              ),
            ),
          ]),
    );
  }

  void hizmetSartlariKabulEt() {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(


            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Google One Hizmet Şartları", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                const SizedBox(height: 15),
                const Text(
                  "Bir  Google One planına geçerek Google One Hizmet Şartları'nı ve Teklif Şartlar ve Koşşarı'nı kabul etmiş olursunuz. Not: Google Gizlilik Politikası verilerin bu hizmette nasıl işlendiğini açıklar.",
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 20),

                Row( mainAxisAlignment: MainAxisAlignment.end,children: [TextButton(onPressed: (){
                  Navigator.pop(context);
                }, child: const Text("İptal",style:TextStyle(color: Colors.black))),const SizedBox(width: 10),ElevatedButton(onPressed: (){},style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blue.shade200)), child: const Text("Kabul Ediyorum",style:TextStyle(color: Colors.black)),)],)
              ],
            ),
          );
        });
  }
}
