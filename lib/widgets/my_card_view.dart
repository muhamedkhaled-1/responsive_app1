import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_app1/utlis/styles.dart';
import 'package:responsive_app1/widgets/custom_container.dart';
import 'package:responsive_app1/widgets/dots_indicator.dart';
import 'package:responsive_app1/widgets/transaction_history_header.dart';
import 'package:responsive_app1/widgets/transaction_history_list_view.dart';

import 'credit_card_view.dart';
import 'credit_page_view.dart';
import 'income_section.dart';

class MyCardView extends StatefulWidget {
  const MyCardView({super.key});

  @override
  State<MyCardView> createState() => _MyCardViewState();
}

class _MyCardViewState extends State<MyCardView> {
  late PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    pageController=PageController();
    pageController.addListener(() {
      currentPageIndex=pageController.page!.round();
      setState(() {

      });
    },);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:24,top: 50),
      child: CustomContainer(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('My card',style: AppStyles.styleSemiBold20,),
              SizedBox(height: 12,),
              CreditPageView(
                pageController:pageController,
              ),
              SizedBox(height: 19,),
              DotsIndicator(curentPageIndex: currentPageIndex),
              Divider(
                color: Color(0xffF1F1F1),
                height: 40,
              ),
              TransactionHistoryHeader(),
              SizedBox(height: 20,),
              Text('13 April 2022',style: AppStyles.styleMedium16.copyWith(color: Color(0xffAAAAAA)),),
              SizedBox(height: 16,),
              TransactionHistoryListView(),


            ],
          ),
        ),
      ),
    );
  }
}
