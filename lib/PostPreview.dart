import 'package:flutter/material.dart';

class PostPreview extends StatelessWidget {
  PostPreview({Key key, this.post}) : super(key: key);
  final String post;

  @override
  Widget build(BuildContext c) {
    return Container(
      width: double.infinity,
      child: Card(
        child: Padding(
          child: Text(post),
          padding: EdgeInsets.all(10.0),
        )
      ),
    );
  }
}
