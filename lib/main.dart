import 'package:flutter/material.dart';
import 'package:hacknews_flut/pages/detail.dart';
import 'components/layout.dart';

void main() {
  return runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HackNewsFlut',
      initialRoute: '/',
      routes: {'/': (ctx) => Layout(), '/detail': (ctx) => Detail()},
    );
  }
}
