import 'package:flutter/cupertino.dart';
import 'package:responsive_app1/widgets/custom_container.dart';

import '../utlis/size_config.dart';
import 'detailed_income_chart.dart';
import 'income_chart.dart';
import 'income_details.dart';
import 'income_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left:24,top: 40),
        child: CustomContainer(
          child: Column(
            children: [
              IncomeHeader(),
              width >= SizeConfig.desktop && width < 1550
                  ? Padding(
                    padding: EdgeInsets.all(16),
                    child: Expanded(child: DetailedIncomeChart()),
                  )
                  : Row(
                children: [
                  Expanded(child: IncomeChart()),
                  Expanded(
                      flex: 2,
                      child: IncomeDetails()),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
