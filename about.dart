import 'package:flutter/material.dart';
import 'package:side_menu/drawer.dart';

class AboutPage extends StatelessWidget {

  AboutPage(this.value);
  bool value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About Page'),),
      drawer: DrawerPage(),
    );
    
  }
}