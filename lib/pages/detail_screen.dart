import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Sites App'),
      ),
      body: Center(
        child: Text('Hello, World!'),
      ),
    );
  }
}
