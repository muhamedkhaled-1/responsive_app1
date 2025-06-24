import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_app1/models/user_info_model.dart';
import 'package:responsive_app1/utlis/assets.dart';
import 'package:responsive_app1/utlis/styles.dart';

class LatestTransactionListTile extends StatelessWidget {
  const LatestTransactionListTile({super.key, required this.userInfoModel,});
  final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(userInfoModel.image),
      title: Text(userInfoModel.title,style: AppStyles.styleSemiBold16,),
      subtitle: Text(userInfoModel.subtitle,style: AppStyles.styleRegular12,),
    );
  }
}
