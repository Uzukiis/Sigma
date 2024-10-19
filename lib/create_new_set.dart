import 'package:flutter/material.dart';
import 'hello_page.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create a new set'),
      ),
      body: Center(
      child: Padding(padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const TextField(
            decoration: InputDecoration(
              label: Text('Title')
            ),),
          const TextField(decoration: InputDecoration(
              label: Text('Description (optional)')
            )),
            const SizedBox(height: 50,),
            ElevatedButton(onPressed: (){}, child: const Text('Create set'))
        ],
      ))),
    );
  }
}