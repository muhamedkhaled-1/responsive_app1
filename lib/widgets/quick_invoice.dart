import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_app1/utlis/styles.dart';
import 'package:responsive_app1/widgets/custom_container.dart';
import 'package:responsive_app1/widgets/quick_invoice_header.dart';

import 'custom_text_field.dart';
import 'latest_transaction.dart';
import 'latest_transaction_form.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuickInvoiceHeader(),
            SizedBox(height: 24,),
            LatestTransaction(),
            SizedBox(height: 24,),
            Divider(
              height: 24,
              color: Color(0xffF1F1F1),
            ),
            SizedBox(height: 24,),
            LatestTransactionForm()
            

          ],
        ),
      ),
    );
  }
}
