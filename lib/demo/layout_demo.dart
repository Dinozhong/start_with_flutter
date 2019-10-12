import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AspectRatio(
            aspectRatio: 1.0/1.0,
            child: Container(
              color: Colors.lightBlue,
            ),
          )
        ],
      ),
    );
  }
}

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Stack(
            children: <Widget>[
              SizedBox(
                child: Container(
                  width: 200,
                  height: 300,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(139, 54, 255, 1.0),
                      borderRadius: BorderRadius.circular(8.0)),
                ),
              ),
              SizedBox(
                child: Container(
                  width: 100,
                  height: 100,
                  child:
                      Icon(Icons.brightness_2, color: Colors.red, size: 32.0),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(3, 54, 255, 1.0),
                      shape: BoxShape.circle,
                      gradient: RadialGradient(colors: [
                        Color.fromRGBO(7, 102, 255, 1.0),
                        Color.fromRGBO(3, 54, 255, 1.0)
                      ])),
                ),
              ),
              Positioned(
                top: 20.0,
                right: 20.0,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 18.0),
              ),
              Positioned(
                top: 80.0,
                right: 40.0,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 20.0),
              ),
              Positioned(
                top: 140.0,
                right: 30.0,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 22.0),
              ),
              Positioned(
                top: 180.0,
                right: 60.0,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 16.0),
              ),
              Positioned(
                top: 230.0,
                right: 70.0,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 24.0),
              ),
              Positioned(
                top: 270.0,
                right: 30.0,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 16.0),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon, size: size, color: Colors.white),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}
