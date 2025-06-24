import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_app1/widgets/custom_container.dart';
import 'package:responsive_app1/widgets/quick_invoice.dart';

import 'all_expenses.dart';
import 'custom_drawer.dart';
import 'income_chart.dart';
import 'income_details.dart';
import 'income_header.dart';
import 'income_section.dart';
import 'my_card_view.dart';

class TabletDashboard extends StatelessWidget {
  const TabletDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          Expanded(child: CustomDrawer()),
          SizedBox(height: 32,),
          Expanded(
            flex: 3,
            child: SingleChildScrollView(
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
            ),
          ),
        ],
    );
  }
}
