import 'dart:async';
import 'package:rxdart/rxdart.dart';

import 'validators.dart';
// import 'package:rxdart/rxdart.dart';

class Bloc extends Object with Validators {
  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();

  //Add data to the stream
  Stream<String> get email => _emailController.stream.transform(validateEmail);
  Stream<String> get password =>
      _passwordController.stream.transform(validatePassword);
  Stream<bool> get submitValid =>
      Rx.combineLatest2(email, password, (e, p) => true);

  //returns functions to change data
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  submit() {
    final validEmail = _emailController.value;
    final validPassword = _passwordController.value;
    //use email and password as you require... Maybe send them to an api or whatever
    print("Email is $validEmail");
    print("Password is $validPassword");
  }

  dispose() {
    _emailController.close();
    _passwordController.close();
  }
}
