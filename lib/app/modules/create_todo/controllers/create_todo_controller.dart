import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;


import '../../../data/constant/constant.dart';
class CreateTodoController extends GetxController {

  final titleController = TextEditingController();
  final descriptionController = TextEditingController();


  Future<void> createTodo() async {
    await http.post(Uri.parse(baseUrl),
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