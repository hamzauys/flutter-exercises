import 'package:flutter/material.dart';

class RandomImage extends StatelessWidget {
  const RandomImage({super.key,this.height= 100});
  final imageurl = 'https://picsum.photos/200/300';

  final double height;


  @override
  Widget build(BuildContext context) {
    return Image.network(imageurl,height: height,fit: BoxFit.cover);
  }
}
