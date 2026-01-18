import 'package:flutter/material.dart';

class StatefulLifeCycleLearn extends StatefulWidget {
   StatefulLifeCycleLearn({super.key,required this.message});

  final String message;

  bool isOdd = true;



  @override




  State<StatefulLifeCycleLearn> createState() => _StatefulLifeCycleLearnState();
}

class _StatefulLifeCycleLearnState extends State<StatefulLifeCycleLearn> {
  late final bool isOdd;

  String message = "";

  @override

  void initState() {
    super.initState();
    message = widget.message;
    isOdd = widget.message.length.isOdd;

    compute_The_Name();



  }

  void compute_The_Name() {
    if(isOdd){
      message += "Cift";
    }
    else{
      message += "tek";

    }
  }


  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        // title: isOdd ? const Text("keliime tek") : const Text("Kelime cift"),
        title: Text(message),

      ),
      body: isOdd
      ? TextButton(onPressed: () {}, child: Text(widget.message),)
      : (ElevatedButton(onPressed: () {}, child: Text(widget.message),))

    ) ;
  }
}
