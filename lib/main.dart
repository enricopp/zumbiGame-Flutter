import 'package:flutter/material.dart';
import 'login.dart';

void main() => runApp(BlogRico());

class BlogRico extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BlogRico',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: LoginPage(),
    );
  }
}
