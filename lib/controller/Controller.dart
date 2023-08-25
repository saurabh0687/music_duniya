import 'package:get/get.dart';

class ExampleController extends GetxController{
RxBool notifications=false.obs;
SetNotifications(bool value){
  notifications.value=value;

}

}