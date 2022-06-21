// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:ungegat/utility/my_constant.dart';
import 'package:ungegat/utility/my_dialog.dart';
import 'package:ungegat/widgets/Show_button.dart';
import 'package:ungegat/widgets/show_form.dart';
import 'package:ungegat/widgets/show_image.dart';
import 'package:ungegat/widgets/show_text.dart';

class Authen extends StatefulWidget {
  const Authen({Key? key}) : super(key: key);

  @override
  State<Authen> createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  bool redeye = true;
  String? user, password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints boxConstraints) {
        return Container(
          decoration: MyConstant().bgBox(),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                newLogo(boxConstraints),
                newtitle(boxConstraints),
                formuser(boxConstraints),
                formpassword(boxConstraints),
                buttonLogin(boxConstraints),
              ],
            ),
          ),
        );
      }),
    );
  }

  Container buttonLogin(BoxConstraints boxConstraints) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      width: boxConstraints.maxWidth * 0.6,
      child: ShowButton(
          label: 'Login',
          pressFunc: () {
            print('user = $user , password = $password');

            if ((user?.isEmpty ?? true) || (password?.isEmpty ?? true)) {
              print('Have Space');
              myDialog(context: context).normalDialog(
                  title: 'Have Space', subTitle: 'Please Fill Every Blank');
            } else {
              print('No Space');
            }
          }),
    );
  }

  Container formpassword(BoxConstraints boxConstraints) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      width: boxConstraints.maxWidth * 0.6,
      height: 40,
      child: Showform(
          hint: 'Password',
          iconData: Icons.visibility_outlined,
          changfung: (String string) {
            password = string.trim();
          }),
    );
  }

  Container formuser(BoxConstraints boxConstraints) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      width: boxConstraints.maxWidth * 0.6,
      height: 40,
      child: Showform(
        hint: 'User',
        iconData: Icons.person_outlined,
        changfung: (String string) {
          user = string.trim();
        },
      ),
    );
  }

  SizedBox newtitle(BoxConstraints boxConstraints) {
    return SizedBox(
      width: boxConstraints.maxWidth * 0.6,
      child: Row(
        children: [
          ShowText(
            text: 'Login :',
            textStyle: MyConstant().h1Style(),
          ),
        ],
      ),
    );
  }

  SizedBox newLogo(BoxConstraints boxConstraints) {
    return SizedBox(
      width: boxConstraints.maxWidth * 0.6,
      child: Row(
        children: [
          SizedBox(
            width: boxConstraints.maxWidth * 0.25,
            child: const ShowImage(),
          ),
        ],
      ),
    );
  }
}
