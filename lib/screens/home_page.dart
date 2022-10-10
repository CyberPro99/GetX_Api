import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../contorll/posts_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final getDataController = Get.put(PostsController());

  @override
  void initState() {
    // TODO: implement initState
    getDataController.getDataFromApi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: Text('GetX List'),
        ),
        body: !getDataController.isLoading.value
            ? ListView.builder(
                itemCount: getDataController.getDataModel.value.people?.length,
                itemBuilder: (context, index) {
                  return Card(
                      child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          getDataController.getDataModel.value.people![index].craft??'',
                        ),
                        Text(
                          getDataController.getDataModel.value.people![index].name??'',
                        ),
                      ],
                    ),
                  ));
                })
            : Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
