import 'package:flutter/material.dart';

class ColumnRowLearn2 extends StatelessWidget {
  const ColumnRowLearn2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(),
        body: Column(
          children: [
            Expanded(flex: 4, child: Column(
              children: [
                Expanded(child: Container(color: Colors.greenAccent)),
                Expanded(child: Container(color: Colors.blueGrey)),
                Expanded(child: Container(color: Colors.deepPurpleAccent)),
                Expanded(child: Container(color: Colors.pink)),

              ],
            )),
            const Spacer(flex: 2),
            Expanded(flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
              children: const [
              Text('a1'),
              Text('a2'),
              Text('a3'),

            ],)),
            Expanded(flex: 2, child: Container(color: Colors.deepOrange)),

            Container(
              height: ProjectContainerSizes.cardHeight,
              child: Column(
                children: [
                  SizedBox(width: 50, child: Text ('data'),),
                  Expanded(child: Text ('asd'),),
                  Expanded(child: Text ('dgrte'),),
                  Spacer(),
                  Expanded(child: Text ('frtrge'),),


                ],
              ),
            )
          ],

        // const FlutterLogo(),
        )
    );
  }
}


class ProjectContainerSizes{
  static const cardHeight = 200.0;
}