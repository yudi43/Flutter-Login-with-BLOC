import 'package:flutter/material.dart';
import 'package:flutter_logic_bloc/src/screens/login_screen.dart';

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
