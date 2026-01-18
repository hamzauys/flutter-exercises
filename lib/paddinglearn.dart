import 'package:flutter/material.dart';

class Paddinglearn extends StatelessWidget {
  const Paddinglearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Column(
          children: [

            Padding(
                padding: EdgeInsets.all(10),
                child: Container(color: Colors.white70,height: 100)),


            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
              child: Container(color: Colors.white70,height: 100,width: 200,),
            ),


            Padding(
              padding: Projectpadding.pagePaddingHorizontal + Projectpadding.pagePaddingVertical,
              child: const Text('hamza'),
            ),
          ],
        ),
      ),
    );
  }
}

class Projectpadding {
  static const pagePaddingVertical = EdgeInsets.symmetric(vertical: 10);
  static const pagePaddingHorizontal = EdgeInsets.only(right: 100);
}



