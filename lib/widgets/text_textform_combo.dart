import 'package:flutter/cupertino.dart';

import '../utlis/styles.dart';
import 'custom_text_field.dart';

class TextTextformCombo extends StatelessWidget {
  const TextTextformCombo({super.key, required this.text, required this.hintText});
  final String text,hintText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text,style: AppStyles.styleMedium16,),
        SizedBox(height: 12,),
        CustomTextField(
          hintText: hintText,
        ),
      ],
    );
  }
}
