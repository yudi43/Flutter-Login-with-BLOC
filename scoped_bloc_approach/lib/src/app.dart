import 'package:flutter/material.dart';
import 'package:scoped_bloc_approach/src/screens/login_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login BLOC",
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}
