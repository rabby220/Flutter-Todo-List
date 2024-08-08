import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/create_todo_controller.dart';

class CreateTodoView extends GetView<CreateTodoController> {
  const CreateTodoView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CreateTodoView'),
        centerTitle: true,
      ),
      body:  Center(
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

               onPressed: (){
                  controller. createTodo();
                  Get.offAllNamed('/home');
               },
                child: const Text('Create'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
