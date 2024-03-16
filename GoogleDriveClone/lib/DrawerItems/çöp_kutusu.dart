import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class CopKutusu extends StatefulWidget {
  const CopKutusu({Key? key}) : super(key: key);

  @override
  State<CopKutusu> createState() => _PaylasilanState();
}

class _PaylasilanState extends State<CopKutusu> {
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
            FadeInImage(placeholderFit: BoxFit.contain,placeholder: AssetImage("assets/loading.gif"), image: NetworkImage("https://t3.ftcdn.net/jpg/00/53/88/62/360_F_53886299_VnMhaPKhkLXmULWjzLP6mcyIdmPOUtuq.jpg"),),
            SizedBox(height: 25),
            Text("Çöp Kutusu Boş",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 10),

            Text("İhtiyacınız olmayan ögeleri Çöp Kutusu'na taşıyın. Çöp",style: TextStyle(fontSize: 14),),
            Text("Kutusu'ndaki öğeler 30 gün sonra kalıcı olarak silinir.",style: TextStyle(fontSize: 14),),

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
        preferredSize: const Size.fromHeight(25),
        child: Container(color: Colors.white ,alignment: Alignment.center,child: const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(FontAwesomeIcons.trashCan),SizedBox(width:10),Text("Öğeler 30 gün sonra tamamıyla silinir.",style: TextStyle(fontSize: 17),),
        ],) ),
      ),
    );
  }


}
