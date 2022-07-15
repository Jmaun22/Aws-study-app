import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../widgets/resuseable_card.dart';
import '../styles/color.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/icon_content.dart';

class QuizSelectionPage extends StatefulWidget {
  @override
  State<QuizSelectionPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<QuizSelectionPage> {

  int height = 180;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         backgroundColor: lprimaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReuseableCard(
                    colour: lprimaryColor,
                    cardChild: iconContent(
                        iconsymbol: FontAwesomeIcons.list,
                        icontext: 'MUTI CHOCIE'),
                    tapOnIcon: () {},
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    colour: lprimaryColor,
                    cardChild: iconContent(
                        iconsymbol: FontAwesomeIcons.checkDouble,
                        icontext: 'T/F'),
                    tapOnIcon: () {},
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReuseableCard(
                    colour: lprimaryColor,
                    cardChild: iconContent(
                        iconsymbol: FontAwesomeIcons.puzzlePiece,
                        icontext: 'MATCHING'),
                    tapOnIcon: () {},
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    colour: lprimaryColor,
                    cardChild: iconContent(
                        iconsymbol: FontAwesomeIcons.noteSticky,
                        icontext: 'LEARN'),
                    tapOnIcon: () {},
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReuseableCard(
                    colour: lprimaryColor,
                    cardChild: Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 220,
                      // activeColor: Color(0xFFEB1555),

                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                        print(newValue);
                      },
                    ),
                    tapOnIcon: () {},
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
