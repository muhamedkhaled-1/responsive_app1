import 'package:flutter/cupertino.dart';
import 'package:responsive_app1/models/drawer_list_items_model.dart';
import 'package:responsive_app1/widgets/drawer_list_items.dart';
import '../utlis/assets.dart';

class DrawerSliverList extends StatefulWidget {
  DrawerSliverList({super.key});

  @override
  State<DrawerSliverList> createState() => _DrawerSliverListState();
}

class _DrawerSliverListState extends State<DrawerSliverList> {
  final List<DrawerListItemsModel> items = [
    DrawerListItemsModel(icons: Assets.imagesDashboard, title: 'Dashboard'),
    DrawerListItemsModel(icons: Assets.imagesMyTransctions, title: 'My Transaction'),
    DrawerListItemsModel(icons: Assets.imagesStatistics, title: 'Statistics'),
    DrawerListItemsModel(icons: Assets.imagesWalletAccount, title: 'Wallet Account'),
    DrawerListItemsModel(icons: Assets.imagesMyInvestments, title: 'My Investments'),
  ];

  int activeIndex=0;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
            (context, index) {
          return GestureDetector(
            onTap: (){
              setState(() {
                activeIndex=index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: DrawerListItems(
                isActive: activeIndex==index,
                drawerListItemsModel: items[index],
              ),
            ),
          );
        },
        childCount: items.length,
      ),
    );
  }
}
