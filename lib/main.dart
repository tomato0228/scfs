import 'package:flutter/material.dart';
import 'package:flutter_sfcs/demo/basic_demo.dart';
import 'package:flutter_sfcs/demo/bottom_navigation_bar_demo.dart';
import 'package:flutter_sfcs/demo/drawer_demo.dart';
import 'package:flutter_sfcs/demo/listView_demo.dart';
import 'package:flutter_sfcs/demo/layout_demo.dart';
import 'package:flutter_sfcs/demo/view_demo.dart';
import 'package:flutter_sfcs/demo/sliver_demo.dart';
import 'package:flutter_sfcs/demo/navigator_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false, //取消右上角debug图标
//      home: NavigatorDemo(),
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        'navigator': (context) => NavigatorDemo(),
        '/about': (context) => Page(title: 'About'),
        '/basic': (context) => BasicDemo(),
      },
      theme: ThemeData(
        primaryColor: Colors.yellow,
        highlightColor: Colors.white,
        splashColor: Colors.white70,
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('家校沟通系统'),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.search),
                tooltip: '搜索',
                onPressed: () => debugPrint('搜索按钮')),
          ],
          elevation: 0.0,
          //阴影
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
            //Icon(Icons.change_history,size: 128.0,color: Colors.black12),
            SliverDemo(),
            //Icon(Icons.directions_bike, size: 128.0, color: Colors.black12),
            LayoutDemo(),
            ViewDemo(),
          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}
