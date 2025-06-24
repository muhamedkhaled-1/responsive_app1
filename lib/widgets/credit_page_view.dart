import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:responsive_app1/widgets/credit_card_view.dart';

class CreditPageView extends StatelessWidget {
  const CreditPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller:pageController ,
      scrollDirection: Axis.horizontal,
        children: List.generate(3, (index) => Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: CreditCardView(),
        ),));
  }
}
