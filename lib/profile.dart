import 'package:flutter/material.dart';
// import 'package:sigma/etc.dart';
import 'change_profile_pic.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(240, 186, 123, 1),
        ),
      ),
      home: _ProfilePage(),
    );
  }
}

class _ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _ProfileImageContainer(),
            _DaysContainer(),
            _SettingsContainer()
          ],
        ),
      ),
    );
  }
}

class _DaysContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          width: 200,
          height: 200,
          child: Image(image: AssetImage('../assets/img/fire.jpg')),
        ),
        SizedBox(
          height: 12,
          width: 320,
        ),
        Text('Day {DAY}!',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.w600)),
      ],
    );
  }
}

class _ProfileImageContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 10),
        //!Do zmiany, żeby profil był w kółku
        const Image(
          image: AssetImage('../assets/img/sigma.jpg'),
          width: 60,
          height: 60,
        ),
        const SizedBox(width: 20),
        Column(
          children: [
            const SizedBox(
              width: 400,
              child: Text(
                  "We recommended using an image of at least 256x256 for your avatar",
                  maxLines: 2,
                  overflow: TextOverflow.clip),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 400,
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                        context: context, builder: (ctx) => const ChangePF());
                  },
                  child: const Text(
                    'Change Avatar',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                const SizedBox(width: 30),
                OutlinedButton(
                  style: ButtonStyle(
                      side: MaterialStateProperty.all(BorderSide(
                          width: 1.0,
                          color: const Color.fromRGBO(255, 58, 36, 1))),
                      foregroundColor: MaterialStateProperty.all(
                          const Color.fromRGBO(255, 58, 36, 1)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      )),
                  //! Do zmiany funkcja
                  onPressed: () => const ChangePF(),
                  child: const Text(
                    'Remove',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ]),
            )
          ],
        )
      ],
    );
  }
}

class _SettingsContainer extends StatefulWidget {
  @override
  __SetingsContainerState createState() => __SetingsContainerState();
}

class __SetingsContainerState extends State<_SettingsContainer> {
  bool switchNotifications = true;
  bool switchSound = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
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
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'SFX',
              style: TextStyle(
                fontSize: 32,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
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
        ),
      ],
    );
  }
}
