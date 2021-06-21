import 'package:flutter/material.dart';

class Fav extends StatefulWidget {
  const Fav({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _Fav();
  }
}

class _Fav extends State<Fav> {
  @override
  Widget build(BuildContext context) {
    return Text('Fav Page');
  }
}
