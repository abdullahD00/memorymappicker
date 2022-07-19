import 'package:flutter/cupertino.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:flutter/material.dart';
import 'package:memorymappicker/const_value/doubleconst.dart';
import 'package:memorymappicker/const_value/textconst.dart';
import 'package:memorymappicker/core/widgets/switchinfoscreen/swtchfirstpagewidget.dart';
import 'package:memorymappicker/core/widgets/switchinfoscreen/swtchfourthpagewidget.dart';
import 'package:memorymappicker/core/widgets/switchinfoscreen/swtchsecondpagewidget.dart';
import 'package:memorymappicker/core/widgets/switchinfoscreen/swtchthirdpagewidget.dart';
import 'package:memorymappicker/view/appmain.dart';

class SwtchinfoView extends StatelessWidget {
  const SwtchinfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: OnBoardingSlider(
        pageBackgroundColor: Colors.black,
        headerBackgroundColor: Colors.black,
        controllerColor: Colors.white,
        finishButtonColor: Colors.white,
        finishButtonTextStyle: const TextStyle(
          color: Colors.black,
        ),
        skipIcon: const Icon(
          Icons.arrow_forward,
          color: Colors.black,
        ),
        leading: const Icon(
          Icons.where_to_vote_outlined,
          color: Colors.white,
        ),
        finishButtonText: TextConst.swtchFinishButtonText,
        skipTextButton: const Text(
          TextConst.swtchSkipTextButton,
          style: TextStyle(color: Colors.white),
        ),
        trailing: const Text(
          TextConst.swtchTrailing,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        onFinish: () {
          Navigator.push<void>(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => const AppMainView(),
            ),
          );
        },
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
