import 'package:flutter/material.dart';

import 'package:animated_text_kit/animated_text_kit.dart';
import '../styles/color.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  late Animation animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller = AnimationController(
        duration: Duration(seconds: 4), vsync: this, upperBound: 1.0);

    // animation = CurvedAnimation(parent: controller, curve: Curves.decelerate);

    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(controller);

    controller.forward();
    // animation.addStatusListener((status) {
    //   if (status == AnimationStatus.completed) {
    //     controller.reverse();
    //   } else if (status == AnimationStatus.dismissed) {
    //     controller.forward();
    //   }
    //   print(status);
    // });
    // animation is bouncing back and forth

    @override
    void dispose() {
      super.dispose();
    }

    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.jpg'),
                    height: 80,
                    
                  ),
                ),
                DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 40.0,
                    color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                     
              fontFamily: 'Agne'
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      WavyAnimatedText('  Hello World'),
                      WavyAnimatedText('  Lets Study'),
                      WavyAnimatedText('  MC'),
                      WavyAnimatedText('  True False'),
                      WavyAnimatedText('  Matching'),
                    ],
                    isRepeatingAnimation: true,
                    onTap: () {
                      print("Tap Event");
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),

            // color lightBlueAccent, Text:Log in ,  onPress: Navigator.pushNamed(context, LoginScreen.id);
          ],
        ),
      ),
    );
  }
}
