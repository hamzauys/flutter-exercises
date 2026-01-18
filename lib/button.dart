import 'package:flutter/material.dart';


class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);


@override
Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(),
    body: Column(
      children: [
        TextButton(
            onPressed: (){},
              style: ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith((states){
                if (states.contains(MaterialState.pressed)){
                  return Colors.green;
              }
                return Colors.white;

              }),
            ),
        child: Text('aa', style: Theme.of(context).textTheme.titleMedium),
        ),

        ElevatedButton(
            onPressed: (){},

            child: Text('al')),
        IconButton(onPressed: (){}, icon: const Icon(Icons.abc_outlined)),

        FloatingActionButton(onPressed: (){}, child: const Icon(Icons.exposure_minus_1)),

        Padding(
          padding: const EdgeInsets.only(top: 10,bottom: 10,right: 20,left: 20),
          child: OutlinedButton(
              onPressed: (){},
              style: OutlinedButton.styleFrom(backgroundColor: Colors.lightBlueAccent,padding: const EdgeInsets.all(20), shape: const CircleBorder()),

              child: const Text('HAMZZ')),
        ),

        OutlinedButton.icon(onPressed: (){}, icon: const Icon(Icons.abc), label: const Text('dasadta')),
        InkWell(
            onTap: (){},
            child: const Text('sell')),



        OutlinedButton(
            onPressed: (){},
            style: OutlinedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: const EdgeInsets.all(20),
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
            ),


            child:
            Text('HAMZZ',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: Colors.white70,
  ),
  ),

        )],
    ),
  );
}
}