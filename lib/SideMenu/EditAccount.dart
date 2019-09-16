import 'package:flutter/material.dart';
import 'package:flutterccourse9_14/home.dart';

class AccountInfo extends StatefulWidget {
  @override
  _AccountInfoState createState() => _AccountInfoState();
}

class _AccountInfoState extends State<AccountInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        leading: FlatButton(
          child: new Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
        ),
        title: new Text("Edit Account Info"),
        
      ),

      body: ListView(
        children: <Widget>[
          Padding(padding: EdgeInsets.all(20.0),),
          CircleAvatar(
            radius: 50.0,
          ),
          Padding(padding: EdgeInsets.all(20.0),),
          
        ],
      ),
    );
  }
}
