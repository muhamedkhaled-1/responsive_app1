import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_app1/widgets/my_card_view.dart';
import 'package:responsive_app1/widgets/quick_invoice.dart';

import 'all_expenses.dart';
import 'custom_drawer.dart';
import 'income_section.dart';

class DesktopDashboard extends StatelessWidget {
  const DesktopDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          Expanded(child: CustomDrawer()),
          Expanded(
            flex: 3,
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            AllExpenses(),
                            SizedBox(height: 24,),
                            QuickInvoice(),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                             MyCardView(),
                            IncomeSection(),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      );
  }
}
