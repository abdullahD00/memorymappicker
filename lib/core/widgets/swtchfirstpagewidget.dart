import 'package:flutter/material.dart';
import 'package:memorymappicker/const_value/colorconst.dart';
import 'package:memorymappicker/const_value/imagepath.dart';
import 'package:memorymappicker/const_value/textconst.dart';
import 'package:memorymappicker/core/widgets/swtchscreencontainerwidget.dart';
import 'package:memorymappicker/core/widgets/swtchscreenimagewidget.dart';

class MySwtchInfoFirstScreen extends StatelessWidget {
  const MySwtchInfoFirstScreen({
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
                child: MySwitchInfoPageImageAsset(imagePath: ImagePath.firstSwitchImage)),
          ],
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height / 100,
          child: MySwitchInfoPageContainer(
            myWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Center(child: _MySwtchContainerChild()),
              ],
            ),
            myColor: ColorConst.swtchFirstContainerColor,
          ),
        ),
      ],
    );
  }
}

class _MySwtchContainerChild extends StatelessWidget {
  const _MySwtchContainerChild({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width / 15),
        child: Text(
          TextConst.swtchFirstContainerText,
          style: Theme.of(context).textTheme.headline2?.copyWith(
            fontSize: 25,
            color: Colors.black,
            letterSpacing: 2.5,
            shadows: <Shadow>[
              const Shadow(
                offset: Offset(0.0, 0.0),
                blurRadius: 10.0,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
