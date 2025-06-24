import 'package:flutter/cupertino.dart';
import 'package:responsive_app1/models/transaction_history_model.dart';
import 'package:responsive_app1/widgets/transaction_history_listtile.dart';

class TransactionHistoryListView extends StatelessWidget {
   TransactionHistoryListView({super.key});
  final List items=[
    TransactionHistoryModel(true, title: 'Cash Withdrawal', date: '13 Apr, 2022 ', price: r'$20,129'),
    TransactionHistoryModel(false, title: 'Landing Page project', date: '13 Apr, 2022 ', price: r'$2000'),
    TransactionHistoryModel(false, title: 'Juni Mobile App project', date: '13 Apr, 2022 ', price: r'$20,129'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => TransactionHistoryListtile(transactionHistoryModel: e),).toList(),
    );
    // return ListView.builder(
    //   shrinkWrap: true,
    //   itemCount: items.length,
    //   itemBuilder: (context, index) {
    //   return TransactionHistoryListtile(transactionHistoryModel: items[index],);
    // },);
  }
}
