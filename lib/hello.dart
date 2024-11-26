import 'package:flutter/material.dart';
import 'data.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color.fromRGBO(253, 247, 239, 1),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(240, 186, 123, 1),
        ),
      ),
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Sigma",
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.w500)),
                  Image(
                      image: AssetImage('assets/img/sigma.jpg'),
                      width: 50,
                      height: 50)
                ],
              ),
              const SizedBox(height: 50),
              Column(
                children: [
                  Text('Welcome back ${UserData().name}!',
                      style: const TextStyle(
                          fontSize: 36, fontWeight: FontWeight.w600)),
                  const SizedBox(height: 40),
                  Container(
                      width: 200,
                      height: 200,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 0, 0, 0))),
                  const SizedBox(height: 100),
                  const Center(
                      child: (Text("Popular flashcards sets",
                          style: TextStyle(fontSize: 24)))),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text('set1'),
                      const Text('set2'),
                      const Text('set3'),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(60, 60)),
                          child: const Icon(Icons.arrow_forward))
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
