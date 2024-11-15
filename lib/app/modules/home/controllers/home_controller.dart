import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:testapp/app/data/model/todo_model.dart';
import 'package:testapp/app/utils/app_colors.dart';
import '../../../data/constant/constant.dart';
import '../../../utils/user_message.dart';
class HomeController extends GetxController {


  @override
  void onInit() {
    super.onInit();
    fetchTodos();
  }
  ///
  ///
  /// TextEditing Controller for user Input
  ///
  //Title Controller for user Input
  final TextEditingController updateTitleController = TextEditingController();

  //Description Controller for user Input
  final TextEditingController updateDescriptionController =
      TextEditingController();


  RxBool isSwitchTheme = false.obs;
  RxList<Items> todoItems = <Items>[].obs;
  RxBool isLoading = false.obs;


  updateSwitch(bool value) {
    isSwitchTheme.value = value;

  }

  ///
  ///
  ///
  ///Fetch Data From APIs
  ///
  ///
  Future<void> fetchTodos() async {
    isLoading.value = true;
    try {
      final response = await http.get(Uri.parse(baseUrl));
      if (response.statusCode == 200) {
        Map<String, dynamic> data = jsonDecode(response.body);
        TodoModel todoModel = TodoModel.fromJson(data);
        todoItems.value = todoModel.items ?? [];
      } else {
        throw UserMessage.errorMessage(message: 'Failed to Load Task');
      }
    } catch (e) {
      throw UserMessage.errorMessage(message: e.toString());
    } finally {
      isLoading.value = false;
    }
  }




  ///
  ///Delete Data
  ///
  ///
  Future<void> deleteTask(String taskId) async {
    isLoading.value = true;
    try {
      final response = await http.delete(Uri.parse('$baseUrl/$taskId'));
      if (response.statusCode == 200) {
        todoItems.removeWhere((item) => item.sId == taskId);
        UserMessage.successMessage(message: 'Task deleted successfully');
      } else {
        throw UserMessage.errorMessage(message: 'Failed to delete Task');
      }
    } catch (e) {
      throw UserMessage.errorMessage(message: e.toString());
    } finally {
      isLoading.value = false;
    }
  }

  ///
  ///
  /// List of PopupMenu Buttons..
  ///
  ///
  List<String> menuButton = ["Edit", "Delete"];

  ///
  ///
  ///
  ///For loading Indicator Color
  ///
  ///
  List<Color> rainBowColor = [
    AppColors.redColor,
    AppColors.orangeColor,
    AppColors.yellowColor,
    AppColors.greenColor,
    AppColors.blueColor,
    AppColors.indigoColor,
    AppColors.purpleColor,
  ];
}
