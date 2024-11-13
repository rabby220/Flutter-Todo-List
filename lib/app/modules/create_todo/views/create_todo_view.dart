import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testapp/app/utils/app_text.dart';
import 'package:testapp/app/utils/user_message.dart';
import '../../../responsive/responsive_ui.dart';
import '../controllers/create_todo_controller.dart';

class CreateTodoView extends GetView<CreateTodoController> {
  const CreateTodoView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppText.createTaskText),
        centerTitle: true,
      ),
      body: ResponsiveUi(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ///Title TextField
                _buildTextField(
                  textEditingController: controller.titleController,
                  labelText: AppText.labelTitleCreateTaskText,
                  hintText: AppText.hintTitleCreateTaskText,
                  maxLength: 25,
                ),

                const SizedBox(
                  height: 25.0,
                ),

                ///Description TextField
                _buildTextField(
                  textEditingController: controller.descriptionController,
                  labelText: AppText.labelSubTitleCreateTaskText,
                  hintText: AppText.labelSubTitleCreateTaskText,
                  maxLength: 50,
                ),

                const SizedBox(
                  height: 25.0,
                ),

                ElevatedButton(
                  onPressed: () {
                    if (controller.titleController.text.isEmpty) {
                      UserMessage.errorMessage(message: "Title is Required");
                    } else if (controller.descriptionController.text.isEmpty) {
                      UserMessage.errorMessage(
                          message: "Description is Required");
                    } else {
                      controller.createTask();
                      controller.titleController.clear();
                      controller.descriptionController.clear();
                      UserMessage.successMessage(
                          message: "Task created successfully");
                      Get.toNamed('/home');
                    }
                  },
                  child: const Text(AppText.createTaskButtonText),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

///Build a TextField For user Create Task
Widget _buildTextField({
  required TextEditingController textEditingController,
  required String labelText,
  required String hintText,
  required int maxLength,
}) {
  return TextField(
    keyboardType: TextInputType.text,
    maxLength: maxLength,
    style: AppText.darkTitleAndSubtitleInputTextStyle,
    controller: textEditingController,
    decoration: InputDecoration(
      labelText: labelText,
      hintText: hintText,
    ),
  );
}
