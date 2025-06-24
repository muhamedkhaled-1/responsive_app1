import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_app1/utlis/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.backgroundcolor, this.textcolor, required this.text});
  final String text;
  final Color? backgroundcolor,textcolor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          elevation: 0,
          backgroundColor:backgroundcolor?? Color(0xff4EB7F2)
        ),
          onPressed: (){}, child: Text(text,style: AppStyles.styleSemiBold20.copyWith(color: textcolor),)),
    );
  }
}
