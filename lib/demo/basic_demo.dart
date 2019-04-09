import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final TextStyle _textStyle = TextStyle(
      fontSize: 16.0,
    );

    final String _title = '绿皮书';
    final String _author = '托尼·利普';

    // TODO: implement build
    return Text(
      '《$_title》-- $_author。当我想你时，我想起了爱荷华州美丽的平原。我们之间相隔的距离，使我意志消沉，没有你的时光和旅程对我来说毫无意义。与你相爱是我做过的最轻松的事，没有什么比你更重要，在我活着的每一天我都会深深地感觉到，遇见你的那天，我就已爱上你，余生也会继续爱你。',
      textAlign: TextAlign.left,
      style: _textStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}