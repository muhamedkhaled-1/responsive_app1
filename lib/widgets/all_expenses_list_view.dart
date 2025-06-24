import 'package:flutter/cupertino.dart';
import 'package:responsive_app1/widgets/all_expenses_item.dart';

import '../models/expenses_item_model.dart';
import '../utlis/assets.dart';

class AllExpensesListView extends StatefulWidget {
  const AllExpensesListView({super.key});

  @override
  State<AllExpensesListView> createState() => _AllExpensesListViewState();
}

class _AllExpensesListViewState extends State<AllExpensesListView> {
  final items = [
     ExpensesItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
      ),
     ExpensesItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022',
       ),
     ExpensesItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',)
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
children: items.map((e) => AllExpensesItem(expensesItemModel: e)).toList(),
    );
  }
}
