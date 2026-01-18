import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class MyAppbar extends StatelessWidget{
  const MyAppbar ({Key? key}): super(key: key);

  final String _title = 'Welcome Haci';
  final String _title2 = 'SAG';

  @override

Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        leading: const Icon(
            Icons.chevron_left_rounded,
            color: Colors.green),

        centerTitle: true,
        backgroundColor: Colors.transparent,


        elevation: 1000,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        leadingWidth: 30,


        actions: [
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.mark_email_unread_sharp)
          ),

          //const Center(child: CircularProgressIndicator(),
          // )
          Text (_title2),
        ],

        actionsIconTheme: const IconThemeData(color: Colors.red, size: 40),
        toolbarTextStyle: const TextStyle(color: Colors.blue),

      ),
    );

  }
}
