import 'package:blog_frondend/pages/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(blog());
}
class blog extends StatelessWidget {
  const blog({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: homepage(),
    );
  }
}
