import 'package:flutter/material.dart';
import 'HomeMenu.dart';
import 'login.dart';
import 'SideMenu/EditAccount.dart';
import 'NavBar.dart';
import 'HomeContent.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
  
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Home", style: TextStyle(fontFamily: 'Titty', fontSize: 30.0, ),),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              semanticLabel: 'search',
            ),
            onPressed: () {
              print('search button');
            },
          ),
          
        ],
      ),

      /* SIDE DRAWER MENU SECTION 
      *
      *
      *
      *
      *
      */
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(padding: new EdgeInsets.all(10.0)),
                new CircleAvatar(
                  radius: 50,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AccountInfo()),
                    );
                    },
                  ),
                ),
                Padding(padding: new EdgeInsets.all(20.0),),
                Column(
                  children: <Widget>[
                    new Text("Joshua", style: TextStyle(fontFamily: 'Titty', fontSize: 17.0)),
                    Padding(padding: new EdgeInsets.all(10.0),),
                    new Text("Ranking:")
                  ],
                ),
              ],
            ),
            SizedBox(height: 10.0,),
            Divider(),
            /* MENU OPTIONS 
            */
            Padding(
              padding: EdgeInsets.all(40.0),
              child: new Text('    12912012 Stakes', style: TextStyle(fontFamily: 'Titty', fontSize: 23.5)),
            ),
            Divider(),
            new ListTile(
              title: GestureDetector(
                onTap: (){
                  print('hi');
                },
                child: new Text("  Active Stakes", style: TextStyle(height: 3.0, fontSize: 25.0),),
              )
            ),
            new ListTile(
              title: GestureDetector(
                onTap: (){
                  print('hi');
                },
                child: new Text("  Active Stakes", style: TextStyle(height: 3.0, fontSize: 25.0),),
              )
            ),
            new ListTile(
              title: GestureDetector(
                onTap: (){
                  print('hi');
                },
                child: new Text("  Stake History", style: TextStyle(height: 3.0, fontSize: 25.0),),
              )
            ),
            new ListTile(
              title: GestureDetector(
                onTap: (){
                  print('hi');
                },
                child: new Text("  Boosts", style: TextStyle(height: 3.0, fontSize: 25.0),),
              )
            ),
            new ListTile(
              title: GestureDetector(
                onTap: (){
                  print('hi');
                },
                child: new Text("  Stake Store", style: TextStyle(height: 3.0, fontSize: 25.0),),
              )
            ),
            new ListTile(
              title: GestureDetector(
                onTap: (){
                  print('hi');
                },
                child: new Text("  Promotions", style: TextStyle(height: 3.0, fontSize: 25.0),),
              )
            ),
          ],
        ),
      ),
      
      body: ListView(
        children: <Widget>[
          new HomeContent(),
        ],
      ),
      /* BOTTOM NAVIGATION BAR SECTION
      *
      *
      *
      *
      *
      *
      */
      bottomNavigationBar: BottomNavigation()
    );
  }
}
