import 'package:flutter/material.dart';
import 'data.dart';

class SecondRoute extends StatelessWidget {
  SecondRoute({super.key});
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create a new set'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: titleController,
                decoration: const InputDecoration(label: Text('Title')),
              ),
              TextField(
                controller: descriptionController,
                decoration: const InputDecoration(label: Text('Description (optional)')),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  UserData().titles.add(titleController.text);
                  UserData().descriptions.add(descriptionController.text);

                  
                  titleController.clear();
                  descriptionController.clear();

                  Navigator.pop(context); 
                },
                child: const Text('Create set'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
