import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/controllers/popular_product_controller.dart';
import 'package:food_delivery/models/product_model.dart';
import 'package:food_delivery/utils/app_constants.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_column.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/icon_and_text_widget.dart';
import 'package:food_delivery/widgets/small_text.dart';
import 'package:get/get.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({ Key? key }) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {

  PageController pageController = PageController(viewportFraction: 0.85);
  //variavel que crola o valor da pagina no zoom
  var _currPageValue=0.0;
  double _scaleFactor=0.8;
  double _height=Dimensions.pageViewContainer;
  @override
  void initState (){
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!; 
      // print("Valor corrente "+_currPageValue.toString());
      });     
    });
  }

  @override
  void dispose(){
    pageController.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        //seção dos slidrs principais
        GetBuilder<PopularProductController>(builder: (popularProducts){
          return Container(
          // color: Colors.red,
            height: Dimensions.pageView,
            child: PageView.builder(
              controller: pageController,
              itemCount: popularProducts.popularProductList.length,
              itemBuilder: (context, position){
              return _buildPageItem(position, popularProducts.popularProductList[position]);
            }),
          );
        }),


        // seção dos dots
        GetBuilder<PopularProductController>(builder: (popularProducts){
          return DotsIndicator(
            // dotsCount: 6,
            dotsCount: popularProducts.popularProductList.length <= 0
              ? 1
              : popularProducts.popularProductList.length,
              //acho que isso é por conta da demora do servidor
            position: _currPageValue,
            decorator: DotsDecorator(
              activeColor: AppColors.mainColor,
              size: const Size.square(9.0),
              activeSize: const Size(18.0, 9.0),
              activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
            ),
          );
        }),


        

        //polular text
        SizedBox( height: Dimensions.height30,),        
        
        Container(
          margin: EdgeInsets.only(left: Dimensions.width30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(text: "Popular"), 
              SizedBox(width: Dimensions.width10,),
              Container(
                //deixando o ponto quase no centro dos dois textos
                margin: const EdgeInsets.only(bottom: 3),
                child: BigText(text: ".", color: Colors.black26),
              ),
              SizedBox(width: Dimensions.width10,),
              Container(
                //deixando o nome um pouquinho acima do ponto
                margin: const EdgeInsets.only(bottom: 2),
                child: SmallText(text: "Food Pairing",),
              )
            ],

          ),
        ),
        
        
        //Lista com as cominas e mas imagens
          // height: 900,
          ListView.builder(
            physics:NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount:10 ,
            itemBuilder: (context, index){
              return Container(
                margin: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, bottom: Dimensions.width10),
                child: Row(
                  children: [
                    //section da imagem
                    Container(
                      width:Dimensions.listViewImgSize,
                      height:Dimensions.listViewImgSize,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius20),
                        color: Colors.white38,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/image/food2.png"
                          )
                        )
                      ),
                    ),

                    //section dos textos
                    Expanded(
                      child: Container(
                        height: Dimensions.listViewTextContSize,
                        // width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(Dimensions.radius20),
                            bottomRight: Radius.circular(Dimensions.radius20)
                          ),
                          color: Colors.white
                        ),
                        child: Padding(
                          padding:EdgeInsets.only(left: Dimensions.width10, right: Dimensions.width10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BigText(text: "Nutrition fruit meal in China"),
                              SizedBox(height: Dimensions.height10,),
                              SmallText(text: "With Chinese Characteristics"),
                              SizedBox(height: Dimensions.height10,),
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
                          ),
                        ),
                      ),
                      
                    )
                                      
                  
                  ],
                ),

              );

          }),

      ],
    );
  }



  Widget _buildPageItem (int index, ProductModel popularProduct){
    //trabalhando o zoom usando a funcao intstate
    Matrix4 matrix = new Matrix4.identity();
    if (index == _currPageValue.floor()){
      var currScale = 1-(_currPageValue-index)*(1-_scaleFactor);
      var currTrans = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);

    }else if (index == _currPageValue.floor()+1){
      var currScale = _scaleFactor+(_currPageValue-index+1)*(1-_scaleFactor);
      var currTrans = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }else if (index == _currPageValue.floor()-1){
      var currScale = 1-(_currPageValue-index)*(1-_scaleFactor);
      var currTrans = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }else{
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, _height*(1-_scaleFactor)/2, 1);
    }


    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: Dimensions.pageViewContainer,
            margin: EdgeInsets.only(left:Dimensions.width10, right:Dimensions.width10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius30),
              color: index.isEven?Color(0xFF69c5df):Color(0xFF9294cc),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(AppConstants.BASE_URL +
                      AppConstants.UPLOAD_URL +
                      popularProduct.img!),
              )
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimensions.pageViewTextContainer,
              margin: EdgeInsets.only(left:Dimensions.width30, right:Dimensions.width30, bottom: Dimensions.height30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFe8e8e8),
                    blurRadius: 5.0,
                    offset: Offset(0, 5)
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-5, 0)
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(5, 0)
                  )
                ]
              ),
              child: Container(
                padding: EdgeInsets.only(top: Dimensions.height15, left: 15, right: 15),
                child: AppColumn(text: popularProduct.name!),
              ),

            ),
          )
        ],
      ),
    );
  }

}