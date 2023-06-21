import 'package:flutter/material.dart';
import 'package:mobil_app/login_screen/animations/change_screen_animation.dart';
import 'package:mobil_app/utils/helper_functions.dart';
import 'login_content.dart';

class TopText extends StatefulWidget {
  const TopText({Key? key}) : super(key: key);

  @override
  State<TopText> createState() => _TopTextState();
}

class _TopTextState extends State<TopText> {
  @override
  void initState() {
    ChangeScreenAnimation.topTextAnimation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {});
      }
    });

    super.initState();
  }

  @override
  // Widget build(BuildContext context) {
  //   return HelperFunctions.wrapWithAnimatedBuilder(
  //     animation: ChangeScreenAnimation.topTextAnimation,
  //     child: Text(
  //       ChangeScreenAnimation.currentScreen == Screens.signUp
  //           ? 'Hesap\nOluştur'
  //           : 'Yemek\nKapıda',
  //       style: const TextStyle(
  //         fontSize: 32,
  //         fontWeight: FontWeight.w600,
  //       ),
  //     ),
  //   );
  // }
  Widget build(BuildContext context) {
    return HelperFunctions.wrapWithAnimatedBuilder(
      animation: ChangeScreenAnimation.topTextAnimation,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            ChangeScreenAnimation.currentScreen == Screens.signUp
                ? 'Hesap\nOluştur'
                : 'Hoşgeldin',
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(width: 60),
          Image.asset('assets/image/logo.png',
            height: 100,
            width: 100,
          ),
        ],
      ),
    );
  }

}
