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
}
