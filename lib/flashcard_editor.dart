import 'package:flutter/material.dart';
import 'data.dart';
import 'flip_flashcards.dart';

class FlashcardsEditor extends StatefulWidget {
  final String setTitle;

  const FlashcardsEditor({super.key, required this.setTitle});

  @override
  State<FlashcardsEditor> createState() => _FlashcardsEditorState();
}

class _FlashcardsEditorState extends State<FlashcardsEditor> {
  List<TextEditingController> frontsideControllers = [];
  List<TextEditingController> backsideControllers = [];

  @override
  void initState() {
    super.initState();
    _loadExistingFlashcards();
  }

  void _loadExistingFlashcards() {
    final existingFlashcards = UserData().flashcards[widget.setTitle] ?? [];
    for (final flashcard in existingFlashcards) {
      frontsideControllers.add(TextEditingController(text: flashcard['frontside']));
      backsideControllers.add(TextEditingController(text: flashcard['backside']));
    }
    if (frontsideControllers.isEmpty) {
      _addFlashcard();
    }
  }

  void _addFlashcard() {
    frontsideControllers.add(TextEditingController());
    backsideControllers.add(TextEditingController());
    setState(() {});
  }

  void _saveFlashcards() {
    final flashcards = <Map<String, String>>[];
    for (int i = 0; i < frontsideControllers.length; i++) {
      flashcards.add({
        'frontside': frontsideControllers[i].text,
        'backside': backsideControllers[i].text,
      });
    }
    UserData().flashcards[widget.setTitle] = flashcards;
    Navigator.pop(context);
  }

  void _learnFlashcards() {
    final flashcards = UserData().flashcards[widget.setTitle] ?? [];
    if (flashcards.isNotEmpty) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => FlashcardsLearn(flashcards: flashcards),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('No flashcards to learn.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Edit Flashcards for "${widget.setTitle}"')),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: frontsideControllers.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Column(
                      children: [
                        TextField(
                          controller: frontsideControllers[index],
                          decoration: InputDecoration(
                            labelText: 'Frontside ${index + 1}',
                          ),
                        ),
                        TextField(
                          controller: backsideControllers[index],
                          decoration: InputDecoration(
                            labelText: 'Backside ${index + 1}',
                          ),
                        ),
                        const Divider(),
                      ],
                    ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton.icon(
                  onPressed: _addFlashcard,
                  icon: const Icon(Icons.add),
                  label: const Text('Add Flashcard'),
                ),
                ElevatedButton(
                  onPressed: _learnFlashcards,
                  child: const Text('Learn'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _saveFlashcards,
              child: const Text('Save Flashcards'),
            ),
          ],
        ),
      ),
    );
  }
}
