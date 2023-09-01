import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../utilities/constants.dart';

class SettingsScreen extends StatefulWidget {
  static String id = 'settings_screen';
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: kAppBarTitleShort,
      home: Scaffold(
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_circle_left_outlined,
              color: Color(kLightBlue),
            ),
            iconSize: 40.0,
            onPressed: () => context.go('/'),
          ),
          backgroundColor: const Color(kDarkestBlue),
          title: const FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              'Settings',
              style: TextStyle(
                fontFamily: kFontTypeForApp,
                color: Color(kLightBlue),
                fontSize: kAppBarFontHeight,
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.settings,
                color: Color(kLightBlue),
              ),
              onPressed: () {
                Navigator.pushNamed(context, SettingsScreen.id);
              },
            ),
          ],
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/settings.png'),
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
      ),
    );
  }
}
