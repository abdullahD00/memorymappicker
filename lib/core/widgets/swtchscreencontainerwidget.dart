import 'package:flutter/material.dart';
import 'package:memorymappicker/const_value/doubleconst.dart';

// ignore: must_be_immutable
class MySwitchInfoPageContainer extends StatelessWidget {
  MySwitchInfoPageContainer({
    Key? key,
    required this.myWidget,
    required this.myColor,
  }) : super(key: key);
  Widget myWidget;
  Color myColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: myColor,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(DoubleConst.swtchContainerRadius),
        ),
      ),
      height: 200,
      width: MediaQuery.of(context).size.width,
      child: myWidget,
    );
  }
}
