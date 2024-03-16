import 'package:bootcamp3_odev/ui/views/ana_sayfa.dart';
import 'package:bootcamp3_odev/ui/views/profil_sayfasi.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: ThemeData(bottomNavigationBarTheme: BottomNavigationBarThemeData(selectedIconTheme: IconThemeData(color: Colors.white),unselectedIconTheme: IconThemeData(color: Colors.grey))),



      home: const AnaSayfa(),
    );
  }
}

