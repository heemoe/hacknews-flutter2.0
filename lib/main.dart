import 'package:flutter/material.dart';
import 'package:hacknews_flut/pages/detail.dart';
import 'components/layout.dart';
// import 'package:flutter_web_plugins/flutter_web_plugins.dart';

void main() {
  configureApp();
  return runApp(App());
}

void configureApp() {
  // setUrlStrategy(HashUrlStrategy());
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
