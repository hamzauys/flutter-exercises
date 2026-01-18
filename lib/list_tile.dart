import 'package:flutter/material.dart';
import 'package:untitled2/core/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});
  final imageurl = 'https://picsum.photos/200/300';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        ListTile(

          title: const RandomImage(),
          contentPadding: EdgeInsets.zero,
          onTap: (){},

          subtitle: const Text('How do you feel now'),
          minVerticalPadding: 0,
          dense: true,
          leading: Container(color: Colors.green, height:100, child: const Icon(Icons.money)),
          trailing: Container(
            width:50,
            color:  Colors.red,
            child: const SizedBox(width: 20,
              child: Icon(Icons.chevron_left_rounded,),
          ),

        ),
        ),
      ],
    ),
    );
  }
}
