import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_app1/models/drawer_list_items_model.dart';
import 'package:responsive_app1/utlis/styles.dart';

class DrawerListItems extends StatelessWidget {
  const DrawerListItems({super.key, required this.drawerListItemsModel, required this.isActive});
  final DrawerListItemsModel drawerListItemsModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive?ActiveDraweItem(drawerListItemsModel: drawerListItemsModel): InActiveDraweItem(drawerListItemsModel: drawerListItemsModel);
  }
}

class InActiveDraweItem extends StatelessWidget {
  const InActiveDraweItem({
    super.key,
    required this.drawerListItemsModel,
  });

  final DrawerListItemsModel drawerListItemsModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerListItemsModel.icons),
      title: Text(drawerListItemsModel.title,style: AppStyles.styleRegular16,),
    );
  }
}
class ActiveDraweItem extends StatelessWidget {
  const ActiveDraweItem({
    super.key,
    required this.drawerListItemsModel,
  });

  final DrawerListItemsModel drawerListItemsModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerListItemsModel.icons),
      title: FittedBox(
        alignment: AlignmentDirectional.centerStart,
          fit: BoxFit.scaleDown,
          child: Text(drawerListItemsModel.title,style: AppStyles.styleBold16)),
      trailing: Container(
        width: 3.27,
        decoration: BoxDecoration(color:Color(0xff4EB7F2) ),
      ),
    );
  }
}
