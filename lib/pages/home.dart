import 'dart:io';
import 'package:flutter/material.dart';
import 'package:hacknews_flut/components/articleRow.dart';
import 'package:hacknews_flut/model/story.dart';
import 'package:hacknews_flut/services/home.dart';

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
    return ArticleRow(
      item: Story(
          by: 'hee',
          id: 23,
          time: 23333,
          title: '666',
          score: 23,
          descendants: 23,
          url: url,
          kids: [23],
          type: 'story'),
    );
  }

  @override
  void initState() {
    var list = List<Story>.empty();

    getHomeData().then((value) => {print(value)});
    // 并发获取多个文章
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildList(),
    );
  }
}
