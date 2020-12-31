import 'package:flutter/material.dart';
import 'package:my_sites_app/pages/detail_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Sites App',
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Sites App'),
        ),
        body: DetailScreen(),
      ),
    );
  }
}
