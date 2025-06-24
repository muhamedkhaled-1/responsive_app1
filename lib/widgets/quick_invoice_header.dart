import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_app1/utlis/styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Quick Invoice',style: AppStyles.styleSemiBold20,),
        CircleAvatar(
          backgroundColor: Color(0xffFAFAFA),
          child: Icon(Icons.add,color: Color(0xff4EB7F2),),
        ),
      ],
    );
  }
}
