import 'package:flutter/material.dart';


class LogoContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('assets/images/ct_logo.png');
    Image image = Image(image: assetImage);
    return Container(
        child: image
    );
  }
}