import 'package:flutter/material.dart';

class Yedeklemeler extends StatefulWidget {
  const Yedeklemeler({Key? key}) : super(key: key);

  @override
  State<Yedeklemeler> createState() => _PaylasilanState();
}

class _PaylasilanState extends State<Yedeklemeler> {
  EdgeInsets dialogPadding = const EdgeInsets.only(top: 250);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const FadeInImage(
              placeholderFit: BoxFit.contain,
              placeholder: AssetImage("assets/loading.gif"),
              image: NetworkImage(
                  "https://ophtek.com/wp-content/uploads/2017/10/cloud-computing-1990405_960_720.png"),
            ),
            const SizedBox(height: 25),
            const Text(
              "Cihazınınız yedeklenemiyor",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Yedeklemeler dosyalarınızı güvende tutar",
              style: TextStyle(fontSize: 14),
            ),
            const Text(
              "ve cihaz değişimini kolaylaştırır.",
              style: TextStyle(fontSize: 14),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Yedeklemeye başla",
                style: TextStyle(fontSize: 14,color: Colors.cyan),
              ),
            )
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.black, size: 25),
      titleTextStyle: const TextStyle(color: Colors.black, fontSize: 23),
      title: const Text("Yedeklemeler"),


    );
  }
}
