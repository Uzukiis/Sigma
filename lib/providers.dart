import 'package:flutter/material.dart';

class FlashcardTitleProvider extends ChangeNotifier {
  late String flashcardTitle;
  late String flashcardDescription;

  FlashcardTitleProvider({
    required TextEditingController titleController,
    required TextEditingController descriptionController,
  }) {
    flashcardTitle = titleController.text;
    flashcardDescription = descriptionController.text;

    titleController.addListener(() {
      flashcardTitle = titleController.text;
      notifyListeners();
    });

    descriptionController.addListener(() {
      flashcardDescription = descriptionController.text;
      notifyListeners();
    });
  }
}
