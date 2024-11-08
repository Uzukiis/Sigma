import 'package:flutter/material.dart';
import 'main_navigator.dart';

class CreateUser extends StatefulWidget {
  const CreateUser({super.key});

  @override
  State<CreateUser> createState() => _CreateUserState();
}

class _CreateUserState extends State<CreateUser> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(240, 186, 123, 1),
        ),
      ),
      home: _CreateUserPage(),
    );
  }
}

class _CreateUserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('../assets/img/sigma.jpg'),
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 200),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 10),
                SizedBox(
                  width: 400,
                  child:
                      TextField(decoration: InputDecoration(labelText: 'Name')),
                ),
              ],
            ),
            const SizedBox(height: 100),
            SizedBox(
              width: 300,
              height: 70,
              child: ElevatedButton(
                onPressed: () => checkName(context),
                child: const Text(
                  'Enter',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void checkName(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MainApp()),
    );
  }
}
