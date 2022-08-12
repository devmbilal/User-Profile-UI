import 'package:flutter/material.dart';
import 'package:user_profile_ui/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
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
                      width: 85,
                    ),
                    Center(
                      child: MyText(
                        tx: 'Edit Profile',
                        ff: font,
                        cl: black,
                        fs: 16,
                      ),
                    ),

                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 6,horizontal: 8),
                  child: MyTextfield(labeltext: 'Email Address', prefixicon:Icons.email_outlined, prefixcolor:yellow2),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 6,horizontal: 8),
                  child: MyTextfield(labeltext: 'Username', prefixicon:Icons.account_circle_outlined, prefixcolor:red),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 6,horizontal: 8),
                  child: MyTextField2(labeltext: 'Password', prefixicon:Icons.privacy_tip_outlined, suffixicon: Icons.visibility, prefixcolor:teal, suffixcolor:Colors.blue),
                ),
              ],
            ),
          ),
      ),
        ),
    );
  }
}
