import 'package:auvnet_internship_task/core/utils/assets.dart';
import 'package:auvnet_internship_task/features/home/domain/entites/service_item_entity.dart';
import 'package:auvnet_internship_task/features/home/presentation/views/widgets/service_item.dart';
import 'package:flutter/material.dart';

class ServicesItemsWidget extends StatefulWidget {
  const ServicesItemsWidget({super.key});

  @override
  State<ServicesItemsWidget> createState() => _ServicesItemsWidgetState();
}

class _ServicesItemsWidgetState extends State<ServicesItemsWidget> {
  final List<ServiceItemEntity> servicesItems = [
    ServiceItemEntity(
      image: Assets.imagesFoodCategory,
      offer: 'Up to 50%',
      category: 'Food',
    ),
    ServiceItemEntity(
      image: Assets.imagesHealthCategory,
      offer: '20 mins',
      category: 'Health &\n wellness',
    ),
    ServiceItemEntity(
      image: Assets.imagesGroceryCategory,
      offer: '15 mins',
      category: 'Groceries',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: servicesItems
          .map((e) => Expanded(child: ServiceItem(serviceItemEntity: e)))
          .toList(),
    );
  }
}
