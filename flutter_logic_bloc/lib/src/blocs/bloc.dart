import 'dart:async';
import 'validators.dart';

class Bloc extends Validators {
  final _emailController = StreamController<String>();
  final _passwordController = StreamController<String>();

  //Add data to the stream
  Stream<String> get email => _emailController.stream.transform(validateEmail);
  Stream<String> get password =>
      _passwordController.stream.transform(validatePassword);

  //returns functions to change data
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  dispose() {
    _emailController.close();
    _passwordController.close();
  }
}
