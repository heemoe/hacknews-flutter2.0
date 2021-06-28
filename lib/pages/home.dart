import 'package:flutter/material.dart';
import 'package:hacknews_flut/pages/detail.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State {
  static const obj = {"title": "233", "url": "https://zsms.me"};
  static const ob2 = {"title": "333333", "url": "https://zsmszsmszsmszsms.me"};
  var _dataSource = [obj, obj, obj, obj, obj, obj, ob2];

  Widget _buildList() {
    return ListView.separated(
      itemBuilder: (ctx, i) {
        final obj = _dataSource[i];
        return _buildRow(obj['title']!, obj['url']!);
      },
      itemCount: _dataSource.length,
      separatorBuilder: (context, index) => Divider(),
    );
  }

  Widget _buildRow(String title, String url) {
    return ListTile(
      title: Text(title),
      onTap: () => {
        Navigator.pushNamed(context, '/detail',
            arguments: DetailArguments(title, url))
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildList(),
    );
  }
}
