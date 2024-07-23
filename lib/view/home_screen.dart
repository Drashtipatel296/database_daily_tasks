import 'package:database_daily_tasks/controller/db_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    DbController dbController = Get.put(DbController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        dbController.addRecords();
      },child: const Icon(Icons.add),
      ),
    );
  }
}
