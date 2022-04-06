import 'package:chinese/pages/home_page.dart';
import 'package:chinese/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PageList extends StatefulWidget {
  const PageList({Key? key}) : super(key: key);

  @override
  State<PageList> createState() => _PageListState();
}

class _PageListState extends State<PageList> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        systemNavigationBarColor: Constant.mytheme,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        appBar: AppBar(title: const Text('Chinese App')),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ListTile(
                title: const Text('01 首页'),
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage())),
              ),
              // ListTile(
              //   title: const Text('02 首页'),
              //   onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage())),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
