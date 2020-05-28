import 'package:flutter/material.dart';


class LogoContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    appBar: AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/icpep.png',
            fit: BoxFit.contain,
            height: 30,
          ),
          Container(
              padding: const EdgeInsets.all(8.0), child: Text('ICpEP Singapore'))
        ],
      ),
    );
  }
}
