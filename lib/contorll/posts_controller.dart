import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:getx_api/model/programs.dart';

class ApiController extends GetxController {

  var isLoading = false.obs;
  var getDataModel = Programs().obs;

  Dio dio() {
    return Dio(BaseOptions(headers: {
      // Api Header and Key
      'token':
          'Your Key here',
      'Accept': 'application/json',
    }));
  }

  getDataFromApi() async {
    isLoading.value = true;
    int id = 23;
    try {
      var response =
          await dio().get('http://api.alboraq-pal.com/api/program');
      getDataModel.value = Programs.fromJson(response.data);
      print(response);
      isLoading.value = false;
    } catch (e) {
      print(e);
    }
  }
}
