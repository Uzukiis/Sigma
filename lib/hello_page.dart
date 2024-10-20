import 'package:flutter/material.dart';
import 'create_new_set.dart';

void main() {
  runApp(MainApp());
}



class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
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
        body: const Padding(padding: EdgeInsets.only(left: 20, right: 20,top: 10),
        child: Column(mainAxisSize: MainAxisSize.max,
            children: [ Row(mainAxisSize: MainAxisSize.max,mainAxisAlignment: MainAxisAlignment.spaceBetween, 
              children: [
                Text("Sigma", style: TextStyle(fontSize: 50, fontWeight: FontWeight.w500),), 
                Image(image: AssetImage('assets/img/sigma.jpg'), width: 50, height: 50)],
                ),
                SizedBox(height: 50,),
                Column(
                  children: [
                    Center(child: (Text("Popular flashcards sets",style: TextStyle(fontSize: 24),)),),
                    Row(children: [Text('set1'),Text('set2'),Text('set3')],)
                  ],
                ) ],
              
              
              
          )),
        ),
    );
  }
}
