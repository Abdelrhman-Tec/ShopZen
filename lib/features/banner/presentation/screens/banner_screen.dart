import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:my_app/core/utils/assets.dart';
import 'package:my_app/features/banner/data/model/banner_model.dart';

class BannerScreen extends StatefulWidget {
  const BannerScreen({super.key});

  @override
  State<BannerScreen> createState() => _BannerScreenState();
}

class _BannerScreenState extends State<BannerScreen> {
  final List<BannerModel> bannerList = [
    BannerModel(nameBanner: Assets.assetsBanner1),
    BannerModel(nameBanner: Assets.assetsBanner2),
    BannerModel(nameBanner: Assets.assetsBanner3),
    BannerModel(nameBanner: Assets.assetsBanner4),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        CarouselSlider(
          options: CarouselOptions(
            height: 175,
            autoPlay: true,
            enlargeCenterPage: true,
            viewportFraction: 1,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
          ),
          items: bannerList.map((banner) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                banner.nameBanner,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
