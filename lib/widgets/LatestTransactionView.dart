import 'package:flutter/cupertino.dart';
import 'package:responsive_app1/models/user_info_model.dart';
import 'package:responsive_app1/widgets/latest_transaction_list_tile.dart';

import '../utlis/assets.dart';

class Latesttransactionview extends StatefulWidget {
  const Latesttransactionview({super.key});

  @override
  State<Latesttransactionview> createState() => _LatesttransactionviewState();
}

class _LatesttransactionviewState extends State<Latesttransactionview> {
  final items=[
    UserInfoModel(image: Assets.assetsImagesAvatar1, title: 'Madrani Andi', subtitle: 'Madraniadi20@gmail'),
    UserInfoModel(image: Assets.imagesAvatar2, title: 'Josua Nunito', subtitle: 'Josh Nunito@gmail.com'),
    UserInfoModel(image: Assets.imagesAvatar3, title: 'Josua Nunito', subtitle: 'Josh Nunito@gmail.com'),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items.map((e) => IntrinsicWidth(child: LatestTransactionListTile(userInfoModel: e,)),).toList(),),
    );
  }
}
