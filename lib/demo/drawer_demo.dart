import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('Dino', style: TextStyle(fontWeight: FontWeight.bold)),
                accountEmail: Text('Dinozhong@163.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage('https://img2.woyaogexing.com/2019/10/10/4ebcef879d494a3783d2d64810acf807!400x400.jpeg'),
                ),
                decoration: BoxDecoration(
                  color: Colors.yellow[400],
                  image: DecorationImage(
                    image: NetworkImage('https://resources.ninghao.org/images/candy-shop.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.yellow[400].withOpacity(0.6),
                      BlendMode.hardLight
                    )
                  )
                ),
              ),
              ListTile(
                title: Text('Messages', textAlign: TextAlign.right),
                trailing: Icon(Icons.message, size: 22.0, color: Colors.black12,),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                title: Text('Favorite', textAlign: TextAlign.right),
                trailing: Icon(Icons.favorite, size: 22.0, color: Colors.black12,),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                title: Text('Settings', textAlign: TextAlign.right),
                trailing: Icon(Icons.settings, size: 22.0, color: Colors.black12,),
                onTap: () => Navigator.pop(context),
              )
            ],
          ),
        );
  }
}