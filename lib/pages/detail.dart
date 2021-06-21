import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _Detail();
  }
}

class DetailArguments {
  final String title;
  final String url;
  DetailArguments(this.title, this.url);
}

class _Detail extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as DetailArguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: Text(args.url),
    );
  }
}
