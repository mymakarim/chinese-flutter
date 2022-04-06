import 'package:chinese/page_list.dart';
import 'package:chinese/utils/constant.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chinese App',
      theme: ThemeData(
        primarySwatch: Constant.mytheme,
      ),
      debugShowCheckedModeBanner: false,
      home: const PageList(),
    );
  }
}
