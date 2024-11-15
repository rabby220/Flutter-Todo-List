import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../responsive/responsive_ui.dart';
import '../../../utils/app_icons.dart';
import '../../../utils/app_text.dart';
import '../../../utils/user_message.dart';
import '../controllers/edit_todo_controller.dart';

class EditTodoView extends GetView<EditTodoController> {
  const EditTodoView({super.key});
  @override
  Widget build(BuildContext context) {
    controller.updateTitleController.text = Get.arguments["title"];
    controller.updateDescriptionController.text = Get.arguments["description"];
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(AppIcons.backArrowIcon),
          onPressed: () {
            Get.offAndToNamed('/home');
          },
        ),
        title: const Text(AppText.updateTaskText),
      ),
      body: ResponsiveUi(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ///
                ///
                ///Update Title TextField
                ///
                ///
                _buildTextField(
                  textEditingController: controller.updateTitleController,
                  labelText: AppText.labelTitleCreateTaskText,
                  hintText: AppText.hintTitleUpdateTaskText,
                  maxLength: 25,
                ),

                const SizedBox(
                  height: 25.0,
                ),

                ///Description TextField
                _buildTextField(
                  textEditingController: controller.updateDescriptionController,
                  labelText: AppText.labelSubTitleCreateTaskText,
                  hintText: AppText.hintSubTitleUpdateTaskText,
                  maxLength: 50,
                ),

                const SizedBox(
                  height: 25.0,
                ),

                ElevatedButton(
                  onPressed: () async {
                    if (controller.updateTitleController.text.isEmpty) {
                      UserMessage.errorMessage(
                          message: "Update Title is Required");
                    } else if (controller.updateDescriptionController.text.isEmpty) {
                      UserMessage.errorMessage(
                          message: "Update Description is Required");
                    } else {
                      controller.updateTask(
                        taskId: Get.arguments["id"],
                        title: controller.updateTitleController.text,
                        description: controller.updateDescriptionController.text,
                        isCompleted: false,
                      );
                      Get.offNamed('/home');
                    }
                  },
                  child: const Text(AppText.updateTaskButtonText),
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
