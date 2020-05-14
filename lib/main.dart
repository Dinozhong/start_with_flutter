import 'package:flutter/material.dart';
import 'demo/drawer_demo.dart';
import 'demo/bottom_navigation_demo.dart';
import 'demo/listview_demo.dart';
import 'demo/basic_demo.dart';
import 'demo/layout_demo.dart';
import 'demo/pageOne.dart';
import 'demo/view_demo.dart';
import 'demo/sliver_demo.dart';
import 'demo/navigator_demo.dart';
import 'demo/form_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
//   Wallet data;
// setData() async {
//   data = await getWallet();    //getData()延迟执行后赋值给data
// }



  @override
  Widget build(BuildContext context) {

    // print(data.bech32Address);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => NavigatorDemo(),
      //   '/about': (context) => Page(title: 'About',),
      //   '/form': (context) => FormDemo()
      // },
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        accentColor: Colors.lightBlue
      ),
    );
  }
}

class Home extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Dino'),
          elevation: 0.0,
          
          actions: <Widget>[
            IconButton(
            icon: Icon(Icons.search),
            tooltip: 'search',
            onPressed: () => debugPrint('search button is pressed'),
            ),
          ],
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
              Tab(icon: Icon(Icons.view_quilt)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            // Icon(Icons.change_history, size: 128.0, color: Colors.black12),
            GameDetailPage(),
            LayoutDemo(),
            SliverDemo()
          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBarDemo()
      ),
    );
  }
}