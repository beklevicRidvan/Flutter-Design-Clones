
import 'package:flutter/material.dart';

class YardimVeGeriBildirim extends StatefulWidget {
  const YardimVeGeriBildirim({Key? key}) : super(key: key);

  @override
  State<YardimVeGeriBildirim> createState() => _PaylasilanState();
}

class _PaylasilanState extends State<YardimVeGeriBildirim> {
  EdgeInsets dialogPadding = const EdgeInsets.only(top: 250);

  String secilenAppBarItem = "Google Play Store'da görüntüle";

  List<String> appBarDropDownList = [
    "Google Play Store'da görüntüle",
    "Yardım geçmişini Temizle",
    "Sürüm Bilgisi",
    "Gizlilik",
    "Şartlar",
    "Açık kaynak lisansları",
    "Program politikaları",
    "Ürün turu"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(height: 2,padding: const EdgeInsets.symmetric(horizontal: 32),color: Colors.black,),
           const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.all(18.0),
              child: Text("Popüler yardım kaynakları",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            ),
            Expanded(
             child: ListView(
               children: bodyListView(),
             ),
           ),
          ],
        ),
      ),
    );
  }

  List<Widget> bodyListView() {
    return [

             ListTile(
                 leading: CircleAvatar(backgroundColor: Colors.cyan.shade200,child: const Icon(Icons.source_outlined,size: 30,)),
               title: const Text("Google Drive'da mobil yedekleme-\nlerinizi yönetme ve geri yükleme")
             ),
      ListTile(

          leading: CircleAvatar(backgroundColor: Colors.cyan.shade200,child: const Icon(Icons.source_outlined,size: 30,)),
          title: const Text("Daha fazla Google depolama alanı satın alma")
      ),
      ListTile(
          leading: CircleAvatar(backgroundColor: Colors.cyan.shade200,child: const Icon(Icons.source_outlined,size: 30,)),
          title: const Text("Google Drive'da dosya silme ve geri\nyükleme")
      ),
      ListTile(
          leading: CircleAvatar(backgroundColor: Colors.cyan.shade200,child: const Icon(Icons.source_outlined,size: 30,)),
          title: const Text("Google Drive depolama alanınızdaki\ndosyaları yönetme")
      ),
      ListTile(
          leading: CircleAvatar(backgroundColor: Colors.cyan.shade200,child: const Icon(Icons.source_outlined,size: 30,)),
          title: const Text("Dosya bulma veya kurtarma")
      ),
      
      Padding(
        padding: const EdgeInsets.only(top:8,right: 16,left: 16),
        child: TextFormField(

          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(25),borderSide: BorderSide.none),
            fillColor: Colors.cyan.shade200,
            contentPadding: const EdgeInsets.all(16),
            filled: true,
            hintText: "Yardımda ara",
            prefixIcon: const Icon(Icons.search)
          ),
        ),
      ),
           ];
  }

  AppBar buildAppBar() {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.black, size: 30),
      titleTextStyle: const TextStyle(color: Colors.black, fontSize: 23),
      title: const Text("Yardım"),
      actions: [
        PopupMenuButton(

          itemBuilder: (context) {
            return appBarDropDownList.map(
              (String item) {
                return PopupMenuItem<String>(
                  onTap: (){
                    return surumBilgisi(context);
                  },
                  value: item,
                  child: Text(item),
                );
              },
            ).toList();
          },
          icon: const Icon(Icons.more_vert),
          onSelected: (deger) {},
        )
      ],
      bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: Container(
              color: Colors.white,
              alignment: Alignment.center,
              child: ListTile(
                onTap: () {
                  return sendFeedBack();
                },
                leading: const Icon(
                  Icons.feedback_outlined,
                  size: 30,
                ),
                title: const Text(
                  "Geri bildirim gönder",
                  style: TextStyle(fontSize: 18),
                ),
              ))),
    );
  }

  void sendFeedBack() {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            backgroundColor: Colors.cyan,
            insetPadding: dialogPadding,
            child: CustomScrollView(slivers: [
              const SliverAppBar(
                title: Text(
                  "Google hizmetine geri bildirim gönder",
                  style: TextStyle(),
                ),
                backgroundColor: Colors.cyan,
                floating: true,
                pinned: true,
              ),
              SliverList(
                  delegate: SliverChildListDelegate(
                [
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Padding(
                       padding: const EdgeInsets.all(16.0),
                       child: Row(
                         children: [
                           Container(
                               padding: const EdgeInsets.all(8),
                               decoration: BoxDecoration(
                                   color: Colors.white.withOpacity(0.6),
                                   borderRadius: BorderRadius.circular(15)),
                               child: const Row(
                                 children: [
                                   Text("Hoşgeldiniz !",
                                       style:
                                       TextStyle(fontWeight: FontWeight.bold)),
                                   Icon(Icons.waving_hand)
                                 ],
                               ))
                         ],
                       ),
                     ),
                     const SizedBox(height: 15),
                     Padding(
                       padding: const EdgeInsets.all(16),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [


                           const Column(
                             children: [
                               Icon(
                                 Icons.messenger_outline,
                                 size: 30,
                               ),
                               SizedBox(height: 10),
                               Text(
                                 "Birkaç soru\n yanıtlayın",
                                 style: TextStyle(fontSize: 15),
                               )
                             ],
                           ),


                           Row(
                             children: [
                               Container(width: 40, color: Colors.black45,height: 3,)
                             ],
                           ),

                           const Column(
                             children: [
                               Icon(
                                 Icons.fit_screen_sharp,
                                 size: 30,
                               ),
                               SizedBox(height: 5),
                               Text(
                                 "Ekran",
                                 style: TextStyle(fontSize: 15),
                               ),
                               Text(
                                 "görüntünüzü",
                                 style: TextStyle(fontSize: 15),
                               ),
                               Text(
                                 "düzenleyin",
                                 style: TextStyle(fontSize: 15),
                               )
                             ],
                           ),

                           Row(
                             children: [
                               Container(width: 40, color: Colors.black45,height: 3,)
                             ],
                           ),

                           const Column(
                             children: [
                               Icon(
                                 Icons.send_outlined,
                                 size: 30,
                               ),
                               SizedBox(height: 10),
                               Text(
                                 "Görüşlerinizi",
                                 style: TextStyle(fontSize: 15),
                               ),
                               Text(
                                 "paylaşın",
                                 style: TextStyle(fontSize: 15),
                               )
                             ],
                           ),

                         ],
                       ),
                     ),


                     const Padding(padding: EdgeInsets.all(16), child: Row(

                       children: [

                         Text("Bazı hesap ve sistem bilgileri, Gizlilik politikamıza ve\nHizmet şartlarımıza uygun olarak Google'a gönderi-\nlebilir.İçerik Değişiklikleri için Yasal Yardım Sayfası-\nna gidin.",style: TextStyle(fontSize: 15),)
                       ],
                     ),),

                     Padding(padding: const EdgeInsets.all(16),child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                       Expanded(child: ElevatedButton(onPressed: (){},style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.white.withOpacity(0.6)),elevation: const MaterialStatePropertyAll(0)), child: const Text("Başlayın",style: TextStyle(color:Colors.black,fontSize: 16),))),
                     ],
          ),
          ),

                   ],
                 ),
                ],
              ))
            ]),
          );
        });
  }
}


void surumBilgisi(BuildContext context){
  showDialog(context: context, builder: (context){
    return AlertDialog(
      contentTextStyle: const TextStyle(color: Colors.white),
      contentPadding: const EdgeInsets.all(30),
      shape: OutlineInputBorder(borderRadius: BorderRadius.circular(0),borderSide: BorderSide.none),
      backgroundColor: Colors.grey,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: ClipRRect(borderRadius: BorderRadius.circular(15),child: Image.asset("assets/drive.png")),
              title: const Text("Drive",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              subtitle: const Text("Sürüm 2.23.497.0.all.alldpi",style: TextStyle(color: Colors.white),),
            ),
            const SizedBox(height: 7),
            const Text("©2024 Google Inc.")
          ],
        ),
    );
  });
}
