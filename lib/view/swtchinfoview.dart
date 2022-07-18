import 'package:flutter/cupertino.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:flutter/material.dart';
import 'package:memorymappicker/const_value/doubleconst.dart';
import 'package:memorymappicker/const_value/textconst.dart';
import 'package:memorymappicker/core/widgets/swtchfirstpagewidget.dart';
import 'package:memorymappicker/core/widgets/swtchfourthpagewidget.dart';
import 'package:memorymappicker/core/widgets/swtchsecondpagewidget.dart';
import 'package:memorymappicker/core/widgets/swtchthirdpagewidget.dart';

class SwtchinfoView extends StatelessWidget {
  const SwtchinfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: OnBoardingSlider(
        pageBackgroundColor: Colors.blueGrey,
        headerBackgroundColor: Colors.grey,
        finishButtonText: TextConst.swtchFinishButtonText,
        skipTextButton: const Text(TextConst.swtchSkipTextButton),
        trailing: const Text(TextConst.swtchTrailing),
        background: [
          Container(
            color: Colors.black,
          ),
          Container(
            color: Colors.black,
          ),
          Container(
            color: Colors.black,
          ),
          Container(
            color: Colors.black,
          ),
        ],
        totalPage: DoubleConst.swtchTotalPage,
        speed: DoubleConst.swtchSpeed,
        pageBodies: const [
          //first page
          MySwtchInfoFirstScreen(),
          //second page
          MySwtchInfoSecondScreen(),
          //third page
          MySwtchInfoThirdScreen(),
          //fourth page
          MySwtchInfoFourthScreen(),
        ],
      ),
    );
  }
}
