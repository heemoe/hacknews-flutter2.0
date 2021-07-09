class Story {
  final String by;
  final int descendants;
  final int id;
  final List<int> kids;
  final int score;
  final int time;
  final String title;
  final String type;
  final String url;

  const Story(
      {required this.by,
      required this.time,
      required this.title,
      required this.descendants,
      required this.id,
      required this.kids,
      required this.score,
      required this.type,
      required this.url});

  factory Story.fromJson(Map<String, dynamic> json) {
    return Story(
        by: json['by'],
        time: json['time'],
        title: json['title'],
        descendants: json['descendants'],
        id: json['id'],
        kids: json['kids'],
        score: json['score'],
        type: json['type'],
        url: json['url']);
  }
}
