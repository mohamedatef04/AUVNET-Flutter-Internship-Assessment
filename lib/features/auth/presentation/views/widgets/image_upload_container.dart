import 'dart:io';

import 'package:auvnet_internship_task/core/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class ImageUploadContainer extends StatefulWidget {
  const ImageUploadContainer({super.key, required this.onImagePicked});
  final ValueChanged<File> onImagePicked;

  @override
  State<ImageUploadContainer> createState() => _ImageUploadContainerState();
}

class _ImageUploadContainerState extends State<ImageUploadContainer> {
  File? pickedImage;

  final ImagePicker picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: 120.w,
              height: 120.w,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.verylightWightColor,
              ),
              child: GestureDetector(
                onTap: () async {
                  final ImagePicker picker = ImagePicker();
                  XFile? image = await picker.pickImage(
                    source: ImageSource.gallery,
                  );
                  setState(() {
                    pickedImage = File(image!.path);
                    widget.onImagePicked(pickedImage!);
                  });
                },
                child: Center(
                  child: pickedImage != null
                      ? Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: FileImage(pickedImage!),
                              fit: BoxFit.fill,
                            ),
                          ),
                        )
                      : const Icon(
                          Icons.camera_alt,
                          color: AppColors.darkGreyColor,
                          size: 40,
                        ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 40.w,
              child: Visibility(
                visible: pickedImage != null,
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      pickedImage = null;
                    });
                  },
                  icon: const Icon(Icons.delete, color: Colors.red, size: 30),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
