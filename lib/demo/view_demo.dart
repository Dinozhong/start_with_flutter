import 'package:flutter/material.dart';
import '../model/post.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridViewBuilderDemo();
  }
}

class GridViewBuilderDemo extends StatelessWidget {
  Widget _gridItemBuilder(BuildContext context, index) {
    return Container(
      child: Image.network(
        posts[index].imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(8.0),
      itemCount: posts.length,
      itemBuilder: _gridItemBuilder,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0
      ),
    );
  }
}

class GridViewExtentDemo extends StatelessWidget {
  List<Widget> _buildTitles(int length) {
    return List.generate(length, (int index) {
      return Container(
        alignment: Alignment.center,
        color: Colors.pinkAccent,
        child: Text('Item $index', style: TextStyle(fontSize: 20.0, color: Colors.white)),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent:200,
      mainAxisSpacing: 5.0,
      crossAxisSpacing: 5.0,
      children: _buildTitles(100)
    );
  }
}

class GridViewCountDemo extends StatelessWidget {
  List<Widget> _buildTitles(int length) {
    return List.generate(length, (int index) {
      return Container(
        alignment: Alignment.center,
        color: Colors.pinkAccent,
        child: Text('Item $index', style: TextStyle(fontSize: 20.0, color: Colors.white)),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      mainAxisSpacing: 5.0,
      crossAxisSpacing: 5.0,
      children: _buildTitles(100)
    );
  }
}

class PageViewBuilderDemo extends StatelessWidget {
  Widget _pageItemBuild(BuildContext context, index) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover
          ),
        ),
        Positioned(
          bottom: 10.0,
          left: 10.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                posts[index].title,
                style: TextStyle(fontWeight:FontWeight.bold)
              ),
              Text(
                posts[index].author,
              )
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuild,
    );
  }
}

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      onPageChanged: (currentPage) => debugPrint('Page: $currentPage'),
      controller: PageController(
        initialPage: 1,
        keepPage: false
      ),
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          color: Colors.pinkAccent,
          child: Text(
            'ONE',
             style: TextStyle(fontSize: 40.0, color: Colors.white))
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.lightBlue,
          child: Text(
            'TWO',
             style: TextStyle(fontSize: 40.0, color: Colors.white))
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.greenAccent,
          child: Text(
            'THREE',
             style: TextStyle(fontSize: 40.0, color: Colors.white))
        )
      ],
    );
  }
}