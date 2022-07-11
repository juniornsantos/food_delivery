//sempre que tiver a funcao Dimensions nas minhas paginas
//a responsividade vem daqui

import 'package:get/get.dart';
class Dimensions {

  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double pageView = screenHeight/2.64;

  static double pageViewContainer = screenHeight/3.84;
  static double pageViewTextContainer = screenHeight/7.03;

  // aqui torno responsivo pela a altura - padding e margin 
  static double height10 = screenHeight/84.4;
  static double height15 = screenHeight/56.27;
  static double height20 = screenHeight/42.2;
  static double height30 = screenHeight/28.13;
  static double height45 = screenHeight/18.76;

  // aqui torno responsivo pela a latgura - padding e margin 
  static double width10 = screenHeight/84.4;
  static double width15 = screenHeight/56.27;
  static double width20 = screenHeight/42.2;
  static double width30 = screenHeight/28.13;


  static double font20 = screenHeight/42.2;

  // aqui torno responsivo o raio das bordas do codigo
  static double radius15 = screenHeight/56.27;
  static double radius20 = screenHeight/42.2;
  static double radius30 = screenHeight/28.13;

  //tamanho do icone de pesquisa (search)

  static double iconSize24 = screenHeight/35.17;

  // tamanhos do listview - 390 largura do iphone 12
  
  static double listViewImgSize = screenWidth/3.25;
  static double listViewTextContSize = screenWidth/3.9;


  // Dimensoes da tela popular_food_detail
  

}

// Dimensoes da tela popular_food_detail

// parei no tempo 3:17:56 