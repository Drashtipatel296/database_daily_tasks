import 'package:database_daily_tasks/helper/db_helper.dart';
import 'package:get/get.dart';

class DbController extends GetxController{
  void initDB(){
    DbHelper.databaseHelper.initDatabase();
  }
  @override
  void onInit() {
    initDB();
    super.onInit();
  }

  void addRecords(){
    DbHelper.databaseHelper.insertData();
  }
}