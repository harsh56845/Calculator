// ignore_for_file: must_be_immutable

import 'package:calculator/widgets/calc_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:provider/provider.dart';

import 'providers/cal.dart';

void main() {
  runApp(ChangeNotifierProvider<Cal>(create: (_)=>Cal(),child: const MyApp())
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      home: Main(),
    );
  }
}

class Main extends StatelessWidget {


  const Main({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const  Color(0xFF283637),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Text(
                Provider.of<Cal>(context).history,
                style: GoogleFonts.rubik(
                  textStyle:const  TextStyle(
                    fontSize: 24,
                    color: Color(0xFF545F61),
                  ),
                ),
              ),
            ),
            alignment:const  Alignment(1.0, 1.0),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                Provider.of<Cal>(context).expression,
                style: GoogleFonts.rubik(
                  textStyle:const  TextStyle(
                    fontSize: 48,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            alignment:const  Alignment(1.0, 1.0),
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalcButton(
                text: 'AC',
                textColor: 0xFFFFFFFF,
                fillColor: 0xFF6C807F,
                callBack: Provider.of<Cal>(context).allClear,
              ),
              CalcButton(
                text: 'C',
                textColor: 0xFFFFFFFF,
                fillColor: 0xFF6C807F,
                callBack: Provider.of<Cal>(context).clear,
              ),
              CalcButton(
                text: '%',
                fillColor: 0xFFFFFFFF,
                textColor: 0xFF65BDAC,
                callBack: Provider.of<Cal>(context).numClick,
              ),
              CalcButton(
                text: '/',
                fillColor: 0xFFFFFFFF,
                textColor: 0xFF65BDAC,
                callBack: Provider.of<Cal>(context).numClick,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalcButton(
                text: '7',
                textColor: 0xFFFFFFFF,
                fillColor: 0xFF283637,
                callBack: Provider.of<Cal>(context).numClick,
              ),
              CalcButton(
                text: '8',
                textColor: 0xFFFFFFFF,
                fillColor: 0xFF283637,
                callBack: Provider.of<Cal>(context).numClick,
              ),
              CalcButton(
                text: '9',
                fillColor: 0xFF283637,
                textColor: 0xFFFFFFFF,
                callBack: Provider.of<Cal>(context).numClick,
              ),
              CalcButton(
                text: '*',
                fillColor: 0xFFFFFFFF,
                textColor: 0xFF65BDAC,
                callBack: Provider.of<Cal>(context).numClick,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalcButton(
                text: '4',
                textColor: 0xFFFFFFFF,
                callBack: Provider.of<Cal>(context).numClick,
                fillColor: 0xFF283637,
              ),
              CalcButton(
                text: '5',
                textColor: 0xFFFFFFFF,
                fillColor: 0xFF283637,
                callBack: Provider.of<Cal>(context).numClick,
              ),
              CalcButton(
                text: '6',
                fillColor: 0xFF283637,
                textColor: 0xFFFFFFFF,
                callBack: Provider.of<Cal>(context).numClick,
              ),
              CalcButton(
                text: '-',
                fillColor: 0xFFFFFFFF,
                textColor: 0xFF65BDAC,
                callBack: Provider.of<Cal>(context).numClick,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalcButton(
                text: '1',
                textColor: 0xFFFFFFFF,
                fillColor: 0xFF283637,
                callBack: Provider.of<Cal>(context).numClick,
              ),
              CalcButton(
                text: '2',
                textColor: 0xFFFFFFFF,
                fillColor: 0xFF283637,
                callBack: Provider.of<Cal>(context).numClick,
              ),
              CalcButton(
                text: '3',
                fillColor: 0xFF283637,
                textColor: 0xFFFFFFFF,
                callBack: Provider.of<Cal>(context).numClick,
              ),
              CalcButton(
                text: '+',
                fillColor: 0xFFFFFFFF,
                textColor: 0xFF65BDAC,
                callBack: Provider.of<Cal>(context).numClick,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalcButton(
                text: '.',
                textColor: 0xFFFFFFFF,
                fillColor: 0xFF283637,
                callBack: Provider.of<Cal>(context).numClick,
              ),
              CalcButton(
                text: '0',
                textColor: 0xFFFFFFFF,
                fillColor: 0xFF283637,
                callBack: Provider.of<Cal>(context).numClick,
              ),
              CalcButton(
                text: '00',
                fillColor: 0xFF283637,
                textColor: 0xFFFFFFFF,
                callBack: Provider.of<Cal>(context).numClick,
              ),
              CalcButton(
                text: '=',
                fillColor: 0xFFFFFFFF,
                textColor: 0xFF65BDAC,
                callBack: Provider.of<Cal>(context).evaluate,
              ),
            ],
          ),

        ],
      ),
            bottomNavigationBar: Text(Provider.of<Cal>(context).footerText.toString(),style:const  TextStyle(color: Color(0xFFFFFFFF)),textAlign: TextAlign.left,),

    );
  }
}

  @override
  Widget build(BuildContext context) {
    
    throw UnimplementedError();
  }
