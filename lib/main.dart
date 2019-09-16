import 'package:flutter/material.dart';
import 'login.dart';
import 'home.dart';

void main() => runApp(MaterialApp(
      
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
  
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.deepPurpleAccent,
        fontFamily: 'Titty',
      ),
      home: LoginScreen(),
    );
  }
}
