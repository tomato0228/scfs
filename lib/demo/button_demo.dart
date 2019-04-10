import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget flatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
        FlatButton.icon(
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );

    final Widget raisedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            backgroundColor: Theme.of(context).accentColor,
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
              shape: StadiumBorder(),
            ),
          ),
          child: RaisedButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey,
            elevation: 0.0,
//                  textColor: Theme.of(context).accentColor,
          ),
        ),
        SizedBox(width: 16.0),
        RaisedButton.icon(
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey,
          elevation: 16.0,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );

    final Widget outlineButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            backgroundColor: Theme.of(context).accentColor,
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
              shape: StadiumBorder(),
            ),
          ),
          child: OutlineButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey[100],
            highlightedBorderColor: Colors.grey,
            textColor: Colors.black,
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(width: 16.0),
        OutlineButton.icon(
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );

    final Widget fixedWidthButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 180.0,
          child: OutlineButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey[100],
            highlightedBorderColor: Colors.grey,
            textColor: Colors.black,
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
        ),
      ],
    );

    final Widget expandedBotton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: OutlineButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey[100],
            highlightedBorderColor: Colors.grey,
            textColor: Colors.black,
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(width: 16.0),
        Expanded(
          flex: 2,
          child: OutlineButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey[100],
            highlightedBorderColor: Colors.grey,
            textColor: Colors.black,
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
        ),
      ],
    );

    final Widget buttonBarDemo =Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            buttonTheme: ButtonThemeData(
              padding: EdgeInsets.symmetric(horizontal: 32.0),
            ),
          ),
          child: ButtonBar(
            children: <Widget>[
              OutlineButton(
                child: Text('Button'),
                onPressed: () {},
                splashColor: Colors.grey[100],
                highlightedBorderColor: Colors.grey,
                textColor: Colors.black,
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              OutlineButton(
                child: Text('Button'),
                onPressed: () {},
                splashColor: Colors.grey[100],
                highlightedBorderColor: Colors.grey,
                textColor: Colors.black,
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ],
    );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('ButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            flatButtonDemo,
            raisedButtonDemo,
            outlineButtonDemo,
            fixedWidthButton,
            expandedBotton,
            buttonBarDemo,
          ],
        ),
      ),
    );
  }
}