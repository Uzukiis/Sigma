import 'package:flutter/material.dart';
import 'create_new_set.dart';

void main() {
  runApp(const MainApp());
}



class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SetsList(),
    );
  }
}

class SetsList extends StatefulWidget {
  const SetsList({super.key});

  @override
  _SetsListState createState() => _SetsListState();
}

class _SetsListState extends State<SetsList> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color.fromRGBO(253, 247, 239, 1),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(100, 240, 186, 123),
        ),
      ),
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
        onPressed: () {
            Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => SecondRoute()),
  );

        },
        child: const Icon(Icons.add),),
        body: const Center(
          child: Column(
            children: [
              Text('There are no sets yet', style: TextStyle(fontSize: 36, fontWeight: FontWeight.w400)),
              Image(image: AssetImage('assets/img/sad_face.jpg'), width: 150, height: 150)
            ],
          ),
        ),
          
          
      ));}}
