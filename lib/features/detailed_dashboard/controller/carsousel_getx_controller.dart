import 'package:get/get.dart';

class CarsouselGetxController extends GetxController {
  // carousel indicator current Index
  final RxInt _currentIndex = 0.obs;
  RxInt get currentIndex => _currentIndex;

  //  update the carousel index
  updateIndex(int index) {
    _currentIndex.value = index;
  }
}
