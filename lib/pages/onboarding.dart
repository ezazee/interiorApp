import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:sample/pages/signIn.dart';
import 'package:sample/theme.dart';

class OnBoarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    // Gaya teks kustom
    final TextStyle customTextStyle = TextStyle(
      color: orangeDarkColor, // Warna teks
      fontSize: 15, // Ukuran teks
      fontWeight: medium, // Berat font
    );

    return Scaffold(
      body: OnBoardingSlider(
        headerBackgroundColor: transparentColor,
        finishButtonText: 'Get Started',
        onFinish: () {
          Navigator.pushNamed(context, '/sign-in');
        },
        finishButtonStyle: const FinishButtonStyle(
          backgroundColor: Color(0xFFF4B5A4),
        ),
        skipTextButton: Text(
          'Skip',
          style: customTextStyle,
        ),
        trailing: Text(
          'Get Started',
          style: customTextStyle,
        ),
        trailingFunction: () {
          Navigator.pushNamed(context, '/sign-in');
        },
        background: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/onboarding/onboarding1.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: Center(
              child: Container(
                width: screenWidth,
                height: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/onboarding/onboarding1.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/onboarding/onboarding2.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: Center(
              child: Container(
                width: screenWidth,
                height: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/onboarding/onboarding2.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/onboarding/onboarding3.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: Center(
              child: Container(
                width: screenWidth,
                height: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/onboarding/onboarding3.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/onboarding/onboarding4.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: Center(
              child: Container(
                width: screenWidth,
                height: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/onboarding/onboarding4.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
        ],
        addController: true,
        controllerColor: salmonColor,
        totalPage: 4,
        speed: 1.8,
        pageBodies: [
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 480,
                ),
                Text(
                  'Confortable Space.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: salmonColor,
                    fontSize: 25.0,
                    fontWeight: bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 480,
                ),
                Text(
                  'Modern Design.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: salmonColor,
                    fontSize: 25.0,
                    fontWeight: bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 480,
                ),
                Text(
                  'Styled Living.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: salmonColor,
                    fontSize: 25.0,
                    fontWeight: bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 480,
                ),
                Text(
                  'Relaxed Furniture.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: salmonColor,
                    fontSize: 25.0,
                    fontWeight: bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
