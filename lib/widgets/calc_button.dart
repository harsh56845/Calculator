// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalcButton extends StatelessWidget {
  CalcButton(
      {Key? key,
      required this.text,
      this.fillColor,
      this.textColor,
      this.callBack})
      : super(key: key);

  String text = "";
  final int? fillColor;
  final int? textColor;
  final Function? callBack;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const  EdgeInsets.all(10),
      child: SizedBox(
        height: 65,
        width: 65,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            primary: fillColor != null ? Color(fillColor!) : null,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          onPressed: () {
            if(text.isNotEmpty) {
              callBack!(text);
            }

            if(text.isEmpty){
            callBack!(); }
          },
          child: Text(
            text,
            style: GoogleFonts.rubik(
              textStyle: TextStyle(fontSize: 24, color: Color(textColor!)),
            ),
          ),
        ),
      ),
    );
  }
}
