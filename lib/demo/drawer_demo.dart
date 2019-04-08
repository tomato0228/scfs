import 'package:flutter/material.dart';
class DrawerDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Tomato', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),
            accountEmail: Text('tomato@njust.edu.cn'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('http://img.52z.com/upload/news/image/20180108/20180108080908_15279.jpg'),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('http://thumbs.dreamstime.com/b/圣诞节背景-年-105999924.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.grey[400].withOpacity(0.6),
                    BlendMode.hardLight
                ),
              ),
            ),
          ),
          ListTile(
            title: Text('Message', textAlign: TextAlign.right,),
            trailing: Icon(Icons.message, color: Colors.black12, size: 22.0,),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('Favorite', textAlign: TextAlign.right,),
            trailing: Icon(Icons.favorite, color: Colors.black12, size: 22.0,),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('Settings', textAlign: TextAlign.right,),
            trailing: Icon(Icons.settings, color: Colors.black12, size: 22.0,),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}