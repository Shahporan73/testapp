import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mytest_app/Screen/LaunchCall.dart';
import 'dart:math' as math;

import 'package:velocity_x/velocity_x.dart';

class SplashAdvance extends StatefulWidget {
  const SplashAdvance({super.key});

  @override
  State<SplashAdvance> createState() => _SplashAdvanceState();
}

class _SplashAdvanceState extends State<SplashAdvance> with TickerProviderStateMixin{

  var _visible = true;
  late final AnimationController _controller=AnimationController (
      duration: const Duration(seconds: 5),
      vsync: this)..repeat();

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();

  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(
        Duration(seconds: 5),
            ()=>
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const LaunchCall()))
    );

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            AnimatedBuilder(
              animation: _controller,
              child: Container(
                height: 200,
                width: 200,
                child: const Center(
                  child: Image(image: AssetImage('images/images.jpg')),
                ),
              ),
              builder: (BuildContext context, Widget? child){
                return Transform.rotate(
                  angle: _controller.value * 2.0 * math.pi,
                  child: child,
                );
              },
            ),

            10.heightBox,

            "Welcome to \nMyTest_app".text.blue600.size(18).center.make()
          ],
        )
    );
  }
}
