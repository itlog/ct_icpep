import 'package:comunitytracker/src/ActiveTrip.dart';
import 'package:comunitytracker/src/TabColor.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {


    return _HomeState();
  }
}

class _HomeState extends State<Home> {

  int _currentIndex = 0;
  final List<Widget> _children = [
    ActiveTrip(),
    TabColor(Colors.red),
    TabColor(Colors.blue),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          //onPressed: () => Navigator.of(context).pop(),
        ),
        title: Row(

          children: [
            Image.asset('assets/images/icpep.png',
              fit: BoxFit.contain,
              height: 45,
            ),
            Container(

                padding: const EdgeInsets.all(8.0), child: Text('ICpEP Singapore',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.green[600]),) )
          ],
        ),
      ),
      body: _children[_currentIndex], // new
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, // this will be set when a new tab is tapped
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.green[700],
        iconSize: 20,

        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home',style: TextStyle(color: Colors.green[700])),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.camera_alt),
            title: new Text('Scan',style: TextStyle(color: Colors.green[700])),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: new Text('Profile',style: TextStyle(color: Colors.green[700])),
          )
        ],
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },

      ),

    );
  }




}
