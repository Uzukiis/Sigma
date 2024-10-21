import 'package:flutter/material.dart';
import 'hello_page.dart';
import 'profile.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int selectedIndex = 0;


 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(100, 240, 186, 123),
        ),
      ),
      home: Scaffold(
        
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.pageview),
              label: 'Your sets',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          selectedItemColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.grey,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        ),
        body: IndexedStack(
          index: selectedIndex,
          children: [
            PageStorage(
              child: HomeScreen(),
              bucket: PageStorageBucket(),
            ),
            const Placeholder(),
            PageStorage(
              child: const ProfilePage(),
              bucket: PageStorageBucket()),
          ],
        ),
      ),
    );
  }
}
