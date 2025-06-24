import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_app1/utlis/styles.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('All Expenses',style: AppStyles.styleSemiBold20,),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Text('Monthly',style:AppStyles.styleMedium16 ,),
                SizedBox(width:18,),
                Icon(Icons.keyboard_arrow_down_sharp)
              ],
            ),
          )
        ],
      ),
    );
  }
}
