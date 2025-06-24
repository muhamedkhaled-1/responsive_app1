import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_app1/utlis/styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: Color(0xff0FAFAFA),
        filled: true,
        hintText: hintText,
        hintStyle: AppStyles.styleRegular16.copyWith(color: Color(0xffAAAAAA)),
        border: usedborder(),
        focusedBorder: usedborder(),
        enabledBorder: usedborder(),
      ),
    );
  }

  OutlineInputBorder usedborder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Color(0xffFAFAFA),)
      );
  }
}
