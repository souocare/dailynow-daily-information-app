import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custom_network_image.dart';

// ignore: must_be_immutable
class ImageView extends StatefulWidget {
  ImageView({super.key, required this.productImages, this.initialImage});
  List<dynamic> productImages = [];
  int? initialImage;
  @override
  State<ImageView> createState() => _ImageViewState();
}

class _ImageViewState extends State<ImageView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var imageController = PageController(initialPage: 0);

    void changeImage(int index) {
      imageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeInOutCubicEmphasized,
      );
    }

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(Get.context!).size.height,
            child: PageView.builder(
                controller: imageController,
                onPageChanged: changeImage,
                itemCount: widget.productImages.length,
                itemBuilder: (context, index) {
                  return InteractiveViewer(
                      minScale: 0.1,
                      maxScale: 2.0,
                      child: CustomNetworkImage(
                          imageUrl: widget.productImages[index].toString())
                      //  Image.network(
                      //     widget.productImages[index].toString())

                      );
                }),
          ),
          Positioned(
            bottom: 16.0,
            left: 0.0,
            right: 0.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                widget.productImages.length,
                (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 400),
                  height: 6.0,
                  width: /*controller.sliderIndex.value == index ? 14.0 :*/
                      6.0,
                  margin: const EdgeInsets.only(right: 4.0),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
