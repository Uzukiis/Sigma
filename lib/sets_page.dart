import 'package:flutter/material.dart';
import 'create_new_set.dart';
import 'data.dart';
import 'flashcard_editor.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color.fromRGBO(253, 247, 239, 1),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(100, 240, 186, 123),
        ),
      ),
      home: const SetsList(),
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
    return Scaffold(
      appBar: AppBar(
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondRoute()),
          );
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: UserData().titles.isNotEmpty
            ? ListView.builder(
  itemCount: UserData().titles.length,
  itemBuilder: (context, index) {
    return ListTile(
      title: Text(UserData().titles[index]),
      subtitle: Text(UserData().descriptions[index]),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FlashcardsEditor(setTitle: UserData().titles[index]),
          ),
        );
      },
    );
  },
)
            : const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Text(
                    'There are no sets yet',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 20),
                  Image(
                    image: AssetImage('assets/img/sad_face.jpg'),
                    width: 150,
                    height: 150,
                  ),
                ],
              ),
      ),
    );
  }
}
