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
        appBar: AppBar(),
        body: Container(
            height: 150, color: Colors.grey, padding: EdgeInsets.all(10),
            child: Row (
              children: [
                Image.asset("assets/rat.jpg", fit: BoxFit.cover,width: 150,height: 150,),

                Flexible(
                  child: Container(flex:,height: 150, color: Colors.cyan,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('캐논 DSLR 100D (단렌즈, 충전기 16기가 SD 포함)',style: TextStyle(fontSize: 20),),
                        Text('성동구 행당동 . 끌올 10분 전'),
                        Text('210,000원'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(Icons.favorite_border, color: Colors.grey,),
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
