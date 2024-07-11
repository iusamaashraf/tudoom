import 'package:get/get.dart';

class CreateRoomController extends GetxController {
  RxString broadcastCamers = 'Everyone'.obs;
  RxString postMedia = 'Everyone'.obs;
  RxString sendMessages = 'Everyone'.obs;

  RxInt radioValue = 0.obs;
}
