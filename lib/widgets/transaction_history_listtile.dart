import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_app1/models/transaction_history_model.dart';
import 'package:responsive_app1/utlis/styles.dart';

class TransactionHistoryListtile extends StatelessWidget {
  const TransactionHistoryListtile({super.key, required this.transactionHistoryModel});
  final TransactionHistoryModel transactionHistoryModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xFFFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(transactionHistoryModel.title,style: AppStyles.styleMedium16,),
        subtitle: Text(transactionHistoryModel.date,style: AppStyles.styleMedium16.copyWith(color: Color(0xffAAAAAA)),),
        trailing: Text(transactionHistoryModel.price,style: AppStyles.styleSemiBold20.copyWith(
          color: transactionHistoryModel.isWithdrawal?Color(0xFFF3735E):Color(0xFF7CD87A)
        ),
        ),
      ),
    );
  }
}
