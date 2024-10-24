import 'package:flutter/material.dart';
import 'create_new_set.dart';

void main() {
  runApp(MainApp());
}



class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


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
    MaterialPageRoute(builder: (context) => const SecondRoute()),
  );

        },
        child: const Icon(Icons.add),),
        body:  Padding(padding: const EdgeInsets.only(left: 20, right: 20,top: 10),
        child: Column(mainAxisSize: MainAxisSize.max,
            children: [ const Row(mainAxisSize: MainAxisSize.max,mainAxisAlignment: MainAxisAlignment.spaceBetween, 
              children: [
                Text("Sigma", style: TextStyle(fontSize: 50, fontWeight: FontWeight.w500),), 
                Image(image: AssetImage('assets/img/sigma.jpg'), width: 50, height: 50)],
                ),
                const SizedBox(height: 50,),
                Column(
                  children: [
                    const Text('Welcome back {USER}!', style: TextStyle(fontSize: 36, fontWeight: FontWeight.w600),),
                    const SizedBox(height: 40,),
                    Container(width: 200, height: 200, decoration: const BoxDecoration(shape: BoxShape.circle, color: Color.fromARGB(255, 0, 0, 0)),),
                    const SizedBox(height: 100,),
                    const Center(child: (Text("Popular flashcards sets",style: TextStyle(fontSize: 24),)),),
                    Row(mainAxisSize: MainAxisSize.max,mainAxisAlignment: MainAxisAlignment.spaceAround, 
                    children: [
                      const Text('set1'), const Text('set2'), const Text('set3'), ElevatedButton(onPressed: ( ){}, style: ElevatedButton.styleFrom(minimumSize: const Size(60, 60)),child: const Icon(Icons.arrow_forward))
                    ],)
                  ],
                ) ],
              
              
              
          )),
        ),
    );
  }
}
