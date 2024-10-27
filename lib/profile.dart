import 'package:flutter/material.dart';
import 'package:sigma/main.dart';
import 'change_profile_pic.dart';

void main() {
  runApp(const ProfilePage());
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool switchNotifications = true;
  bool switchSound = true;

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
                
              ),const SizedBox(height: 100), const Image(
                            image: AssetImage('assets/img/sigma.jpg'),height: 75, width: 75,
                          ),
                          const SizedBox(height: 20),
                          ElevatedButton(onPressed: (){showModalBottomSheet(
      context: context,
       builder: (ctx) => const ChangePF());}, child: const Text('Change the profile picture')),

              const SizedBox(height: 100),
              Row(mainAxisSize: MainAxisSize.max, mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Notifications',
                      style: TextStyle(
                        fontSize: 32,
                      ),
                    ),
                    const SizedBox(width: 10),
                       Switch(
                        value: switchNotifications,
                        activeColor: const Color.fromRGBO(214, 99, 32, 1),
                        onChanged: (bool? value) {
                          setState(() {
                            switchNotifications = value ?? false;
                          });
                        },
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
                      Switch(
                        value: switchSound,
                        activeColor: const Color.fromRGBO(214, 99, 32, 1),
                        onChanged: (bool? value) {
                          setState(() {
                            switchSound = value ?? false;
                          });
                        },
                      ),
                    
                  ],
                ),const SizedBox(height: 50,), 
                ElevatedButton(onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Are you sure you want to proceed?'),
          content: const Text('This is going to clear ALL of your data.'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const LoginScreen())),
              child: const Text('OK'),
            ),
          ],
        ),
      ),  child: const Text('Clear data')),
                      ],
                    ),
        ),
                )
            );}}
