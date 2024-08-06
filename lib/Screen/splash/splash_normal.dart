import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mytest_app/Screen/LaunchCall.dart';

class SplashNormal extends StatefulWidget {
  const SplashNormal({super.key});

  @override
  State<SplashNormal> createState() => _SplashNormalState();
}

class _SplashNormalState extends State<SplashNormal> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 2), () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LaunchCall(),)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlutterLogo(size:MediaQuery.of(context).size.height),
    );
  }
}
