import 'package:broadcast/widget/main_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/list.dart';

class home extends StatelessWidget {
  home({Key? key}) : super(key: key);

  @override
  

  Widget build(BuildContext context) {

    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Color(0xFF090142),
          Color(0xFF04011c)
        ],
      )),
    child: Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: SafeArea(child: Text("Broadcast",style: GoogleFonts.comfortaa(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.white),)),
          ),
        ),
        main_container(),
        SizedBox(height: 10,),
        Expanded(child: list())
      ],
    ),
        )

    );
  }
}
