import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:testapp/app/utils/user_message.dart';
import '../../../data/constant/constant.dart';
import '../../../data/model/todo_model.dart';

class CreateTodoController extends GetxController {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();



  Future<TodoModel> createTask() async {
    try {
      final response = await http.post(
        Uri.parse(baseUrl),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, dynamic>{
          'title': titleController.text,
          'description': descriptionController.text,
          "is_completed": false
        }),
      );

      if (response.statusCode == 201) {

        Map<String, dynamic> jsonData = jsonDecode(response.body);

        return TodoModel.fromJson(jsonData);
      } else {
        throw UserMessage.errorMessage(message: 'Failed to create Task');
      }
    } catch (e) {
      throw UserMessage.errorMessage(message: e.toString());
    }
  }

  @override
  void onClose() {
    super.onClose();
    titleController;
    descriptionController;

  }
}
