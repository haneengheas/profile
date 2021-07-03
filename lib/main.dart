import 'package:flutter/material.dart';
import 'package:profile/views/workspace/view.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: WorkSpace(),
      ),
    );
  }
}
