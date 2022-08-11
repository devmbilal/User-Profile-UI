import 'package:flutter/material.dart';
import 'package:user_profile_ui/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: white,
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Icon(Icons.arrow_back_ios_new),
                    SizedBox(
                      width: 90,
                    ),
                    MyText(
                      tx: 'My Profile',
                      ff: font,
                      cl: black,
                      fs: 16,
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    Icon(Icons.more_vert_outlined),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                const ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/dp.png'),
                  ),
                  title: MyText(
                    tx: 'Bilal Shakeel',
                    ff: font,
                    cl: black,
                    fs: 20,
                    fw: FontWeight.bold,
                  ),
                  subtitle: MyText(
                    tx: 'Junior Developer',
                    ff: font,
                    cl: grey,
                    fs: 14,
                    fw: FontWeight.normal,
                  ),
                  trailing: Icon(
                    FontAwesomeIcons.edit,
                    size: 20,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const MyText(
                  tx: 'My Status',
                  ff: font,
                  cl: grey,
                  fs: 14,
                ),
                const SizedBox(
                  height: 50,
                ),
                SingleChildScrollView(
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal:6),
                        child: MyBox(text: 'Gamig', textsize: 16, icon:Icons.videogame_asset_outlined,iconsize:18,iconcolor:black, bgcolor:orange, width: 95, height: 35,blurcolor: lightblue,),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal:6),
                        child: MyBox(text: 'Gym', textsize: 16, icon:Icons.sports_gymnastics_sharp,iconsize:18,iconcolor: black, bgcolor: blue, width: 80, height: 35,blurcolor: lightblue,),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: MyBox(text: 'Away', textsize: 16, icon:Icons.emoji_emotions_outlined,iconsize:18,iconcolor: yellow, bgcolor: lightblack, width: 90, height: 35,blurcolor: lightblue,),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal:6),
                        child: MyBox(text: 'At Work', textsize: 16, icon:Icons.computer_outlined,iconsize:18,iconcolor:black, bgcolor: teal, width: 100, height: 35,blurcolor: lightblue,),
                      ),

                    ],
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
