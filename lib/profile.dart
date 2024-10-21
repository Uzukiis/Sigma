import 'package:flutter/material.dart';

void main() {
  runApp(const ProfilePage());
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool checkBoxNotifications = true;
  bool checkBoxSound = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(100, 240, 186, 123),
        ),
        scaffoldBackgroundColor: const Color.fromARGB(255, 253, 247, 239),
      ),
      home:  Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20,top: 10),
          child: Column(
            
            children: [
             const Column(
                children: [
                  Row( mainAxisSize: MainAxisSize.max, mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Image(
                            image: AssetImage('assets/img/sigma.jpg'),height: 75, width: 75,
                          ),Text(
                    'James John',
                  ),
                        ],
                      ),
                  Column(
                    children: [
                      Image(
                              image: AssetImage('img/fire.jpg'),
                              width: 75,
                              height: 75,
                            ),Text(
                          '5 dni',
                        ),
                    ],
                  ),]
                  ),
                   
                ],
              ), const SizedBox(height: 100),
              Row(mainAxisSize: MainAxisSize.max, mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Notifications',
                      style: TextStyle(
                        fontSize: 32,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Transform.scale( scale: 1.8,
                      child: Checkbox(
                        value: checkBoxNotifications,
                        activeColor: const Color.fromRGBO(214, 99, 32, 1),
                        onChanged: (bool? value) {
                          setState(() {
                            checkBoxNotifications = value ?? false;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(mainAxisSize: MainAxisSize.max, mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'SFX',
                      style: TextStyle(
                        fontSize: 32,
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Transform.scale(
                      scale: 1.8,
                      child: Checkbox(
                        value: checkBoxSound,
                        activeColor: const Color.fromRGBO(214, 99, 32, 1),
                        onChanged: (bool? value) {
                          setState(() {
                            checkBoxSound = value ?? false;
                          });
                        },
                      ),
                    ),
                  ],
                ),const SizedBox(height: 50,), ElevatedButton(onPressed: (){}, child: const Text('Clear data'))     
                      ],
                    ),
        ),
                )
            );}}
