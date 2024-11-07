import 'package:flutter/material.dart';
import 'main_navigator.dart';

void main() {
  runApp(const CreateUser());
}

class CreateUser extends StatelessWidget {
  const CreateUser({super.key});

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
        body: CreateUsert(),
      ),
    );}

  }

class CreateUsert extends StatelessWidget {
  const CreateUsert({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
          child: Column(
            children: [
              const SizedBox(height: 100),
               Column(
                children: [
                  Container(
                    width: 250,
                    height: 250,
                    decoration: const BoxDecoration(shape: BoxShape.circle, color: Color.fromRGBO(255, 255, 255, 1),), 
                    child: const Padding(
                      padding:  EdgeInsets.all(59),
                      child:  Image(image: AssetImage('assets/img/sigma.jpg'), width: 50, height: 50),
                    ),
                  ),
                  const SizedBox(height: 100)
                ],
              ),
              const Padding(
                padding:  EdgeInsets.all(32.0),
                child:  TextField(decoration: InputDecoration(
                  label: Text('Name')
                  )),
              ),
                const SizedBox(height: 70),
                ElevatedButton(onPressed: () => Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const MainApp())), 
                child: const Padding(padding: EdgeInsets.only(left: 100, right: 100, top: 5, bottom: 5), child: Text('Enter', style: TextStyle(fontSize: 25),))
                )
            ],
          )
        );
  }
}