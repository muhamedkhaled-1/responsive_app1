import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_app1/utlis/assets.dart';
import 'package:responsive_app1/utlis/styles.dart';

class UserInfoListTile extends StatelessWidget {
   const UserInfoListTile({super.key, required this.title, required this.subtitle, required this.image});
  final String title,subtitle,image;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(Assets.imagesAvatar3),
        title: Text(title,style:AppStyles.styleSemiBold16 ,),
        subtitle: Text(subtitle,style: AppStyles.styleRegular12,),
      ),
    );
  }
}
