import 'package:flutter/material.dart';
import 'package:untitled2/101/imagelearn.dart';



class PageViewLearn extends StatefulWidget {
  const PageViewLearn({super.key});


  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {

  final pagecontroller = PageController(viewportFraction: 0.9);


  int currentPageIndex = 0;

  void updatePageIndex (int index){
    setState(() {
      currentPageIndex = index;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        children: [

          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Text(currentPageIndex.toString()),
          ),
          const Spacer(),

          FloatingActionButton(onPressed: (){
            pagecontroller.previousPage(
                duration: Durations.durationlow,
                curve: Curves.slowMiddle);

          },

            child: const Icon(Icons.chevron_left),
          ),


          FloatingActionButton(onPressed: (){
            pagecontroller.nextPage(
                duration: Durations.durationlow,
                curve: Curves.slowMiddle);},
            child: const Icon(Icons.chevron_right),),
        ],

      ),
      appBar: AppBar(),
      body: PageView(
        padEnds: false,
        controller: pagecontroller,
        onPageChanged: (int index) {},
        children:
        [
          ImageLearn(),
          Container(color: Colors.red),
          Container(color: Colors.blue),
          Container(color: Colors.greenAccent),


        ],),
    );
  }
}

class Durations{

  static const  durationlow = const Duration(seconds: 1);
}