import 'package:flutter/material.dart';

class TermsandDef extends StatefulWidget {
  @override
  State<TermsandDef> createState() => _TermsandDefState();
}

class _TermsandDefState extends State<TermsandDef> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('MyCards'), actions: <Widget>[
      // PopupMenuButton(
      //   onSelected: (FilterOptions selectedValue) {
      //     setState(() {  
      //       if (selectedValue == FilterOptions.)
      //     });
      //   },
      // ),

    ], 
    ),
    body: ProductsGrid(),
    );
  }
}
