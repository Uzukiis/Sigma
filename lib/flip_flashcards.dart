import 'package:flutter/material.dart';

class FlashcardsLearn extends StatefulWidget {
  final List<Map<String, String>> flashcards;

  const FlashcardsLearn({super.key, required this.flashcards});

  @override
  State<FlashcardsLearn> createState() => _FlashcardsLearnState();
}

class _FlashcardsLearnState extends State<FlashcardsLearn> {
  int currentIndex = 0;
  bool showFrontside = true;

  void _flipCard() {
    setState(() {
      showFrontside = !showFrontside;
    });
  }

  void _nextCard() {
    setState(() {
      currentIndex = (currentIndex + 1) % widget.flashcards.length;
      showFrontside = true;
    });
  }

  void _previousCard() {
    setState(() {
      currentIndex = (currentIndex - 1 + widget.flashcards.length) % widget.flashcards.length;
      showFrontside = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final flashcard = widget.flashcards[currentIndex];
    final displayText = showFrontside ? flashcard['frontside'] ?? '' : flashcard['backside'] ?? '';

    return Scaffold(
      appBar: AppBar(title: const Text('Learn Flashcards')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Center(
                  child: GestureDetector(
                    onTap: _flipCard,
                    child: Card(
                      elevation: 5,
                      color: Colors.blueAccent,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          displayText,
                          style: const TextStyle(fontSize: 24, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: _previousCard,
                    icon: const Icon(Icons.arrow_back),
                  ),
                  IconButton(
                    onPressed: _nextCard,
                    icon: const Icon(Icons.arrow_forward),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
