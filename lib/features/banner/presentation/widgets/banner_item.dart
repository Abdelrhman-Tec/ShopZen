import 'package:flutter/material.dart';
import 'package:my_app/features/banner/data/model/banner_model.dart'
    show BannerModel;

class BannerItem extends StatelessWidget {
  final BannerModel bannerModel;
  const BannerItem({super.key, required this.bannerModel});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              width: 380,
              height: 170,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(
                    bannerModel.nameBanner,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
