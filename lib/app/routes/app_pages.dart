import 'package:get/get.dart';

import '../modules/create_todo/bindings/create_todo_binding.dart';
import '../modules/create_todo/views/create_todo_view.dart';
import '../modules/edit_todo/bindings/edit_todo_binding.dart';
import '../modules/edit_todo/views/edit_todo_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.CREATE_TODO;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_TODO,
      page: () => const CreateTodoView(),
      binding: CreateTodoBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_TODO,
      page: () => const EditTodoView(),
      binding: EditTodoBinding(),
    ),
  ];
}
