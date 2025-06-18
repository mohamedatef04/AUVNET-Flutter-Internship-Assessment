import 'package:auvnet_internship_task/core/utils/assets.dart';
import 'package:auvnet_internship_task/features/home/domain/entites/shortcut_item_intity.dart';
import 'package:auvnet_internship_task/features/home/presentation/views/widgets/shortcut_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShortcutsWidget extends StatefulWidget {
  const ShortcutsWidget({super.key});

  @override
  State<ShortcutsWidget> createState() => _ShortcutsWidgetState();
}

class _ShortcutsWidgetState extends State<ShortcutsWidget> {
  final List<ShortcutItemIntity> shortcuts = [
    ShortcutItemIntity(
      title: 'Past\norders',
      icon: Image.asset(Assets.imagesPasteShortcut, width: 32.w),
    ),
    ShortcutItemIntity(
      title: 'Super\nSaver',
      icon: Stack(
        children: [
          Image.asset(Assets.imagesCustomShape, width: 50.w),
          Positioned(
            top: 20.h,
            right: 22.w,
            child: Image.asset(Assets.imagesSuperShortcut, width: 12.w),
          ),
        ],
      ),
    ),
    ShortcutItemIntity(
      title: 'Must-tries',
      icon: Stack(
        children: [
          Image.asset(Assets.imagesMustShortcut, width: 40.w),
          Positioned(
            top: 12.h,
            right: 19.w,
            child: Image.asset(Assets.imagesSuperShortcut, width: 12.w),
          ),
        ],
      ),
    ),
    ShortcutItemIntity(
      title: 'Give Back',
      icon: Image.asset(Assets.imagesGiveBackShortcut, width: 32.w),
    ),
    ShortcutItemIntity(
      title: 'Best\nSellers',
      icon: Image.asset(Assets.imagesStar, width: 32.w),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: shortcuts
          .map((e) => Expanded(child: ShortcutItem(shortcutItemIntity: e)))
          .toList(),
    );
  }
}
