import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('아라일동'),
          titleTextStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 20),
          actions: [Icon(Icons.search),Icon(Icons.menu),Icon(Icons.notifications)],
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 1,
        ),
        body: Container(
            height: 150, padding: EdgeInsets.all(10),
            child: Row (
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      "assets/rat.jpg",
                      fit: BoxFit.cover,width: 150,height: 150,)
                ),

                Flexible(
                  child: Container(height: 150, margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('졸귀탱 햄토리 (파는거아니고 자랑하려고올림)',style: TextStyle(fontSize: 20),),
                        Text('제주시 아라일동 . 끌올 10분 전',style: TextStyle(fontSize: 10,color: Colors.grey),),
                        Text('210,000원',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(child: IconButton(icon: Icon(Icons.favorite_border),onPressed: (){}, color: Colors.grey,)),
                            Text('4')
                          ],
                        )
                      ],
                    ),),
                )
              ],
            )
        ),

      )
    );
  }
}
