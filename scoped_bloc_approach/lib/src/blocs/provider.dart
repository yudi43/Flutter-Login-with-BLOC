import 'package:flutter/material.dart';
import 'package:scoped_bloc_approach/src/blocs/bloc.dart';

class Provider extends InheritedWidget {
  final bloc = Bloc();
  Provider({Key key, Widget child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return true;
  }

  //Go up the widget tree and check for a widget of type Provider.
  static Bloc of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<Provider>()).bloc;
  }
}
