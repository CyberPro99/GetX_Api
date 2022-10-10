import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:getx_api/api_service/post_provider.dart';

import '../model/post.dart';

class PostsController extends GetxController {
  // @override
  // void onInit() {
  //   // TODO: implement onInit
  //   // PostsProvider().getPostsList(
  //   //     beforeSend: () {
  //   //       print('before Send');
  //   //     }, onSuccess: (posts) {
  //   //   print('success');
  //   //   print(posts.length);
  //   // }, onError: (error) {
  //   //   print('error');
  //   // });
  //   super.onInit();
  // }
  var isLoading = false.obs;
  var getDataModel = GetDataModel().obs;

  Dio dio() {
    return Dio(BaseOptions(headers: {
      // Api Header and Key
      'X-CMC_PRO_API_KEY': '382484eb-2dbb-4c29-9373-5dc4e078d20a',
    }));
  }

  getDataFromApi() async {
    isLoading.value = true;
    try {
      var response = await dio().get('https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest');
      getDataModel.value = GetDataModel.fromJson(response.data);
      print(response);
      isLoading.value = false;
    } catch (e) {
      print(e);
    }
  }
}
