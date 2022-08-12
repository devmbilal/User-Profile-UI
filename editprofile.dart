import 'package:flutter/material.dart';
import 'package:user_profile_ui/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
                  height: 30,
                ),
                Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: const [
                      CircleAvatar(
                        radius: 45,
                        backgroundColor: grey1,
                      ),
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('assets/dp.png'),
                      ),
                      Positioned(
                        bottom: 20,
                          left:63,
                          child: CircleAvatar(
                          radius: 10,
                            child: Icon(Icons.edit_outlined,
                        color: white,
                        size:15,
                      ),
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Center(
                  child: MyText(
                    tx: 'Bilal Shakeel',
                    ff: font,
                    cl: Colors.black,
                    fs: 20,
                    fw: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Center(
                  child: MyText(
                    tx: 'Junior Developer',
                    ff: font,
                    cl: grey,
                    fs: 12,
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 6),
                  child: MyTextfield(
                      labeltext: 'Email Address',
                      prefixicon: Icons.email_outlined,
                      prefixcolor: yellow2),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 6),
                  child: MyTextfield(
                      labeltext: 'Username',
                      prefixicon: Icons.account_circle_outlined,
                      prefixcolor: red),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 6),
                  child: MyTextField2(
                      labeltext: 'Password',
                      prefixicon: Icons.privacy_tip_outlined,
                      suffixicon: Icons.visibility,
                      prefixcolor: teal,
                      suffixcolor: Colors.blue),
                ),
                const SizedBox(
                  height: 40,
                ),
                const MyText(
                  tx: 'Birth Date (Optional)',
                  ff: font,
                  cl: grey,
                  fs: 14,
                ),
                const SizedBox(
                  height: 20,
                ),
                DatePicker(
                  DateTime.now(),
                  initialSelectedDate: DateTime.now(),
                  selectionColor: teal,
                  selectedTextColor: Colors.white,
                  onDateChange: (date) {
                    // New date selected
                    setState(() {
                      //_selectedValue = date;
                    });
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: const [
                    MyText(
                      tx: 'Joined  ',
                      ff: font,
                      cl: grey,
                      fs: 14,
                    ),
                    MyText(
                      tx: '12 August 2022',
                      ff: font,
                      cl: grey,
                      fs: 14,
                      fw: FontWeight.bold,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
