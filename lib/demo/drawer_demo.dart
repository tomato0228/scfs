import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              'Tomato',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            accountEmail: Text('tomato@njust.edu.cn'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'http://img.52z.com/upload/news/image/20180108/20180108080908_15279.jpg'),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'http://gss0.baidu.com/9fo3dSag_xI4khGko9WTAnF6hhy/zhidao/pic/item/6c224f4a20a44623d34fcf2b9a22720e0df3d7f6.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.grey[400].withOpacity(0.6), BlendMode.hardLight),
              ),
            ),
          ),
          ListTile(
            title: Text('Message', textAlign: TextAlign.right),
            trailing: Icon(Icons.message, color: Colors.black12, size: 22.0),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('Favorite', textAlign: TextAlign.right),
            trailing: Icon(Icons.favorite, color: Colors.black12, size: 22.0),
//            onTap: () => Navigator.pop(context),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/mdc');
            },
          ),
          ListTile(
            title: Text('Settings', textAlign: TextAlign.right),
            trailing: Icon(Icons.settings, color: Colors.black12, size: 22.0),
            //onTap: () => Navigator.pop(context),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/form');
            },
          ),
        ],
      ),
    );
  }
}
