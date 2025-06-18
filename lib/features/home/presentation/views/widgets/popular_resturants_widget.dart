import 'package:auvnet_internship_task/core/utils/assets.dart';
import 'package:auvnet_internship_task/features/home/domain/entites/resturant_item_entity.dart';
import 'package:auvnet_internship_task/features/home/presentation/views/widgets/resturants_item.dart';
import 'package:flutter/material.dart';

class PopularResturantsWidget extends StatefulWidget {
  const PopularResturantsWidget({super.key});

  @override
  State<PopularResturantsWidget> createState() =>
      _PopularResturantsWidgetState();
}

class _PopularResturantsWidgetState extends State<PopularResturantsWidget> {
  final List<ResturantItemEntity> resturants = [
    ResturantItemEntity(
      image: Assets.imagesAlloBeirutRes,
      title: 'Allo Beirut',
      subtitle: '32 mins',
    ),
    ResturantItemEntity(
      image: Assets.imagesLaffahRes,
      title: 'Laffah',
      subtitle: '38 mins',
    ),
    ResturantItemEntity(
      image: Assets.imagesFalafilRes,
      title: 'Falafil Al Rabiah Al',
      subtitle: '44 mins',
    ),
    ResturantItemEntity(
      image: Assets.imagesBarbarRes,
      title: 'Barbar',
      subtitle: '34 mins',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: resturants
          .map((e) => Expanded(child: ResturantsItem(resturantItemEntity: e)))
          .toList(),
    );
  }
}
