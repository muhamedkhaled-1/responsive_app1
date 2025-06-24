import 'package:flutter/cupertino.dart';
import 'package:responsive_app1/widgets/quick_invoice.dart';

import 'all_expenses.dart';
import 'custom_container.dart';
import 'income_chart.dart';
import 'income_details.dart';
import 'income_header.dart';
import 'my_card_view.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
          children: [
            AllExpenses(),
            SizedBox(height: 14,),
            QuickInvoice(),
            SizedBox(height: 14,),
            MyCardView(),
            SizedBox(height: 14,),
            Padding(
              padding: const EdgeInsets.only(left:24,top: 40),
              child: CustomContainer(
                child: Column(
                  children: [
                    IncomeHeader(),
                    Row(
                      children: [
                        Expanded(child: IncomeChart()),
                        Expanded(flex:2,child: IncomeDetails()),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        )
    );
  }
}
