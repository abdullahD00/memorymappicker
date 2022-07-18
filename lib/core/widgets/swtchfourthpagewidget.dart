import 'package:flutter/material.dart';
import 'package:memorymappicker/const_value/colorconst.dart';
import 'package:memorymappicker/const_value/imagepath.dart';
import 'package:memorymappicker/core/widgets/swtchscreencontainerwidget.dart';
import 'package:memorymappicker/core/widgets/swtchscreenimagewidget.dart';

class MySwtchInfoFourthScreen extends StatelessWidget {
  const MySwtchInfoFourthScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Align(
                alignment: Alignment.topCenter,
                child: MySwitchInfoPageImageAsset(imagePath: ImagePath.fourthSwitchImage)),
          ],
        ),
        Positioned(
          bottom: 10,
          child: MySwitchInfoPageContainer(
            myWidget: Column(),
            myColor: ColorConst.swtchFourthContainerColor,
          ),
        ),
      ],
    );
  }
}
