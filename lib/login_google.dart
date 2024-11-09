import 'package:flutter/material.dart';

class LoginGoogle extends StatefulWidget {
  const LoginGoogle({super.key});

  @override
  State<LoginGoogle> createState() => _LoginGoogleState();
}

class _LoginGoogleState extends State<LoginGoogle> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(240, 186, 123, 1),
        ),
      ),
      home: _LoginGooglePage(),
    );
  }
}

class _LoginGooglePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () => googleLogin(),
        child: const Text(
          'Log with Google',
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }

  void googleLogin() {}
}
