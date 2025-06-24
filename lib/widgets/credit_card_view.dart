import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_app1/utlis/styles.dart';

import '../generated/assets.dart';

class CreditCardView extends StatelessWidget {
  const CreditCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420/215,
      child: Container(
        decoration: ShapeDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(Assets.imagesMaskgroup)),
            color: const Color(0xFF4EB7F2),
            shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        )),
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text('Name Card',style: AppStyles.styleRegular16.copyWith(color: Colors.white54),),
                subtitle: Text('Syah Bandi',style: AppStyles.styleMedium20,),
                trailing: Icon(Icons.image_outlined),
              ),
              Expanded(child: SizedBox()),
              Padding(
                padding: const EdgeInsets.only(right: 16,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('0918 8124 0042 8129',style: AppStyles.styleSemiBold24.copyWith(color: Colors.white),),
                    SizedBox(height: 12,),
                    Text('12/20 - 124',style: AppStyles.styleRegular16.copyWith(color: Colors.white),),

                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
