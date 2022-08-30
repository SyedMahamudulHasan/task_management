import 'dart:convert';
import 'package:get/get.dart';
import 'package:task_management/services/service.dart';
import 'package:task_management/utils/constent.dart';

class DataController extends GetxController {
  DataService _dataService = DataService();
  bool _isLoading = false;

  List<dynamic> _myData = [];

  bool get isLoading => _isLoading;
  List<dynamic> get myData => _myData;

  Future<void> getData() async {
    _isLoading = true;
    Response response = await _dataService.getData(AppConstants.get_tasks);
    print("status code:" + response.statusCode.toString());

    if (response.statusCode == 200) {
      //_myData.add(jsonDecode(response.body));
      // Map<String, dynamic> map = json.decode(response.body);
      // _myData = map['task_name'];
      _myData = response.body;
      print('we got the data : ${_myData}');
      update();
    } else {
      print('We didnot get any data');
    }
    _isLoading = false;
  }

  Future<void> getSingleData() async {
    _isLoading = true;
    Response response = await _dataService.getData(AppConstants.get_tasks);
    print("status code:" + response.statusCode.toString());

    if (response.statusCode == 200) {
      _myData = response.body;
      print('we got the data : ${_myData}');
      update();
    } else {
      print('We didnot get any data');
    }
    _isLoading = false;
  }

  Future<void> postData(String task, String taskDetails) async {
    _isLoading = true;
    Response response = await _dataService.postData(AppConstants.post_task, {
      'task_name': task,
      'task_detail': taskDetails,
    });
    if (response.statusCode == 200) {
      print('we post the data');
      update();
    } else {
      print('We didnot post any data');
    }
  }
}
