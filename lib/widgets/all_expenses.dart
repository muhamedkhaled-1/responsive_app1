import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_app1/widgets/all_expenses_item.dart';
import 'package:responsive_app1/widgets/quick_invoice.dart';

import 'all_expenses_header.dart';
import 'all_expenses_list_view.dart';
import 'custom_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:50),
      child: CustomContainer(
        child:   Column(
          children: [
            AllExpensesHeader(),
            AllExpensesListView(),


          ],
        ),
      ),
    );
  }

}
