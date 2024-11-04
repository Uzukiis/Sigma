import 'package:flutter/material.dart';
import '../models/providers.dart';
import 'package:provider/provider.dart';


class SecondRoute extends StatelessWidget {
  SecondRoute({super.key});
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => FlashcardTitleProvider(
        titleController: titleController,
        descriptionController: descriptionController,
      ),
      child: Scaffold(
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
                    final flashcardTitleProvider = Provider.of<FlashcardTitleProvider>(context, listen: false);
                    print('Title: ${flashcardTitleProvider.flashcardTitle}');
                    print('Description: ${flashcardTitleProvider.flashcardDescription}');
                  },
                  child: const Text('Create set'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
