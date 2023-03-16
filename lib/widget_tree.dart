import 'package:questglobal_assesment/auth.dart';
import 'package:flutter/material.dart';
import 'Login&SignupScreens/LoginScreen.dart';
import 'Home&ProductScreens/HomeScreen.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _WidgetTreeState createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Auth().authStateChanges,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const HomeScreen();
          } else {
            return const LoginScreen();
          }
        });
  }
}
