import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Input extends StatefulWidget {


  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      home: Scaffold(
          appBar: AppBar(
        title: const Text('AWS STUDY'),
      ),
      backgroundColor: Colors.blue,
      body: SafeArea(child: Column(children: <Widget>[ 
        



      ],),)

      
    ),
    );
  }
}
