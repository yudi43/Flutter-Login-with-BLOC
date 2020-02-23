import 'package:flutter/material.dart';
import 'package:scoped_bloc_approach/src/blocs/provider.dart';
import 'package:scoped_bloc_approach/src/screens/login_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      //Everything under this widget can access this particular Provider and the bloc that has been initiated in its implementation.
      child: MaterialApp(
        title: "Login BLOC",
        home: Scaffold(
          body: LoginScreen(),
        ),
      ),
    );
  }
}
