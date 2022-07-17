import 'package:flutter/material.dart';

import 'package:tcard/tcard.dart';
import 'package:flash_card/flash_card.dart';

List<Color> colors = [
  Colors.blue,
  Colors.yellow,
  Colors.red,
  Colors.orange,
  Colors.pink,
  Colors.amber,
  Colors.cyan,
  Colors.purple,
  Colors.brown,
  Colors.teal,
];

List<Widget> cards = List.generate(
  colors.length,
  (int index) {
    return FlashCard(
        frontWidget: Container(child: Text('front')),
        height: 400,
        width: 300,
        backWidget: Container(child: Text('back')));

  },
);

class TCardPage extends StatefulWidget {
  @override
  _TCardPageState createState() => _TCardPageState();
}

class _TCardPageState extends State<TCardPage> {
  TCardController _controller = TCardController();

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 100),
            TCard(
              cards: cards,
              controller: _controller,
              onForward: (index, info) {
                _index = index;
                print(info.direction);
                setState(() {});
              },
              onBack: (index, info) {
                _index = index;
                setState(() {});
              },
              onEnd: () {
                print('end');
              },
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                FlatButton(
                  onPressed: () {
                    _controller.back();
                  },
                  child: Text('Back'),
                ),
                FlatButton(
                  onPressed: () {
                    _controller.forward();
                  },
                  child: Text('Forward'),
                ),
                FlatButton(
                  onPressed: () {
                    _controller.reset();
                  },
                  child: Text('Reset'),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text(_index.toString()),
      ),
    );
  }
}
