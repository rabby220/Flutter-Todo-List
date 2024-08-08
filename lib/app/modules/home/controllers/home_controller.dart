import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:testapp/app/data/model/todo_model.dart';
import '../../../data/constant/constant.dart';

class HomeController extends GetxController {
  Future<List<Items>> fetchData() async {
    final response = await http.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      TodoModel todoModel = TodoModel.fromJson(jsonResponse);
      return todoModel.items ?? []; // Return the list of items
    } else {
      throw Exception("Failed to load data");
    }
  }

  //Delete Task
  Future<String> deleteTask(String id) async {
    final response = await http.delete(Uri.parse('$baseUrl/$id'));
    if (response.statusCode == 200) {
      return "Delete task successfully";
    } else {
      return "Failed to delete task";
    }
  }
}
