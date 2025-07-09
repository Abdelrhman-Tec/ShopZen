import 'package:flutter/material.dart';
import 'package:my_app/core/utils/app_colors.dart';
import 'package:my_app/features/categories/data/models/category_model.dart';

class CategoriesItem extends StatelessWidget {
  final double? width;
  final double? size;
  final double? height;
  final CategoryModel categoryModel;
  final Function()? ontap;

  const CategoriesItem({
    super.key,
    required this.categoryModel,
    this.ontap, this.width = 50, this.height =50, this.size,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Column(
        children: [
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.myGery200Color,
              ),
              child: Center(
                child: Icon(categoryModel.icon,size: size,),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            categoryModel.name,
            style: const TextStyle(fontSize: 14),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
