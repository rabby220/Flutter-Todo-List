import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:testapp/app/utils/app_text.dart';
import '../../../responsive/responsive_ui.dart';
import '../controllers/create_todo_controller.dart';

class CreateTodoView extends GetView<CreateTodoController> {
  const CreateTodoView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Task'),
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

                MaterialButton(
                  onPressed: () {},
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

Widget _buildTextField({
  required TextEditingController textEditingController,
  required String labelText,
  required String hintText,
  required int maxLength,
}) {
  return TextField(
    keyboardType: TextInputType.text,
    maxLength: maxLength,
    style: AppText.titleAndSubtitleInputTextStyle,
    controller: textEditingController,
    decoration: InputDecoration(
      labelText: labelText,
      alignLabelWithHint: true,
      counterText: '',
      hintFadeDuration: const Duration(milliseconds: 500),
      contentPadding: const EdgeInsets.all(20.0),
      labelStyle: AppText.labelAndHintTextStyle,
      hintStyle: AppText.labelAndHintTextStyle,
      hintText: hintText,
    ),
  );
}
