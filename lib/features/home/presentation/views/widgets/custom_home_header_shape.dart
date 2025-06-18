import 'package:auvnet_internship_task/core/services/hive_local_storage_service.dart';
import 'package:auvnet_internship_task/core/styles/app_styles.dart';
import 'package:auvnet_internship_task/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomHomeHeaderShape extends StatefulWidget {
  const CustomHomeHeaderShape({super.key});

  @override
  State<CustomHomeHeaderShape> createState() => _CustomHomeHeaderShapeState();
}

class _CustomHomeHeaderShapeState extends State<CustomHomeHeaderShape> {
  final user = HiveLocalStorageService().getUserData();
  String? name;
  String? imageUrl;

  @override
  void initState() {
    name = user['name'];
    imageUrl = user['image_url'];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(Assets.imagesRectangleShape),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 32.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Delivering to', style: AppStyles.boldDarkBlack12),
              SizedBox(height: 5.h),
              Text(
                'Al Satwa, 81A Street',
                style: AppStyles.boldDarkBlack12.copyWith(fontSize: 16.sp),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 4,
                    child: Text(
                      'Hi $name! ',
                      style: AppStyles.boldLightWhite30.copyWith(
                        fontSize: 24.sp,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 60.w,
                      height: 60.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 1.w),
                        image: DecorationImage(
                          image: NetworkImage(
                            imageUrl ??
                                'https://img.freepik.com/free-vector/user-circles-set_78370-4704.jpg?uid=R145483694&ga=GA1.1.918032716.1736258875&semt=ais_hybrid&w=740',
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
