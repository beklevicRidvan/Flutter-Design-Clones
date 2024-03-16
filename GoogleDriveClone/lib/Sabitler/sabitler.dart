import 'package:flutter/material.dart';
import 'package:tasarimi_kolaylastiracak_ornek/Sabitler/posta_bilgileri.dart';

import 'dialog_islemleri.dart';
class Sabitler{
  static TextStyle anaBaslik = const TextStyle(fontSize: 20,fontWeight: FontWeight.bold);
  static BorderRadius textFormRadius = BorderRadius.circular(20);
  static EdgeInsets textFormPadding = const EdgeInsets.symmetric(horizontal: 15);
  static TextStyle drawerText =const TextStyle(color: Colors.black);




  static List <PostaBilgileri> tumPostalar = [
    PostaBilgileri(postaKonusu: "Staj 1 Listesi", adSoyad: "Fatih Bal",tarih: "20 Kas", adSoyadHarf: "FB",gonderilmeTarihi: DateTime(2023,11,20)),
    PostaBilgileri(postaKonusu: "Algoritma Analizi Ödev", adSoyad: "Selçuk Yazar",tarih: "29 Nis", adSoyadHarf: "SY",gonderilmeTarihi: DateTime(2022,4,29)),
    PostaBilgileri(postaKonusu: "Cebir Raporu", adSoyad: "Fatih Bal", tarih:"10 Oca",adSoyadHarf: "FB",gonderilmeTarihi: DateTime(2023,1,10)),
    PostaBilgileri(postaKonusu: "1 Videoda Grid", adSoyad: "Sadık Turan", tarih:"30 Mar",adSoyadHarf: "ST",gonderilmeTarihi: DateTime(2022,3,30)),
    PostaBilgileri(postaKonusu: "Kısa Sınav PDF", adSoyad: "Yusuf Duman",tarih:"15 Ara", adSoyadHarf: "YD",gonderilmeTarihi: DateTime(2023,12,15)),
    PostaBilgileri(postaKonusu: "Ödev Dosyası", adSoyad: "İbrahim Yitiz",tarih:"17 Ara", adSoyadHarf: "İY",gonderilmeTarihi: DateTime(2023,12,17)),
    PostaBilgileri(postaKonusu: "Java Ödevi", adSoyad: "Ahmet Ağzıgüzel",tarih:"18 Kas" , adSoyadHarf: "AG",gonderilmeTarihi: DateTime(2023,11,18)),



  ];
  
  
  
  static List<DialogIslemleri> tumIslemler = [
    DialogIslemleri(gorevAdi: "Yıldızlı bölümünden Kaldır", gorevIcon: const Icon(Icons.star)),
    DialogIslemleri(gorevAdi: "Çevrimdışı kullanılabilir yap", gorevIcon: const Icon(Icons.network_check)),
    DialogIslemleri(gorevAdi: "Bağlantıyı Kopyala", gorevIcon: const Icon(Icons.connect_without_contact)),
    DialogIslemleri(gorevAdi: "Kopyasını Oluştur", gorevIcon: const Icon(Icons.file_copy)),
    DialogIslemleri(gorevAdi: "Kopyasını Gönder", gorevIcon: const Icon(Icons.arrow_right_alt_sharp)),
    DialogIslemleri(gorevAdi: "İndir", gorevIcon: const Icon(Icons.file_download)),
    DialogIslemleri(gorevAdi: "Dosyanın Konumunu Göster", gorevIcon: const Icon(Icons.folder)),
    DialogIslemleri(gorevAdi: "Drive'a kısayol ekle", gorevIcon: const Icon(Icons.add_to_drive)),
    DialogIslemleri(gorevAdi: "Birlikte Aç", gorevIcon: const Icon(Icons.ac_unit)),
    DialogIslemleri(gorevAdi: "Yazdır", gorevIcon: const Icon(Icons.print)),
    DialogIslemleri(gorevAdi: "Ana ekrana ekle", gorevIcon: const Icon(Icons.add_to_home_screen)),
    DialogIslemleri(gorevAdi: "Yararlı bir öneri değil", gorevIcon: const Icon(Icons.umbrella_rounded)),
    DialogIslemleri(gorevAdi: "Bildir", gorevIcon: const Icon(Icons.report_gmailerrorred)),
    DialogIslemleri(gorevAdi: "Kullanıcı engelle", gorevIcon: const Icon(Icons.block)),





  ];










}