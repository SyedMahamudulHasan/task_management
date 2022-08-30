import 'package:get/get.dart';
import 'package:task_management/utils/constent.dart';

class DataService extends GetConnect implements GetxService {
  Future<Response> getData(String uri) async {
    Response response = await get(
      "http://127.0.0.1:8082/gettasks",
      headers: {'Content-Type': 'applications/json; charset=UTF-8'},
    );

    print(response.statusCode);

    return response;
  }

  Future<Response> postData(String uri, dynamic body) async {
    Response response = await post(
      AppConstants.base_url + uri,
      body,
      headers: {'Content-Type': 'applications/json; charset=UTF-8'},
    );

    print(response.statusCode);

    return response;
  }
}
