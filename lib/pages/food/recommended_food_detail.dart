import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/exandable_text_widget.dart';

class RecommenededFoodDetail extends StatelessWidget {
  const RecommenededFoodDetail({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(                
                
                child: Center(child: BigText(size: Dimensions.font26, text: "Title App Bar")),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20)
                  )
                ),

              )
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/food2.png",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child: ExpandableTextWidget(text: "Mais uma noite como todas as anteriores. Pego minha caneca de caf?? cheia, acendo meu ultimo cigarro e corro pra velha janela do quarto. Observo a noite fria e chuvosa, at?? parece confort??vel por um momento, se n??o fossem as dezenas de preocupa????es que me desmotivam a cada dia.Penso em voc??, mesmo sabendo o qu??o longe est?? de mim, sinto aquele amor que continua a me desgra??ar intensamente a cada dia, e penso quando enfim poderei te ter comigo. Sei l??, o caf?? chega ao fim e trago a ultima ponta, nada muda. ?? como se eu fosse passar por isso mais uns longos anos a frente. Cada vez mais tenho a sensa????o de incertezas e inseguran??as e tento me manter firme apesar disso. Algumas coisas parecem dar certo e maioria n??o, tipo voc??. Ent??o ap??s 10 minutos refletindo, largo tudo, fecho a janela e volto pro meu mundo dentro do quarto. N??o sei at?? quando, n??o sei o porqu??, s?? sei que t?? tudo t??o errado e quero me livrar disso o quanto antes. E tu n??o tem nem ideia do quanto, amor meu. Mais uma noite como todas as anteriores. Pego minha caneca de caf?? cheia, acendo meu ultimo cigarro e corro pra velha janela do quarto. Observo a noite fria e chuvosa, at?? parece confort??vel por um momento, se n??o fossem as dezenas de preocupa????es que me desmotivam a cada dia.Penso em voc??, mesmo sabendo o qu??o longe est?? de mim, sinto aquele amor que continua a me desgra??ar intensamente a cada dia, e penso quando enfim poderei te ter comigo. Sei l??, o caf?? chega ao fim e trago a ultima ponta, nada muda. ?? como se eu fosse passar por isso mais uns longos anos a frente. Cada vez mais tenho a sensa????o de incertezas e inseguran??as e tento me manter firme apesar disso. Algumas coisas parecem dar certo e maioria n??o, tipo voc??. Ent??o ap??s 10 minutos refletindo, largo tudo, fecho a janela e volto pro meu mundo dentro do quarto. N??o sei at?? quando, n??o sei o porqu??, s?? sei que t?? tudo t??o errado e quero me livrar disso o quanto antes. E tu n??o tem nem ideia do quanto, amor meu. Mais uma noite como todas as anteriores. Pego minha caneca de caf?? cheia, acendo meu ultimo cigarro e corro pra velha janela do quarto. Observo a noite fria e chuvosa, at?? parece confort??vel por um momento, se n??o fossem as dezenas de preocupa????es que me desmotivam a cada dia.Penso em voc??, mesmo sabendo o qu??o longe est?? de mim, sinto aquele amor que continua a me desgra??ar intensamente a cada dia, e penso quando enfim poderei te ter comigo. Sei l??, o caf?? chega ao fim e trago a ultima ponta, nada muda. ?? como se eu fosse passar por isso mais uns longos anos a frente. Cada vez mais tenho a sensa????o de incertezas e inseguran??as e tento me manter firme apesar disso. Algumas coisas parecem dar certo e maioria n??o, tipo voc??. Ent??o ap??s 10 minutos refletindo, largo tudo, fecho a janela e volto pro meu mundo dentro do quarto. N??o sei at?? quando, n??o sei o porqu??, s?? sei que t?? tudo t??o errado e quero me livrar disso o quanto antes. E tu n??o tem nem ideia do quanto, amor meu."),
                  margin: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
                )
              ],
            )
          )          
        ],
      ),

      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20*2.5,
              right: Dimensions.width20*2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10

            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor:Colors.white, 
                    backgroundColor: AppColors.mainColor,
                    icon:Icons.remove
                ),
                BigText(text: "R\$12.88 "+" X "+" 0 ", color: AppColors.mainblackColor, size: Dimensions.font26,),
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor:Colors.white, 
                    backgroundColor: AppColors.mainColor,
                    icon:Icons.add
                ),
              ],
            ),
          ),

          Container(
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
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,

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


        ],

      ),
      
    );
  }
}