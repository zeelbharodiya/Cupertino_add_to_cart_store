import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pr1_cupertino_store/global.dart';

import 'navigatepage.dart';


void main() {
  runApp(
    Myapp(),
  );
}


class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => NaviPage(),
      },
    );
  }
}
