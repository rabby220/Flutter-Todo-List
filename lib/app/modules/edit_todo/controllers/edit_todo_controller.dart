import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:testapp/app/data/constant/constant.dart';
import 'package:testapp/app/modules/home/controllers/home_controller.dart';
import 'package:testapp/app/utils/user_message.dart';

class EditTodoController extends GetxController {
  ///User input Controller
  TextEditingController updateTitleController = TextEditingController();
  TextEditingController updateDescriptionController = TextEditingController();

  // HomeController homeController = Get.put(HomeController());

  RxBool isLoading = false.obs;
  Future<void> updateTask({
    required String taskId,
    required String title,
    required String description,
    required bool isCompleted,
  }) async {
    isLoading.value = true;

    try {
      final response = await http.put(
        Uri.parse("$baseUrl/$taskId"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({
          "title": title,
          "description": description,
          "is_completed": isCompleted,
        }),
      );

      if (response.statusCode == 200) {
        HomeController homeController = Get.put(HomeController());
        await homeController.fetchTodos();
        UserMessage.successMessage(message: 'Task updated successfully');
      } else {
        throw UserMessage.errorMessage(message: 'Failed to Update Task');
      }
    } catch (e) {
      throw UserMessage.errorMessage(message: e.toString());
    } finally {
      isLoading.value = false;
    }
  }
}

/*


 try {
     */
/* final response = await http.put(
        Uri.parse('$baseUrl/$taskId'),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({
          "title": title,
          "description": description,
          "is_completed": isCompleted,
        }),
      );

      if (response.statusCode == 200) {
        UserMessage.successMessage(message: 'Task updated successfully.');
      } else {
        UserMessage.errorMessage(message: 'Failed to update task');
      }
    } catch (e) {
      UserMessage.errorMessage(message: 'An error occurred: $e');
    }
  }

}
*/
