import 'package:flutter/material.dart';
import 'package:memorymappicker/const_value/colorconst.dart';
import 'package:memorymappicker/const_value/doubleconst.dart';
import 'package:memorymappicker/const_value/imagepath.dart';
import 'package:memorymappicker/viewmodel/splashscreenviewmodel.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends SplashScreenViewModel {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    var ekranUzunluk = ekranBilgisi.size.height;
    var ekranGenislik = ekranBilgisi.size.width;
    return Scaffold(
      body: SizedBox(
        height: ekranUzunluk,
        width: ekranGenislik,
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [ColorConst.splashScreenFirstBackColor, ColorConst.splashScreenSecondBackColor],
              stops: [
                DoubleConst.splashScreenBackGroundFirstStop,
                DoubleConst.splashScreenBackGroundSecondStop,
              ],
            ),
          ),
          child: Center(
            child: Transform.rotate(
              angle: rotateAnimasyonDeger.value,
              child: ScaleTransition(
                scale: scaleAnimasyonDeger,
                child: Image(
                  height: ekranUzunluk / 3,
                  width: ekranGenislik / 2,
                  image: const AssetImage(ImagePath.splashScreenAG),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
