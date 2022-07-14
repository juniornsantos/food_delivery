import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';

class RecommenededFoodDetail extends StatelessWidget {
  const RecommenededFoodDetail({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            child: Text(
              "Mais uma noite como todas as anteriores. Pego minha caneca de café cheia, acendo meu ultimo cigarro e corro pra velha janela do quarto. Observo a noite fria e chuvosa, até parece confortável por um momento, se não fossem as dezenas de preocupações que me desmotivam a cada dia.Penso em você, mesmo sabendo o quão longe está de mim, sinto aquele amor que continua a me desgraçar intensamente a cada dia, e penso quando enfim poderei te ter comigo. Sei lá, o café chega ao fim e trago a ultima ponta, nada muda. É como se eu fosse passar por isso mais uns longos anos a frente. Cada vez mais tenho a sensação de incertezas e inseguranças e tento me manter firme apesar disso. Algumas coisas parecem dar certo e maioria não, tipo você. Então após 10 minutos refletindo, largo tudo, fecho a janela e volto pro meu mundo dentro do quarto. Não sei até quando, não sei o porquê, só sei que tá tudo tão errado e quero me livrar disso o quanto antes. E tu não tem nem ideia do quanto, amor meu. Mais uma noite como todas as anteriores. Pego minha caneca de café cheia, acendo meu ultimo cigarro e corro pra velha janela do quarto. Observo a noite fria e chuvosa, até parece confortável por um momento, se não fossem as dezenas de preocupações que me desmotivam a cada dia.Penso em você, mesmo sabendo o quão longe está de mim, sinto aquele amor que continua a me desgraçar intensamente a cada dia, e penso quando enfim poderei te ter comigo. Sei lá, o café chega ao fim e trago a ultima ponta, nada muda. É como se eu fosse passar por isso mais uns longos anos a frente. Cada vez mais tenho a sensação de incertezas e inseguranças e tento me manter firme apesar disso. Algumas coisas parecem dar certo e maioria não, tipo você. Então após 10 minutos refletindo, largo tudo, fecho a janela e volto pro meu mundo dentro do quarto. Não sei até quando, não sei o porquê, só sei que tá tudo tão errado e quero me livrar disso o quanto antes. E tu não tem nem ideia do quanto, amor meu. Mais uma noite como todas as anteriores. Pego minha caneca de café cheia, acendo meu ultimo cigarro e corro pra velha janela do quarto. Observo a noite fria e chuvosa, até parece confortável por um momento, se não fossem as dezenas de preocupações que me desmotivam a cada dia.Penso em você, mesmo sabendo o quão longe está de mim, sinto aquele amor que continua a me desgraçar intensamente a cada dia, e penso quando enfim poderei te ter comigo. Sei lá, o café chega ao fim e trago a ultima ponta, nada muda. É como se eu fosse passar por isso mais uns longos anos a frente. Cada vez mais tenho a sensação de incertezas e inseguranças e tento me manter firme apesar disso. Algumas coisas parecem dar certo e maioria não, tipo você. Então após 10 minutos refletindo, largo tudo, fecho a janela e volto pro meu mundo dentro do quarto. Não sei até quando, não sei o porquê, só sei que tá tudo tão errado e quero me livrar disso o quanto antes. E tu não tem nem ideia do quanto, amor meu."

            ),
          )
          
        ],
      ),
      
    );
  }
}