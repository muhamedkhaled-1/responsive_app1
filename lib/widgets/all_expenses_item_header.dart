import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_app1/models/expenses_item_model.dart';
import 'package:responsive_app1/utlis/assets.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key, required this.expensesItemModel});
  final ExpensesItemModel expensesItemModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: AspectRatio(
            aspectRatio: 1,
            child: Center(
              child: CircleAvatar(
                backgroundColor: Color(0xffFAFAFA),
                child: SvgPicture.asset(expensesItemModel.image),
              ),
            ),
          ),
        ),
        Spacer(),
        Icon(Icons.arrow_forward_ios_outlined)
      ],
    );
  }
}
