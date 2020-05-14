import 'package:flutter/material.dart';
import '../model/post.dart';

class PostShow extends StatelessWidget {
  final Post post;

  PostShow({
    @required this.post
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${post.title}'),
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          Image.network(
            post.imageUrl,
          ),
          Container(
            padding: EdgeInsets.all(32.0),
<<<<<<< HEAD
            width: double.infinity,
=======
>>>>>>> fdce801aea2006d5247b2b8106c3503f5c5ed483
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('${post.title}', style: Theme.of(context).textTheme.title),
                Text('${post.author}', style: Theme.of(context).textTheme.subtitle),
                SizedBox(height: 32.0,),
                Text('${post.description}', style: Theme.of(context).textTheme.body1),
              ],
            ),
          )
        ],
      ),
    );
  }
}