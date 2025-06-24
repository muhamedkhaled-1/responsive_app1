import 'package:flutter/cupertino.dart';
import 'package:responsive_app1/utlis/styles.dart';

import 'LatestTransactionView.dart';
import 'latest_transaction_list_tile.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Latest Transaction',style: AppStyles.styleMedium16,),
        SizedBox(height: 16,),
        Latesttransactionview(),
      ],
    );
  }
}
