import 'package:flutter/material.dart';

class HomeContent extends StatefulWidget {
  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Text('HELLODSOA', style: TextStyle(
        fontSize: 100.0,
      ),),
    );
  }
}