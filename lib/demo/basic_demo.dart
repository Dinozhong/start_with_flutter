import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey[100],
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://resources.ninghao.org/images/childhood-in-a-picture.jpg'),
          alignment: Alignment.topCenter,
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.yellow[400].withOpacity(0.5),
            BlendMode.hardLight)
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.pool, size: 32.0, color: Colors.white),
            // color: Color.fromRGBO(3, 54, 255, 1.0),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              border: Border.all(
                color: Colors.indigoAccent[100],
                width: 3,
                style: BorderStyle.solid
              ),
              // borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0.0, 16.0),
                  color: Color.fromRGBO(16, 20, 188, 1.0),
                  blurRadius: 25.0,
                  spreadRadius: -9.0
                ),
              ],
              shape: BoxShape.circle,
              // gradient: RadialGradient(
              //   colors: [
              //     Colors.green,
              //     Colors.black,
              //   ]
              // ),
              gradient: LinearGradient(
                colors: [
                  Colors.green,
                  Colors.black,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
              ),

            ),
          )
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Dino',
        style: TextStyle(
          fontSize: 40.0,
          color: Colors.deepPurple,
          fontWeight: FontWeight.w100
        ),
        children: [
          TextSpan(
            text: '.com',
            style: TextStyle(
              fontSize: 17.0,
              color: Colors.green
            )
          )
        ]
      ),
    );
  }
}

class TextDemo extends StatelessWidget {

  final TextStyle _textStyle = TextStyle(fontSize: 16.0);

  final String _title = '长恨歌';
  final String _author = '李白';

  @override
  Widget build(BuildContext context) {
    return Text(
      '《$_title》- $_author。汉皇重色思倾国，御宇多年求不得。杨家有女初长成，养在深闺人未识。天生丽质难自弃，一朝选在君王侧。回眸一笑百媚生，六宫粉黛无颜色。春寒赐浴华清池，温泉水滑洗凝脂。侍儿扶起娇无力，始是新承恩泽时。',
      textAlign: TextAlign.center,
      style: _textStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}