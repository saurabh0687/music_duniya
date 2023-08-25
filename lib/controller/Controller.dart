import 'package:get/get.dart';

class ExampleController extends GetxController{
 RxList<String> fruitsList=['Apple','Mango','Banana','Papaya'].obs;
  RxList<dynamic> fav=[].obs;
addFav(String value){
 fav.add(value);
}
removeFav(String value)
{
  fav.remove(value);
}

}