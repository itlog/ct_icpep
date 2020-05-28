import 'package:flutter/material.dart';

class ActiveTrip extends StatelessWidget {
  final Color color;

  const ActiveTrip({Key key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: SizedBox(),
          ),
          Container(
            alignment: Alignment.center,
            child: Text('No Active Trip', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.red[200])),
          ),
          Expanded(
            flex: 1,
            child: SizedBox(),
          ),
        ],
      ),
    );
  }
}