import 'package:flutter/cupertino.dart';
import 'package:responsive_app1/models/drawer_list_items_model.dart';
import 'package:responsive_app1/widgets/drawer_list_items.dart';
import 'package:responsive_app1/widgets/drawer_sliver_list.dart';
import 'package:responsive_app1/widgets/user_info_list_tile.dart';

import '../utlis/assets.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * .7,
      color: const Color.fromRGBO(255, 255, 255, 1),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(title: 'Lekan Okeowo', subtitle: 'demo@gmail.com', image: Assets.imagesAvatar3),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerSliverList(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox(
                  height: 20,
                )),
                InActiveDraweItem(drawerListItemsModel: DrawerListItemsModel(icons: Assets.imagesSettings, title: 'Setting system')),
                InActiveDraweItem(drawerListItemsModel: DrawerListItemsModel(icons: Assets.imagesLogout, title: 'Logout account')),
                SizedBox(height: 48,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
