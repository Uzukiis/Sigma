import 'package:flutter/material.dart';
import '../models/main_navigator.dart';

void main() {
  runApp(const LoginScreen());
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(100, 240, 186, 123),
        ),
      ),
      home: const Scaffold(
        body: LoginScreent()
      ),
    );
  }
}
  class LoginScreent extends StatelessWidget {
  const LoginScreent ({super.key});
    @override
      Widget build(BuildContext context) {
    return Center(
        child: Column(
                children: [
                  Container(
                    width: 250,
                    height: 250,
                    decoration: const BoxDecoration(shape: BoxShape.circle, color: Color.fromRGBO(255, 255, 255, 1),), 
                    child: const Padding(
                      padding:  EdgeInsets.all(59),
                      child:  Image(image: AssetImage('assets/img/sigma.jpg')),
                    ),
                  ),
                  const SizedBox(height: 100)
                ],
        )
        );}
  }