import 'package:flutter/material.dart';

class Myicons extends StatelessWidget {
  const Myicons({super.key});



  @override


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hi')),
      body: Column(
        children: [
          IconButton(
              onPressed: (){},
              icon: Icon(
                Icons.message_outlined,
                color: ColourModels.turquoiseblue,
                size: IconSizes.size2,
              )),
          const SizedBox(height: 10,),
          IconButton(
              onPressed: (){},
              icon: Icon(
                Icons.message_outlined,
                color: ColourModels.sunflower,
                size: IconSizes.size2,
              )),
          IconButton(
              onPressed: (){},
              icon: Icon(
                Icons.message_outlined,
                color: ColourModels.turquoiseblue,
                size: IconSizes.size1,
              )),


        ],
      ),

    );
  }
}






class IconSizes{
  static const double size1 = 20;
  static const double size2= 40;
}

class ColourModels{

  static const Color sunflower = Color(0xffE5CD34);
  static const Color turquoiseblue = Color(0xff50F2EE);
  static const Color monza = Color(0xffE00012);
}