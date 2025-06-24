import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_app1/widgets/text_textform_combo.dart';

import '../utlis/styles.dart';
import 'custom_button.dart';
import 'custom_text_field.dart';

class LatestTransactionForm extends StatelessWidget {
  const LatestTransactionForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: TextTextformCombo(text: 'Customer name', hintText: 'Type customer name')),
            SizedBox(width: 16,),
            Expanded(child: TextTextformCombo(text: 'Customer Email', hintText: 'Type customer email'))
          ],
        ),
        SizedBox(height: 24,),
        Row(
          children: [
            Expanded(child: TextTextformCombo(text: 'Item name', hintText: 'Type customer name')),
            SizedBox(width: 16,),
            Expanded(child: TextTextformCombo(text: 'Item mount', hintText: 'USD'))
          ],
        ),
        SizedBox(height: 24,),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                text: 'Add more details',
                textcolor: Color(0xff4EB7F2),
                backgroundcolor: Colors.white,
              ),
            ),
            SizedBox(width: 24,),
            Expanded(
              child: CustomButton(
                text: 'Send Money',
                textcolor: Colors.white,
              ),
            ),
          ],
        )
      ],
    );
  }
}
