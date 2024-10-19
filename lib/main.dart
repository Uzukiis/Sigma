import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(33, 33, 33, 1)
      ),
      home: Scaffold(
        body: Center(
          child: Container(decoration: const BoxDecoration(color: Color.fromRGBO(253, 247, 239, 1) ,shape: BoxShape.circle,), // Color.fromRGBO(253, 247, 239, 1)
            width: 250,
            height: 250,
            child: const Padding(padding:  EdgeInsets.all(50), child:Image(image: AssetImage('assets/img/sigma.jpg'),
            width: 100,
            height: 100,) 
)
          )
        ),
      ),
    );
  }
}
