import 'dart:convert';
import 'package:hacknews_flut/model/story.dart';
import 'package:http/http.dart' as http;

final String base = 'https://hacker-news.firebaseio.com/v0';

Future<List<int>> getHomeData() async {
  final res = await http.get(
    Uri.parse('$base/topstories.json?print=pretty'),
  );
  if (res.statusCode == 200) {
    return List.from(jsonDecode(res.body));
  } else {
    throw Exception('获取Home数据失败');
  }
}

Future<Story> getStoryData(int itemId) async {
  final res = await http.get(
    Uri.parse('$base/item/$itemId.json?print=pretty'),
  );
  if (res.statusCode == 200) {
    return Story.fromJson(jsonDecode(res.body));
  } else {
    throw Exception('获取Story数据失败');
  }
}
