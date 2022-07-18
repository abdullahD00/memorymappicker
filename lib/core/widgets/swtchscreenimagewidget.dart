import 'package:flutter/material.dart';
import 'package:memorymappicker/const_value/doubleconst.dart';

// ignore: must_be_immutable
class MySwitchInfoPageImageAsset extends StatelessWidget {
  MySwitchInfoPageImageAsset({Key? key, required this.imagePath}) : super(key: key);
  String imagePath;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: DoubleConst.swtchImageAssetHeight,
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
      ),
    );
  }
}
