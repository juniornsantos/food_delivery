
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_column.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/exandable_text_widget.dart';
import 'package:food_delivery/widgets/icon_and_text_widget.dart';
import 'package:food_delivery/widgets/small_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //imagem no fundo
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popolarFoodImgSize,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/image/food2.png"
                  )
                )
              ),

            )
          ),
          //icones por tras da imagem
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.arrow_back_ios),
                AppIcon(icon: Icons.shopping_cart_outlined)

              ],

            )
          ),
          //introducao da comida
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.popolarFoodImgSize-20,
            child: Container(
              padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, top: Dimensions.height20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(Dimensions.radius20),
                  topLeft: Radius.circular(Dimensions.radius20)
                ),
                color: Colors.white
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(text:"Comida Chinesa"),
                  SizedBox(height: Dimensions.height20,),
                  BigText(text: "Introdu????o"),
                  SizedBox(height: Dimensions.height20,),
                  Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableTextWidget(
                        text: "Mais uma noite como todas as anteriores. Pego minha caneca de caf?? cheia, acendo meu ultimo cigarro e corro pra velha janela do quarto. Observo a noite fria e chuvosa, at?? parece confort??vel por um momento, se n??o fossem as dezenas de preocupa????es que me desmotivam a cada dia.Penso em voc??, mesmo sabendo o qu??o longe est?? de mim, sinto aquele amor que continua a me desgra??ar intensamente a cada dia, e penso quando enfim poderei te ter comigo. Sei l??, o caf?? chega ao fim e trago a ultima ponta, nada muda. ?? como se eu fosse passar por isso mais uns longos anos a frente. Cada vez mais tenho a sensa????o de incertezas e inseguran??as e tento me manter firme apesar disso. Algumas coisas parecem dar certo e maioria n??o, tipo voc??. Ent??o ap??s 10 minutos refletindo, largo tudo, fecho a janela e volto pro meu mundo dentro do quarto. N??o sei at?? quando, n??o sei o porqu??, s?? sei que t?? tudo t??o errado e quero me livrar disso o quanto antes. E tu n??o tem nem ideia do quanto, amor meu."
                      )
                    )
                  )
                ],
              ),
            )
          )
          //aumentando e diminutindo o texo da introducao

        ],
      ),

      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(top: Dimensions.height30, bottom: Dimensions.height30, left: Dimensions.width20, right: Dimensions.width20),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroudColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius20*2),
            topRight: Radius.circular(Dimensions.radius20*2)
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(top: Dimensions.radius20, bottom: Dimensions.height20, left:Dimensions.width20, right: Dimensions.width20 ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white
              ),
              child: Row(
                children: [
                  Icon(Icons.remove, color: AppColors.singColor,),
                  SizedBox(width: Dimensions.width10/2,),
                  BigText(text: "0"),
                  SizedBox(width: Dimensions.width10/2,),
                  Icon(Icons.add, color: AppColors.singColor,)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: Dimensions.radius20, bottom: Dimensions.height20, left:Dimensions.width20, right: Dimensions.width20 ),
              child: BigText(text: "\$10 | Add to cart", color: Colors.white,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: AppColors.mainColor
              ),
            ),
          ],
        ),

      ),

    );
  }
}