import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Obx(
          () => DropdownButton(
              iconSize: 24.0,
              isDense: true,
              iconEnabledColor: Colors.green,
              elevation: 5,
              padding: const EdgeInsets.all(15.0),
              icon: const Icon(Icons.arrow_drop_down_circle),
              value: controller.selectedDropdownValue.value == ""
                  ? null
                  : controller.selectedDropdownValue.value,
              hint: const Text('Select Item'),
              items: const [
                DropdownMenuItem(value: '1', child: Text('Item 1')),
                DropdownMenuItem(value: '2', child: Text('Item 2')),
                DropdownMenuItem(value: '3', child: Text('Item 3')),
              ],
              onChanged: (newValue) {
                controller.updatedDropdownValue(newValue.toString());
              }),
        ),
      ),
    );
  }
}
