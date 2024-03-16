import 'package:flutter/material.dart';


class BildirimAyarlari extends StatefulWidget {
  const BildirimAyarlari({Key? key}) : super(key: key);

  @override
  State<BildirimAyarlari> createState() => _PaylasilanState();
}

class _PaylasilanState extends State<BildirimAyarlari> {

  bool swicthState = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body : Column(
        children: [
          SwitchListTile(inactiveTrackColor: Colors.grey.shade900,thumbColor: const MaterialStatePropertyAll(Colors.white),activeColor: Colors.cyan,title: const Text("Bildirimlere izin ver",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 22),),value: swicthState, onChanged: (deger){
            setState(() {
              swicthState = deger;
              showSnackBar(deger);
            });
          }),



        ],
      ),



    );
  }

  void showSnackBar(bool value) {
    final snackBar = SnackBar(
      content: Text(value ? 'Bildirimlere izin verildi' : 'Bildirimler kapalı'),
      action: SnackBarAction(
        label: 'Kapat',
        onPressed: () {

        },
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  AppBar buildAppBar() {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.black, size: 25),
      titleTextStyle: const TextStyle(color: Colors.black, fontSize: 23),

      title: const Text("Drive"),
      bottom: PreferredSize(preferredSize: const Size(100,20), child: Container(width: 360, height: 2, color: Colors.grey.shade900,)),


    );
  }


}
