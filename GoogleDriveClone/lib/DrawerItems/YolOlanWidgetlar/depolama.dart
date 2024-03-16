import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tasarimi_kolaylastiracak_ornek/DrawerItems/depolama_alani.dart';


class Depolama extends StatefulWidget {
  const Depolama({Key? key}) : super(key: key);


  @override
  State<Depolama> createState() => _PaylasilanState();
}

class _PaylasilanState extends State<Depolama> {
  EdgeInsets dialogPadding = const EdgeInsets.only(top: 250);
  double kullanilanDepolama = 0.1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body : SingleChildScrollView(
        child: Column(


          children: [

            Container(
              alignment: Alignment.center,

              child: const CircleAvatar(radius: 30,backgroundImage: AssetImage("assets/rgb.png"),child: Text("1",style: TextStyle(fontSize: 21),)),

            ),
            buildTabViewBodyContainer1(),
            Row(

              children: [
                Container(width: 390,height: 3,color: Colors.grey,),
              ],
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const ListTile(contentPadding: EdgeInsets.all(0),title: Text("Rıdvan Bekleviç"),subtitle: Text("ridvanbeklevic34@gmail.com"),leading: CircleAvatar(backgroundColor: Colors.blueGrey,child: Text("R",style: TextStyle(color: Colors.white,fontSize: 19),),),),
                  //Container(padding: EdgeInsets.all(10),width: 150,height: 5,color: Colors.grey.shade400,child: Container(width: 50,height: 2,color: Colors.red,),),
                  const ListTile(contentPadding: EdgeInsets.all(0),title: Text("Kullanılan depolama alanı",style: TextStyle(fontSize: 16)),trailing: Text("600,90 MB/15 GB",style: TextStyle(fontSize: 15),)),
                  LinearProgressIndicator(
                    minHeight: 10,
                    borderRadius: BorderRadius.circular(15),
                    value: kullanilanDepolama, // 0.0 ile 1.0 arasında bir değer
                    backgroundColor: Colors.grey, // Çubuğun arka plan rengi
                    valueColor: const AlwaysStoppedAnimation<Color>(Colors.red), // Çubuğun dolu kısmının rengi
                  ),

                  const SizedBox(height: 20),
                  const ListTile(contentPadding:EdgeInsets.all(0),leading: CircleAvatar(radius: 15,backgroundColor: Colors.red,), title: Text("Gmail"),trailing: Text("550 MB",style: TextStyle(fontSize: 14),),),
                 const ListTile(contentPadding:EdgeInsets.all(0),leading: CircleAvatar(radius: 15,backgroundColor: Colors.blue,), title: Text("Google Drive"),trailing: Text("50 MB",style: TextStyle(fontSize: 14),),),
                  const ListTile(contentPadding:EdgeInsets.all(0),leading: CircleAvatar(radius: 15,backgroundColor: Colors.yellow,), title: Text("Google Fotoğraflar"),trailing: Text("0.90 MB",style: TextStyle(fontSize: 14),),)


                ],
              ),
            ),





          ],
        ),
      ),



    );
  }

  AppBar buildAppBar() {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.black, size: 25),
      titleTextStyle: const TextStyle(color: Colors.black, fontSize: 23),
      bottom: PreferredSize(preferredSize: const Size(double.maxFinite, 20), child: Container()),

      title: const Text("Depolama"),

    );
  }
  Widget buildTabViewBodyContainer1() {
    
    return Container(
      margin: const EdgeInsets.all(18),

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
            child: Container(alignment: Alignment.center,child: const Text("Önerilen",style: TextStyle(fontSize: 17,color: Colors.blue),),),

          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
                const Text("₺2,99/ay karşılığında 3 ay",
                    style: TextStyle(fontSize: 17)),
              ],
            ),
          ),
          const Text("boyunca 100 GB depolama alanı",style: TextStyle(fontSize: 17)),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Google Fotoğraflar,Drive ve Gmail'de\ndaha fazla depolama alanına sahip olun.\nPromosyon döneminden sonra ₺9,99/ay",style: TextStyle(fontSize: 16),),
              ],
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                  }, child: const Text("Teklifi Kullan")),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.push(context, CupertinoPageRoute(builder: (context) => const DepolamaAlani()));
                  }, child: const Text("Diğer planları göster",style: TextStyle(color: Colors.red),)),
            ],
          ),

          Container(
            width: 300,
            height: 3,
            color: Colors.grey.shade800,
          ),

          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text("Devam ederek Hizmet Şartlarımızı ve teklif\nşartlarını kabul etmiş olursunuz.Google'ın\n \t        verileri nasıl işlediğini öğrenin",style: TextStyle(fontSize: 16),)
              ],
            ),
          ),

        ],
      ),

    );
  }


}
