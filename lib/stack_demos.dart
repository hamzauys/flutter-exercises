import 'package:flutter/material.dart';
import 'package:untitled2/core/random_image.dart';

class StackDemosView extends StatelessWidget {
  double bottom() => 0;

  double height() => 50;

  double width() => 300;
  const StackDemosView({super.key});
  final _cardheight = 20.0;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Expanded(
            flex: 4 ,
            child: Stack(
              alignment: Alignment.center,
              children:[Positioned.fill(child: RandomImage(),bottom: _cardheight,),

              Positioned(
                  height: 50,
                  bottom: 0,
                  width: 300,
                  child: Card(
                    color: Colors.greenAccent,
                    shape: RoundedRectangleBorder(),
                  ))],
            )),
        const Spacer(
          flex: 6,
        ),
      
      ],),
    );
  }

  Card buildCard() {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(),
                );
  }


}
