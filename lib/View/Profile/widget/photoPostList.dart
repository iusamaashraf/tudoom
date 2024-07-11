import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tudoom/Controller/ProfileControllerss/profilecontroler.dart';

class PhotosPostList extends StatelessWidget {
  final controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: controller.postPhotos.length,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Number of items in a row
          mainAxisSpacing: 10.0, // Spacing along the main axis
          crossAxisSpacing: 5.0, // Spacing along the cross axis
          mainAxisExtent: 110),
      itemBuilder: (context, index) {
        return Container(
          height: 121,
          width: 121,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(controller.postPhotos[index]),
                  fit: BoxFit.cover)),
        );
      },
    );
  }
}
