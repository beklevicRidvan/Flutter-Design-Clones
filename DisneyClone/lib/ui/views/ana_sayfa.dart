import 'package:bootcamp3_odev/data/entity/icerik.dart';
import 'package:bootcamp3_odev/ui/views/arama_sayfasi.dart';
import 'package:bootcamp3_odev/ui/views/indirme_sayfasi.dart';
import 'package:bootcamp3_odev/ui/views/profil_sayfasi.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {

  int secilenMenuItem = 0;

  List<Widget> sayfalarListesi = [
    const AnaSayfa(),
    const AramaSayfasi(),
    const IndirmeSayfasi(),
    const ProfilSayfasi(),
  ];


  List<AppBar> appBarListesi= [
    AppBar(
      title: Image.asset("assets/logo6.png", fit: BoxFit.contain, width: 100),
      centerTitle: true,
      backgroundColor: Icerik.myRenk ,
    ),

    AppBar(toolbarHeight: 100,automaticallyImplyLeading: false,title:
    TextFormField(
      autofocus: true,
      decoration:
      InputDecoration(border: OutlineInputBorder(borderSide: BorderSide.none,borderRadius: BorderRadius.circular(10)),prefixIcon: Icon(Icons.search,color: Colors.black,size: 25,),hintText: "Arama yapın",contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),hintStyle:const TextStyle(color: Colors.black45,fontWeight: FontWeight.bold,fontSize: 18),filled: true,fillColor: Colors.white),

    ),
      backgroundColor: Icerik.myRenk,),

    AppBar(title: Text("İndirmeler",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),),backgroundColor:Icerik.myRenk),
    AppBar(toolbarHeight: 160,backgroundColor: Icerik.myRenk,title: Row(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Column(


          children: [
            CircleAvatar(child: Image.asset("assets/loki.png"),radius: 50,),
            SizedBox(height: 10),
            const Text("Rıdvan",style: TextStyle(color: Colors.white,fontSize: 17),),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        ),
        SizedBox(width: 10),
        Column(


          children: [
            CircleAvatar(backgroundColor: Colors.blueGrey.withOpacity(0.2),child: Icon(Icons.add,color: Colors.white,size: 50,),radius: 50,),
            SizedBox(height: 10),
            const Text("Profil Ekleyin",style: TextStyle(letterSpacing: 3,fontSize: 17,color: Colors.grey),),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        ),

      ],
    ),),




  ];



  List<String> sliderListesi = [
    "assets/blackcake.jpg",
    "assets/theartfuldodger.jpg",
    "assets/whatif.jpg",
    "assets/solar.jpg",
    "assets/hayvanyolculukları.jpg",
    "assets/mordu.jpg",
    "assets/babydady.jpg"
  ];



  Future<List<Icerik>> icerikleriYuke() async {
    List<Icerik> icerikListesi = [];
    var i1 = Icerik(
        filmId: 1,
        filmAdi: "The Simpsons",
        filmAciklamasi: "",
        resimAdresi: "assets/thesimpsons.png");
    var i2 = Icerik(
        filmId: 2,
        filmAdi: "Thor Ragnarok",
        filmAciklamasi: "",
        resimAdresi: "assets/thor-ragnarok.png");
    var i3 = Icerik(
        filmId: 3,
        filmAdi: "Percy Jacson",
        filmAciklamasi: "",
        resimAdresi: "assets/percyjacson.png");
    var i4 = Icerik(
        filmId: 4,
        filmAdi: "Grey's Anatomy",
        filmAciklamasi: "",
        resimAdresi: "assets/greysanatomy.png");
    var i5 = Icerik(
        filmId: 5,
        filmAdi: "Echo",
        filmAciklamasi: "",
        resimAdresi: "assets/echo.png");
    var i6 = Icerik(
        filmId: 6,
        filmAdi: "What İf",
        filmAciklamasi: "",
        resimAdresi: "assets/whatif.png");
    var i7 = Icerik(
        filmId: 7,
        filmAdi: "Station 19",
        filmAciklamasi: "",
        resimAdresi: "assets/station19.png");

    icerikListesi.add(i1);
    icerikListesi.add(i2);
    icerikListesi.add(i3);
    icerikListesi.add(i4);
    icerikListesi.add(i5);
    icerikListesi.add(i6);
    icerikListesi.add(i7);
    return icerikListesi;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }



  AppBar myAppBar(){
    return AppBar(
      title: Image.asset("assets/logo6.png", fit: BoxFit.contain, width: 100),
      centerTitle: true,
      backgroundColor: Icerik.myRenk,
    );
  }

  AppBar buildAramaAppbar(){
    return  AppBar(toolbarHeight: 100,automaticallyImplyLeading: false,title:
    TextFormField(
      autofocus: true,
      decoration:
      InputDecoration(border: OutlineInputBorder(borderSide: BorderSide.none,borderRadius: BorderRadius.circular(10)),prefixIcon: Icon(Icons.search,color: Colors.black,size: 25,),hintText: "Arama yapın",contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),hintStyle:const TextStyle(color: Colors.black45,fontWeight: FontWeight.bold,fontSize: 18),filled: true,fillColor: Colors.white),

    ),
      backgroundColor: Colors.transparent,);
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: buildBottomNavMenu(),
      extendBody: true,
      appBar: secilenMenuItem == 0 ? AppBar(
        title: Image.asset("assets/logo6.png", fit: BoxFit.contain, width: 100),
        centerTitle: true,
        backgroundColor: Icerik.myRenk,
      ) : appBarListesi[secilenMenuItem],

      body: secilenMenuItem ==0  ? SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Icerik.myRenk,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: FutureBuilder(
                        future: icerikleriYuke(),
                        builder: (context, snapshots) {
                          if (snapshots.hasData) {
                            var icerikListesi = snapshots.data;

                            return Container(
                              height: 200,
                              alignment: Alignment.center,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: icerikListesi!.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    var secilenIcerik = icerikListesi[index];
                                    return Card(
                                      elevation: 1.2,
                                      borderOnForeground: false,
                                      shadowColor: Colors.white,
                                      color: Icerik.myRenk,
                                      margin:
                                      EdgeInsets.symmetric(horizontal: 20),
                                      child: Container(
                                        child: ClipRRect(
                                            borderRadius:
                                            BorderRadius.circular(20),
                                            child: Image.asset(
                                                secilenIcerik.resimAdresi,
                                                fit: BoxFit.contain)),
                                      ),
                                    );
                                  }),
                            );
                          } else {
                            return Container();
                          }
                        }),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Icerik.myRenk,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2), // Gölge rengi
                            spreadRadius: 1, // Yayılma yarıçapı
                            blurRadius: 8, // Bulanıklık yarıçapı
                            offset: Offset(0, 3), // Gölge konumu (x, y)
                          ),
                        ],
                      ),
                      width: 60,
                      height: 60,
                      alignment: Alignment.center,
                      child: Image.asset("assets/disnep.png",
                          fit: BoxFit.contain, alignment: Alignment.center),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Icerik.myRenk,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2), // Gölge rengi
                            spreadRadius: 1, // Yayılma yarıçapı
                            blurRadius: 8, // Bulanıklık yarıçapı
                            offset: Offset(0, 3), // Gölge konumu (x, y)
                          ),
                        ],
                      ),
                      width: 60,
                      height: 60,
                      alignment: Alignment.center,
                      child: Image.asset("assets/pixar.png",
                          fit: BoxFit.contain, alignment: Alignment.center),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Icerik.myRenk,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2), // Gölge rengi
                            spreadRadius: 1, // Yayılma yarıçapı
                            blurRadius: 8, // Bulanıklık yarıçapı
                            offset: Offset(0, 3), // Gölge konumu (x, y)
                          ),
                        ],
                      ),
                      width: 60,
                      height: 60,
                      alignment: Alignment.center,
                      child: Image.asset("assets/marvel.png",
                          fit: BoxFit.contain, alignment: Alignment.center),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Icerik.myRenk,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2), // Gölge rengi
                            spreadRadius: 1, // Yayılma yarıçapı
                            blurRadius: 8, // Bulanıklık yarıçapı
                            offset: Offset(0, 3), // Gölge konumu (x, y)
                          ),
                        ],
                      ),
                      width: 60,
                      height: 60,
                      alignment: Alignment.center,
                      child: Image.asset("assets/starwars.png",
                          fit: BoxFit.contain, alignment: Alignment.center),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Icerik.myRenk,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2), // Gölge rengi
                            spreadRadius: 1, // Yayılma yarıçapı
                            blurRadius: 8, // Bulanıklık yarıçapı
                            offset: Offset(0, 3), // Gölge konumu (x, y)
                          ),
                        ],
                      ),
                      width: 60,
                      height: 60,
                      alignment: Alignment.center,
                      child: Image.asset("assets/national.png",
                          fit: BoxFit.contain, alignment: Alignment.center),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  "Disney+'ta Yeni",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 200,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: sliderListesi.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                width: 100,
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                color: Icerik.myRenk,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(sliderListesi[index],
                                        fit: BoxFit.contain)),
                              );
                            }),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  "Bu Akşam İzlemek İsteyebileceklerin",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 250,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: sliderListesi.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                color: Icerik.myRenk,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(sliderListesi[index],
                                        fit: BoxFit.cover)),
                              );
                            }),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: const Text(
                  "Aksiyon ve Macera",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 200,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: sliderListesi.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                width: 100,
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                color: Icerik.myRenk,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(sliderListesi[index],
                                        fit: BoxFit.contain)),
                              );
                            }),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 25,),child: const Text(
                "İzlemeye Devam Et",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  margin: const EdgeInsets.only(top: 10),
                  height: 300,
                  child: Row(
                    children: [
                      Expanded(
                        child: ListView(scrollDirection: Axis.horizontal,children: [
                          Container(


                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Stack(children: [
                                  Container( width: 350,child: Image.asset("assets/walkingdead.jpg",fit: BoxFit.cover,),),
                                  Positioned(child: CircleAvatar(backgroundColor: Icerik.yanRenk,child: Icon(Icons.play_arrow,color: Colors.white,size: 20),radius: 15,),bottom: 30,left: 10,),
                                  Positioned(child: ClipRRect(borderRadius: BorderRadius.circular(20),child: Container(color: Colors.blue,height: 5,child: Divider(color: Colors.grey,thickness: 5,indent:100 ,))),width:320,bottom: 15,left: 10,)

                                ],),
                                Text("The Walking Dead",style: TextStyle(color: Colors.white,fontSize: 18),),
                                Text("S1:B3 Ölü Adamın Sırları",style: TextStyle(color: Colors.grey,fontSize: 15),),
                                Text("25 dk kaldı",style: TextStyle(color: Colors.grey,fontSize: 14),),


                              ],
                            ),
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                          ),
                          Container(


                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Stack(children: [
                                  Container( width: 350,child: Image.asset("assets/walkingdead.jpg",fit: BoxFit.cover,),),
                                  Positioned(child: CircleAvatar(backgroundColor: Icerik.yanRenk,child: Icon(Icons.play_arrow,color: Colors.white,size: 20),radius: 15,),bottom: 30,left: 10,),
                                  Positioned(child: ClipRRect(borderRadius: BorderRadius.circular(20),child: Container(color: Colors.blue,height: 5,child: Divider(color: Colors.grey,thickness: 5,indent:100 ,))),width:320,bottom: 15,left: 10,)

                                ],),
                                Text("The Walking Dead",style: TextStyle(color: Colors.white,fontSize: 18),),
                                Text("S1:B3 Ölü Adamın Sırları",style: TextStyle(color: Colors.grey,fontSize: 15),),
                                Text("25 dk kaldı",style: TextStyle(color: Colors.grey,fontSize: 14),),


                              ],
                            ),
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                          ),
                          Container(


                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Stack(children: [
                                  Container( width: 350,child: Image.asset("assets/walkingdead.jpg",fit: BoxFit.cover,),),
                                  Positioned(child: CircleAvatar(backgroundColor: Icerik.yanRenk,child: Icon(Icons.play_arrow,color: Colors.white,size: 20),radius: 15,),bottom: 30,left: 10,),
                                  Positioned(child: ClipRRect(borderRadius: BorderRadius.circular(20),child: Container(color: Colors.blue,height: 5,child: Divider(color: Colors.grey,thickness: 5,indent:100 ,))),width:320,bottom: 15,left: 10,)

                                ],),
                                Text("The Walking Dead",style: TextStyle(color: Colors.white,fontSize: 18),),
                                Text("S1:B3 Ölü Adamın Sırları",style: TextStyle(color: Colors.grey,fontSize: 15),),
                                Text("25 dk kaldı",style: TextStyle(color: Colors.grey,fontSize: 14),),


                              ],
                            ),
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                          ),
                          Container(


                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Stack(children: [
                                  Container( width: 350,child: Image.asset("assets/walkingdead.jpg",fit: BoxFit.cover,),),
                                  Positioned(child: CircleAvatar(backgroundColor: Icerik.yanRenk,child: Icon(Icons.play_arrow,color: Colors.white,size: 20),radius: 15,),bottom: 30,left: 10,),
                                  Positioned(child: ClipRRect(borderRadius: BorderRadius.circular(20),child: Container(color: Colors.blue,height: 5,child: Divider(color: Colors.grey,thickness: 5,indent:100 ,))),width:320,bottom: 15,left: 10,)

                                ],),
                                Text("The Walking Dead",style: TextStyle(color: Colors.white,fontSize: 18),),
                                Text("S1:B3 Ölü Adamın Sırları",style: TextStyle(color: Colors.grey,fontSize: 15),),
                                Text("25 dk kaldı",style: TextStyle(color: Colors.grey,fontSize: 14),),


                              ],
                            ),
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                          ),



                        ]),
                      ),
                    ],

                  ),
                ),
              ),
              SizedBox(height: 50),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(width: 500,height: 300,decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/badging.jpg"),fit: BoxFit.cover)),alignment:Alignment.center ,child: Text("Komedi\nKoleksiyonu",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontFamily: "Honk",fontSize: 40,fontWeight: FontWeight.bold),),)),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: const Text(
                  "Sana Özel Öneriler",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 200,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: sliderListesi.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                width: 100,
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                color: Icerik.myRenk,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(sliderListesi[index],
                                        fit: BoxFit.contain)),
                              );
                            }),
                      ),
                    ),
                  ],
                ),
              ),




            ],
          ),
        ),
      ) : sayfalarListesi[secilenMenuItem]
    );
  }


  BottomNavigationBar buildBottomNavMenu(){
    return BottomNavigationBar(items:
    [
      BottomNavigationBarItem(icon: Icon(Icons.home,size: 30,),label: ""),
      BottomNavigationBarItem(icon: Icon(Icons.search,size: 30,),label: ""),
      BottomNavigationBarItem(icon: Icon(Icons.download,size: 30,),label: ""),

      BottomNavigationBarItem(icon: Image.asset("assets/loki.png",width: 30,fit: BoxFit.contain,),label: ""),



    ],

      currentIndex: secilenMenuItem,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Icerik.myRenk,
      onTap: (index){
        setState(() {
          secilenMenuItem = index;
        });

      },

    );
  }
}
