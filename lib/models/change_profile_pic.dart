import 'package:flutter/material.dart';


class ChangePF extends StatelessWidget {
  const ChangePF({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select new profile picture'),
      ),
      body: Center(
      child: Padding(padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
            const SizedBox(height: 50,),
            ElevatedButton(onPressed: (){}, child: const Text('Confirm'))
        ],
      ))),
    );
  }
}