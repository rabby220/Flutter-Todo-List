import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:testapp/app/data/model/todo_model.dart';
import 'package:testapp/app/utils/app_colors.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _buildTaskCreateButton(),
      appBar: AppBar(
        actions: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(right: 35.0),
              child: PopupMenuButton(
                itemBuilder: (_) {
                  return [
                    PopupMenuItem(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text('Theme'),
                          ValueListenableBuilder(
                            valueListenable: Hive.box('TodoBox').listenable(),
                            builder: (_, box, child) {
                              final isDark =
                                  box.get('isDark', defaultValue: false);
                              return Switch(
                                value: isDark,
                                onChanged: (value) {
                                  box.put('isDark', value);
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ];
                },
              ),
            ),
          ),
        ],
        automaticallyImplyLeading: false,
        title: const Text("DashBoard"),
      ),
      body: Obx(
        () {
          if (controller.isLoading.value) {
            return Center(
              child: Center(
                child: SizedBox(
                  height: 80.0,
                  width: 80.0,
                  child: LoadingIndicator(
                    indicatorType: Indicator.ballRotateChase,
                    colors: controller.rainBowColor,
                  ),
                ),
              ),
            );
          }

          if (controller.todoItems.isEmpty) {
            return const Center(child: Text("No tasks available"));
          }

          return ListView.separated(
            shrinkWrap: true,
            padding: const EdgeInsets.all(15.0),
            itemCount: controller.todoItems.length,
            itemBuilder: (_, index) {
              Items item = controller.todoItems[index];
              return ListTile(
                contentPadding: const EdgeInsets.all(25.0),
                title: Center(
                  child: Text(
                    item.title ?? "",
                  ),
                ),
                subtitle: Text(
                  item.description ?? "",
                ),
                trailing: _buildPopupMenuButton(context, controller, item),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const Divider(
                color: AppColors.redColor,
              );
            },
          );
        },
      ),
    );
  }
}

///build a Button When User will create Task then click the button.
Widget _buildTaskCreateButton() {
  return FloatingActionButton.extended(
    onPressed: () {
      Get.toNamed('/create-todo');
    },
    label: const Text('Add Task'),
  );
}

///Edit and Update Button
Widget _buildPopupMenuButton(
    BuildContext context, HomeController controller, Items? item) {
  return PopupMenuButton(
    itemBuilder: (context) {
      return controller.menuButton
          .map(
            (element) => PopupMenuItem(
              value: element,
              child: Text(element),
            ),
          )
          .toList();
    },
    onSelected: (value) {
      if (value == "Edit") {
        Get.toNamed(
          '/edit-todo',
          arguments: {
            "title": item?.title ?? "",
            "description": item?.description ?? "",
            "id": item?.sId ?? "",
            "isCompleted": item?.isCompleted ?? false,
          },
        );
      } else {
        controller.deleteTask(item?.sId ?? "");
      }
    },
  );
}
