import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/icon_and_text_widget.dart';
import 'package:food_delivery/widgets/small_text.dart';

class AppColumn extends StatelessWidget {

  final String text;


  const AppColumn({ Key? key, required this.text }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text, size: Dimensions.font26,),
        SizedBox(height: Dimensions.height10,),
        Row(
          children: [
            Wrap(
              // arrumar as estrelas para vim do banco
              children: List.generate(5, (index)  { return Icon(Icons.star, color: AppColors.mainColor, size: 15,);}),
            ),
            SizedBox(width: 10,),
            SmallText(text: "4.5"),
            SizedBox(width: 10,),
            SmallText(text: "1287"),
            SizedBox(width: 10,),
            SmallText(text: "Comentarios"),
          ],
        ),
        SizedBox( height: Dimensions.height20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(icon: Icons.circle_sharp, 
              text: "Normal",
              IconColor: AppColors.iconColor1
            ),

            IconAndTextWidget(icon: Icons.location_on, 
              text: "1.8km",
              IconColor: AppColors.mainColor
            ),

            IconAndTextWidget(icon: Icons.access_time_rounded, 
              text: "38min",
              IconColor: AppColors.iconColor2
            )
          ],
        )
      ],
    );
  }
}