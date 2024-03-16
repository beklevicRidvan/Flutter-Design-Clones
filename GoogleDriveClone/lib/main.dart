import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tasarimi_kolaylastiracak_ornek/DrawerItems/%C3%A7%C3%B6p_kutusu.dart';
import 'package:tasarimi_kolaylastiracak_ornek/DrawerItems/%C3%A7evrimd%C4%B1%C5%9F%C4%B1.dart';
import 'package:tasarimi_kolaylastiracak_ornek/DrawerItems/ayarlar.dart';
import 'package:tasarimi_kolaylastiracak_ornek/DrawerItems/depolama_alani.dart';
import 'package:tasarimi_kolaylastiracak_ornek/DrawerItems/enson.dart';
import 'package:tasarimi_kolaylastiracak_ornek/DrawerItems/spam.dart';
import 'package:tasarimi_kolaylastiracak_ornek/DrawerItems/yardim_geribildirim.dart';
import 'package:tasarimi_kolaylastiracak_ornek/DrawerItems/yedeklemeler.dart';
import 'package:tasarimi_kolaylastiracak_ornek/Sabitler/sabitler.dart';
import 'package:tasarimi_kolaylastiracak_ornek/PageView/ana_sayfa.dart';
import 'package:tasarimi_kolaylastiracak_ornek/PageView/dosyalar.dart';
import 'package:tasarimi_kolaylastiracak_ornek/TabBar/etkinlik.dart';
import 'package:tasarimi_kolaylastiracak_ornek/TabBar/onerilen.dart';
import 'package:tasarimi_kolaylastiracak_ornek/PageView/payla%C5%9F%C4%B1lan.dart';
import 'package:tasarimi_kolaylastiracak_ornek/PageView/yildizli.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late List<Widget> tabBarSayfalari;
  late List<Widget> tumSayfalar;
  late OnerilenSayfasi sayfaOnerilen;
  late EtkinlikSayfasi sayfaEtkinlik;
  late TabController tabController;
  late PageController pageController;
  late AnaSayfa sayfaAna;

  late Dosyalar sayfaDosyalar;
  late Yildizli sayfaYildizli;
  late Paylasilan sayfaPaylasilan;
  double sliderDeger = 1;
  int secilenMenuItem = 0;
  int tabBarItem = 0;

  @override
  void initState() {
    super.initState();
    sayfaAna = const AnaSayfa();
    sayfaYildizli = const Yildizli();
    sayfaPaylasilan = const Paylasilan();
    sayfaDosyalar = const Dosyalar();
    sayfaEtkinlik = const EtkinlikSayfasi();
    sayfaOnerilen = const OnerilenSayfasi();

    tabController = TabController(length: 2, vsync: this);
    pageController = PageController();
    pageController.addListener(() {
      if (pageController.page?.round() != secilenMenuItem) {
        setState(() {
          secilenMenuItem = pageController.page?.round() ?? 0;
        });
      }
    });

    tabBarSayfalari = [sayfaEtkinlik, sayfaOnerilen];

    tumSayfalar = [sayfaAna, sayfaYildizli, sayfaPaylasilan, sayfaDosyalar];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        bottom: tabBarim(),
        iconTheme: const IconThemeData(
          color: Colors.white,
          size: 35,
        ),
        backgroundColor: Colors.transparent,
        title: buildAppBarTextFormField(),
      ),
      drawer: buildDrawer(),
      body: PageView(
        onPageChanged: (index) {
          secilenMenuItem = index;
        },
        controller: pageController,
        children: tumSayfalar,
      ),
      bottomNavigationBar: bottomNavMenu(),
    );
  }

  TextFormField buildAppBarTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
          suffixIcon: const Icon(Icons.search),
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
              borderRadius: Sabitler.textFormRadius,
              borderSide: BorderSide.none),
          hintText: "Drive'da arayın",
          contentPadding: Sabitler.textFormPadding),
    );
  }

  Drawer buildDrawer() {
    return Drawer(
      surfaceTintColor: Colors.black12,
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            const SizedBox(
              height: 160,
              child: UserAccountsDrawerHeader(
                accountName: Text(
                  "Rıdvan Bekleviç",
                  style: TextStyle(color: Colors.black),
                ),
                accountEmail: Text(
                  "ridvanbeklevic34@gmail.com",
                  style: TextStyle(color: Colors.black),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                currentAccountPicture: Text(
                  "Google Drive",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                currentAccountPictureSize: Size(150, 30),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.push(context,
                            CupertinoPageRoute(builder: (context) => const EnSon()));
                      },
                      child: const ListTile(
                        leading: Icon(Icons.history_outlined),
                        title: Text("En Son"),
                      )),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => const Cevrimdisi()));
                      },
                      child: const ListTile(
                        leading: Icon(Icons.network_check_outlined),
                        title: Text("Çevrimdışı"),
                      )),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => const CopKutusu()));
                      },
                      child: const ListTile(
                        leading: Icon(Icons.recycling_outlined),
                        title: Text("Çöp Kutusu"),
                      )),
                  InkWell(
                      onTap: () {
                        Navigator.push(context,
                            CupertinoPageRoute(builder: (context) => const Spam()));
                      },
                      child: const ListTile(
                        leading: Icon(Icons.warning_amber_outlined),
                        title: Text("Spam"),
                      )),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => const Yedeklemeler()));
                      },
                      child: const ListTile(
                        leading: Icon(Icons.cloud_upload_outlined),
                        title: Text("Yedeklemeler"),
                      )),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => const Ayarlar()));
                      },
                      child: const ListTile(
                        leading: Icon(Icons.settings_outlined),
                        title: Text("Ayarlar"),
                      )),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => const YardimVeGeriBildirim()));
                      },
                      child: const ListTile(
                        leading: Icon(Icons.help_outline_outlined),
                        title: Text("Yardım ve geri bildirim"),
                      )),
                  const InkWell(
                      child: ListTile(
                    leading: Icon(Icons.cloud_outlined),
                    title: Text("Depolama Alanı"),
                  )),
                  Slider(
                    onChanged: (deger) {
                      setState(() {
                        sliderDeger = deger;
                      });
                    },
                    min: 0,
                    max: 15,
                    label: sliderDeger.toString(),
                    divisions: 15,
                    value: sliderDeger,
                    activeColor: Colors.cyan,

                    // Çizgi yüksekliği
                  ),
                  ListTile(
                      title: Text(
                    "15 GB toplam depolama alanından ${sliderDeger.toStringAsFixed(0)} GB kadarı kullanılıyor",
                    style: const TextStyle(fontSize: 16),
                  )),
                  ListTile(
                    title: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.cyan.shade300),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)))),
                      onPressed: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (BuildContext context) =>
                                  const DepolamaAlani()),
                        );
                      },
                      child: const Text(
                        "Daha fazla depolama alanı alın",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  // Doldurulan kısım rengi
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Theme bottomNavMenu() {
    return Theme(
      data: ThemeData(
          hoverColor: Colors.white,
          canvasColor: Colors.cyan,
          primaryColor: Colors.orangeAccent),
      child: BottomNavigationBar(
          iconSize: 30,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          unselectedIconTheme: const IconThemeData(color: Colors.white),
          unselectedFontSize: 15,
          unselectedLabelStyle: const TextStyle(color: Colors.white),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Ana ekran',
                backgroundColor: Colors.amber),
            BottomNavigationBarItem(
                icon: Icon(Icons.star_border_outlined),
                label: 'Yıldızlı',
                backgroundColor: Colors.red),
            BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle_outlined),
                label: 'Paylaşılan',
                backgroundColor: Colors.tealAccent),
            BottomNavigationBarItem(
                icon: Icon(Icons.folder_open),
                label: 'Dosyalar',
                backgroundColor: Colors.brown),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: secilenMenuItem,
          onTap: (index) {
            setState(() {
              pageController.animateToPage(index,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.ease);
            });
          }),
    );
  }

  TabBar tabBarim() {
    return TabBar(
      controller: tabController,
      dividerColor: Colors.white,
      labelColor: Colors.white,
      indicatorColor: Colors.white,
      indicatorSize: TabBarIndicatorSize.tab,
      tabs: const [
        Tab(
          child: Text(
            "Önerilen",
            style: TextStyle(fontSize: 20),
          ),
        ),
        Tab(
          child: Text(
            "Etlinlik",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ],
      onTap: (index) {
        setState(() {
          // TabBar'ın sekmelerine tıklandığında body kısmını güncelle
          tabBarItem = index;
        });
      },
    );
  }
}
