import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:testapp/app/data/constant/constant.dart';

class EditTodoController extends GetxController {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  Future<void> updateTodo(String id) async {
    await http.put(
      Uri.parse('$baseUrl/$id'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'title': titleController.text,
        'description': descriptionController.text,
      }),
    );
  }
}
