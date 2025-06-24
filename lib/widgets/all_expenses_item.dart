import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_app1/models/expenses_item_model.dart';
import 'package:responsive_app1/utlis/styles.dart';
import 'package:responsive_app1/widgets/all_expenses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.expensesItemModel, });
  final ExpensesItemModel expensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
        )),
        child: Padding(
          padding: const EdgeInsets.only(left: 34.0,right: 34,top: 30),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AllExpensesItemHeader(
                expensesItemModel: expensesItemModel,
              ),
              SizedBox(height: 34,),
              FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(expensesItemModel.title,style: AppStyles.styleSemiBold16,)),
              SizedBox(height: 8,),
              FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(expensesItemModel.date,style: AppStyles.styleRegular14,)),
              SizedBox(height: 12,),
              FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(r'$20,129',style: AppStyles.styleSemiBold24,)),
              SizedBox(height: 12,),
            ],
          ),
        ),
      ),
    );
  }
}
