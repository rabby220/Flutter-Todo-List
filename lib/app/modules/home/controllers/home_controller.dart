import 'package:get/get.dart';

class HomeController extends GetxController {

  var selectedDropdownValue = "".obs;

  void updatedDropdownValue(String value) {
    selectedDropdownValue.value = value;
  }

}
