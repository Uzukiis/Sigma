import 'package:flutter/material.dart';
import 'main_navigator.dart';

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
      home: Scaffold(
        body: LoginScreent()
      ),
    );
  }
}
  class LoginScreent extends StatelessWidget {
  const LoginScreent ({super.key});
    Widget build(BuildContext context) {
    return Center(
          child: Column(
            children:[
              const TextField(decoration: InputDecoration(
              label: Text('Name')
            )),
                  
              TextButton(
              onPressed: () => Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const MainApp())),
              child: const Text('Enter'),
            ),
          ],),
        );}

  }