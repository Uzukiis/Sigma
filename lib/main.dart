// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
// import 'create_user.dart';
import 'login_google.dart';

void main() {
  // Firebase.initializeApp(options: FirebaseOptions(apiKey: apiKey, appId: appId, messagingSenderId: messagingSenderId, projectId: projectId))
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromRGBO(18, 18, 18, 1)),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      //!Zamiana na 3 sekundy, aby animacja była dobra
      checkUser(context);
    });
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            color: Color.fromRGBO(253, 247, 239, 1),
            shape: BoxShape.circle,
          ),
          width: 300,
          height: 300,
          child: const Padding(
            padding: EdgeInsets.all(50),
            child: Image(
              image: AssetImage('../assets/img/sigma.jpg'),
            ),
          ).animate().then(delay: 1100.ms).fadeOut(duration: 420.ms),
        )
            .animate()
            .then(delay: 1000.ms)
            .scaleXY(begin: 1, end: 2000, duration: 120.seconds),
      ),
    );
  }

  void checkUser(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const LoginGoogle()));
  }
}
