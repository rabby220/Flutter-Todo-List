import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:testapp/app/data/model/todo_model.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Get.toNamed('/create-todo');
        },
        label: const Text('Add Todo'),
      ),
      appBar: AppBar(
          title: const Text("Fetch Data"),
          centerTitle: true,
          backgroundColor: Colors.orangeAccent),
      body: FutureBuilder<List<Items>>(
        future: controller.fetchData(),
        builder: (_, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return const Center(child: Text("An error occurred"));
          } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (_, index) {
                final item = snapshot.data![index];
                return ListTile(
                  trailing: PopupMenuButton(itemBuilder: (_) {
                    return [
                      PopupMenuItem(
                        onTap: () {
                          controller.deleteTask(item.sId.toString());
                        },
                        child: const Text("Delete"),
                      ),
                      PopupMenuItem(
                        onTap: () {
                          Get.toNamed('/edit-todo',
                              arguments: item.sId.toString());
                        },
                        child: const Text("Edit"),
                      ),
                    ];
                  }),
                  title: Text(item.title ?? ""),
                  subtitle: Text(item.description ?? ""),

                );
              },
            );
          } else {
            return const Center(child: Text("No data found"));
          }
        },
      ),
    );
  }
}
