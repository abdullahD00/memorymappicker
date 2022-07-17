import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:memorymappicker/view/splashscreen.dart';

abstract class SplashScreenViewModel extends State<SplashScreenView> with TickerProviderStateMixin {
  late AnimationController animasyonKontrol;
  late Animation<double> scaleAnimasyonDeger;
  late Animation<double> rotateAnimasyonDeger;

  @override
  void initState() {
    super.initState();
    animasyonKontrol = AnimationController(duration: const Duration(seconds: 2), vsync: this)..repeat(reverse: true);
    scaleAnimasyonDeger = CurvedAnimation(parent: animasyonKontrol, curve: Curves.fastOutSlowIn);
    rotateAnimasyonDeger = Tween(begin: 0.0, end: 2 * pi).animate(animasyonKontrol)
      ..addListener(() {
        setState(() {});
        (() {});
      });
    animasyonKontrol.forward();
    Future.delayed(const Duration(seconds: 3), () {
      //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => switchscreen_one()));
    });
  }
}
