import 'package:flutter/material.dart';

const Color white = Colors.white;
const Color black = Colors.black;
const Color grey = Colors.grey;
const Color red=Colors.redAccent;
const Color yellow=Colors.yellowAccent;
const Color lightblack=Colors.black87;
const Color teal=Colors.teal;
const Color orange=Colors.deepOrangeAccent;
const Color lightblue=Colors.lightBlueAccent;
const Color blue=Color(0xff2196f3);


const String font = 'Roboto Regular';

class MyText extends StatelessWidget {
  final String tx;
  final String ff;
  final Color cl;
  final double fs;
  final FontWeight fw;
  const MyText(
      {Key? key,
      required this.tx,
      required this.ff,
      required this.cl,
      required this.fs,
      this.fw = FontWeight.normal})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      tx,
      style: TextStyle(
        color: cl,
        fontFamily: ff,
        fontSize: fs,
        fontWeight: fw,
      ),
    );
  }
}

class MyBox extends StatelessWidget {
  final String text;
  final String fontfamily;
  final Color textcolor;
  final double textsize;
  final FontWeight fw;
  final IconData icon;
  final Color blurcolor;
  final Color bgcolor;
  final Color iconcolor;
  final double width;
  final double height;
  final double iconsize;
  const MyBox({Key? key,
    required this.text,
    this.fontfamily='Roboto Regular',
    this.textcolor=white,
    required this.textsize,
    this.fw = FontWeight.normal,
    required this.icon,
    this.blurcolor=white,
    required this.bgcolor,
    required this.width,
    required this.height,
    this.iconcolor=black,
    this.iconsize=20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:width,
      height: height,
      decoration: BoxDecoration(
          color: bgcolor,
          // border: Border.all(
          //   color: Colors.teal,
          //   width: 5,
          // ),
          boxShadow:[
            BoxShadow(
              blurRadius: 8,
              color: blurcolor,
            )
          ],
          borderRadius:BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(icon,color: iconcolor,size:iconsize,),
            const SizedBox(width: 5,),
            Text(
              text,
              style: TextStyle(
                color: textcolor,
                fontFamily: fontfamily,
                fontSize: textsize,
                fontWeight: fw,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
