import 'package:flutter/material.dart';
import 'package:hacknews_flut/model/story.dart';
import 'package:hacknews_flut/pages/detail.dart';

class ArticleRow extends StatelessWidget {
  const ArticleRow({Key? key, required this.item}) : super(key: key);
  final Story item;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.pushNamed(context, '/detail',
            arguments: DetailArguments(item.title, item.url))
      },
      child: Padding(
          padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.title,
                style: TextStyle(fontSize: 20),
              ),
              Flex(
                direction: Axis.horizontal,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () => {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(SnackBar(content: Text('hi')))
                          },
                      child: Row(
                        children: [Icon(Icons.face), Text('10')],
                      )),
                  Row(
                    children: [
                      TextButton(
                          onPressed: () => {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(content: Text('hi')))
                              },
                          child: Row(
                            children: [Icon(Icons.comment), Text('10')],
                          )),
                      TextButton(
                          onPressed: () => {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(content: Text('hi')))
                              },
                          child: Row(
                            children: [Icon(Icons.star), Text('10')],
                          ))
                    ],
                  )
                ],
              )
            ],
          )),
    );
  }
}
