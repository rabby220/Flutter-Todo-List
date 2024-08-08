import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/edit_todo_controller.dart';

class EditTodoView extends GetView<EditTodoController> {
  const EditTodoView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EditTodoView'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: controller.titleController,
                // onChanged: controller.titleController.onChanged,
                decoration: const InputDecoration(
                  labelText: 'Title',
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: controller.descriptionController,
                decoration: const InputDecoration(
                  labelText: 'Description',
                ),
              ),
              const SizedBox(height: 16),
              MaterialButton(
                color: Colors.deepOrange,
                onPressed: () {
                  controller.updateTodo(Get.arguments);
                  Get.offAllNamed('/home');
                },
                child: const Text('Update Todo'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
