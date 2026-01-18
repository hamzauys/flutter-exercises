import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          // 1) Sabit boyutlu bir kutu
          SizedBox(
            width: 300,
            height: 200,
            child: Text('a' * 500),
          ),

          // 2) Hiç yer kaplamayan boş SizedBox
          const SizedBox.shrink(),

          // 3) Kare şeklinde bir kutu (50x50)
          SizedBox.square(
            dimension: 50,
            child: Text('b' * 50),
          ),

          // 4) Container kullanımı
          // ESKİ Container (örnek olarak dursun)
          // Container(
          //   height: 50,
          //   constraints: const BoxConstraints(
          //     maxWidth: 150, minWidth: 20, maxHeight: 100,
          //   ),
          //   child: Text('aa' * 1),
          //   padding: const EdgeInsets.all(10),
          //   margin: const EdgeInsets.all(10),
          //   decoration: const BoxDecoration(
          //     color: Colors.red, shape: BoxShape.circle,
          //   ),
          // ),

          Container(
            width: 220,
            height: 120,
            margin: const EdgeInsets.all(10),
            decoration: ProjectUtility.boxDecoration,
            alignment: Alignment.center,
            child: const Text('Utility', style: TextStyle(color: Colors.white)),
          ),

          // YENİ: ProjectContainerDecoration dekorasyonu
          Container(
            width: 220,
            height: 120,
            margin: const EdgeInsets.all(10),
            decoration: ProjectContainerDecoration(),
            alignment: Alignment.center,
            child: const Text('Extends', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );


  }

}
class ProjectUtility {
  static BoxDecoration boxDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    gradient: const LinearGradient(colors: [Colors.red, Colors.black]),
    boxShadow: const [
      BoxShadow(color: Colors.green, offset: Offset(0.1, 1), blurRadius: 12)
    ],
    border: Border.all(width: 10, color: Colors.white12),
  );
}

class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
      : super(
    borderRadius: BorderRadius.circular(10),
    gradient: const LinearGradient(colors: [Colors.red, Colors.black]),
    boxShadow: const [
      BoxShadow(color: Colors.green, offset: Offset(0.1, 1), blurRadius: 12)
    ],
    border: Border.all(width: 10, color: Colors.white12),
  );
}

