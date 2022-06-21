// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:ungegat/utility/my_constant.dart';

class Showform extends StatelessWidget {
  final String hint;
  final IconData iconData;
  final Function(String) changfung;
  final bool? obsecu;
  final Function()? redEyefunc;
  const Showform({
    Key? key,
    required this.hint,
    required this.iconData,
    required this.changfung,
    this.obsecu,
    this.redEyefunc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obsecu ?? false,
      onChanged: changfung,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white.withOpacity(1.0),
        suffixIcon: Icon(iconData),
        hintText: hint,
        contentPadding:
            const EdgeInsets.only(top: 4, bottom: 4, left: 16, right: 16),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: MyConstant.dark),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: MyConstant.active),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
