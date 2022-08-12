import 'package:flutter/material.dart';

const Color white = Colors.white;
const Color black = Colors.black;
const Color grey = Colors.grey;
const Color grey1 = Color(0xffcfd8dc);
const Color red = Colors.redAccent;
const Color yellow = Colors.yellowAccent;
const Color yellow1 = Colors.yellow;
const Color yellow2 = Color(0xffffa000);
const Color lightblack = Colors.black87;
const Color teal = Colors.teal;
const Color orange = Colors.deepOrangeAccent;
const Color lightblue = Colors.lightBlueAccent;
const Color blue = Color(0xff2196f3);

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
  const MyBox({
    Key? key,
    required this.text,
    this.fontfamily = 'Roboto Regular',
    this.textcolor = white,
    required this.textsize,
    this.fw = FontWeight.normal,
    required this.icon,
    this.blurcolor = white,
    required this.bgcolor,
    required this.width,
    required this.height,
    this.iconcolor = black,
    this.iconsize = 20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: bgcolor,
          // border: Border.all(
          //   color: Colors.teal,
          //   width: 5,
          // ),
          boxShadow: [
            BoxShadow(
              blurRadius: 2,
              color: blurcolor,
            )
          ],
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(
              icon,
              color: iconcolor,
              size: iconsize,
            ),
            const SizedBox(
              width: 5,
            ),
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

class MyRow extends StatefulWidget {
  final String text;
  final String fontfamily;
  final Color textcolor;
  final double textsize;
  final FontWeight fw;
  final IconData icon;
  final Color iconcolor;
  final double iconsize;
  final double radius;
  final Color circlecolor;
  final double sizeboxwidth;
  final double swidth;
  const MyRow({
    Key? key,
    required this.text,
    this.fontfamily = 'Roboto Regular',
    this.textcolor = white,
    required this.textsize,
    this.fw = FontWeight.normal,
    required this.icon,
    this.iconsize = 20,
    this.iconcolor = black,
    required this.radius,
    required this.circlecolor,
    required this.sizeboxwidth,
    this.swidth = 10,
  }) : super(key: key);

  @override
  State<MyRow> createState() => _MyRowState();
}

class _MyRowState extends State<MyRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: widget.radius,
          backgroundColor: widget.circlecolor,
          child: Icon(
            widget.icon,
            color: widget.iconcolor,
            size: widget.iconsize,
          ),
        ),
        SizedBox(
          width: widget.swidth,
        ),
        Text(
          widget.text,
          style: TextStyle(
            color: widget.textcolor,
            fontFamily: widget.fontfamily,
            fontSize: widget.textsize,
            fontWeight: widget.fw,
          ),
        ),
        SizedBox(
          width: widget.sizeboxwidth,
        ),
        const Align(
            alignment: Alignment.topLeft,
            child: Icon(Icons.arrow_back_ios_new)),
      ],
    );
  }
}

class MyTextfield extends StatefulWidget {
  final String labeltext;
  final IconData prefixicon;
  final Color prefixcolor;
  const MyTextfield(
      {Key? key,
      required this.labeltext,
      required this.prefixicon,
      required this.prefixcolor,})
      : super(key: key);

  @override
  State<MyTextfield> createState() => _MyTextfieldState();
}

class _MyTextfieldState extends State<MyTextfield> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(
        fontFamily: ('Roboto Bold'),
        fontSize: 14,
        color: black,
      ),
      decoration: InputDecoration(
        prefixIcon: Icon(
          widget.prefixicon,
          color: widget.prefixcolor,
        ),
        labelText: widget.labeltext,
        labelStyle: const TextStyle(
            color: grey, fontSize: 14, fontFamily: ('Roboto Bold')),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: grey, width: 2),
          borderRadius: BorderRadius.circular(20),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: grey, width: 2),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}

class MyTextField2 extends StatefulWidget {
  final String labeltext;
  final IconData prefixicon;
  final IconData suffixicon;
  final Color prefixcolor;
  final Color suffixcolor;
  const MyTextField2(
      {Key? key,
      required this.labeltext,
      required this.prefixicon,
      required this.suffixicon,
      required this.prefixcolor,
      required this.suffixcolor})
      : super(key: key);

  @override
  State<MyTextField2> createState() => _MyTextField2State();
}

class _MyTextField2State extends State<MyTextField2> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      style: const TextStyle(
        fontFamily: ('Roboto Bold'),
        fontSize: 14,
        color: black,
      ),
      decoration: InputDecoration(
        prefixIcon: Icon(
          widget.prefixicon,
          color: widget.prefixcolor,
        ),
        suffixIcon: Icon(
          widget.suffixicon,
          color: widget.suffixcolor,
        ),
        labelText: widget.labeltext,
        labelStyle: const TextStyle(
            color: grey, fontSize: 14, fontFamily: ('Roboto Bold')),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: grey, width: 2),
          borderRadius: BorderRadius.circular(20),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: grey, width: 2),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
