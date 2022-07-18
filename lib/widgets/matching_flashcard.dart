import 'package:flutter/material.dart';
import 'package:flash_card/flash_card.dart';
class MatchingFlashCard extends StatelessWidget {
    MatchingFlashCard({ required this.backtext});


  final String backtext;


  @override
  Widget build(BuildContext context) {
    return Expanded( child: FlashCard(
       
        frontWidget: Container(
          
    child: Text(   
           backtext,
    
        )),
        height: 400,
        width: 100,
        backWidget: Container(
    child: Text(
         '',
              style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 10,
                      fontWeight: FontWeight.w900),
                ),
        ),),);
  }
}
