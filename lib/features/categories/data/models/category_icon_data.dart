import 'package:flutter/material.dart';

class CategoryIconData {
  final String slug;
  final IconData icon;

  const CategoryIconData({required this.slug, required this.icon});
}

const List<CategoryIconData> categoryIcons = [
  CategoryIconData(slug: 'smartphones', icon: Icons.smartphone),
  CategoryIconData(slug: 'laptops', icon: Icons.laptop_mac),
  CategoryIconData(slug: 'fragrances', icon: Icons.spa),
  CategoryIconData(slug: 'skin-care', icon: Icons.face),
  CategoryIconData(slug: 'groceries', icon: Icons.shopping_cart),
  CategoryIconData(slug: 'home-decoration', icon: Icons.home),
  CategoryIconData(slug: 'furniture', icon: Icons.weekend),
  CategoryIconData(slug: 'tops', icon: Icons.checkroom),
  CategoryIconData(slug: 'womens-dresses', icon: Icons.checkroom),
  CategoryIconData(slug: 'womens-shoes', icon: Icons.shopping_bag),
  CategoryIconData(slug: 'mens-shirts', icon: Icons.checkroom),
  CategoryIconData(slug: 'mens-shoes', icon: Icons.shopping_bag),
  CategoryIconData(slug: 'mens-watches', icon: Icons.watch),
  CategoryIconData(slug: 'womens-watches', icon: Icons.watch),
  CategoryIconData(slug: 'womens-bags', icon: Icons.work),
  CategoryIconData(slug: 'womens-jewellery', icon: Icons.star),
  CategoryIconData(slug: 'sunglasses', icon: Icons.wb_sunny),
  CategoryIconData(slug: 'vehicle', icon: Icons.directions_car),
  CategoryIconData(slug: 'motorcycle', icon: Icons.motorcycle),
  CategoryIconData(slug: 'lighting', icon: Icons.lightbulb),
];

IconData getIconBySlug(String slug) {
  return categoryIcons.firstWhere(
    (element) => element.slug == slug,
    orElse: () => const CategoryIconData(slug: '', icon: Icons.category),
  ).icon;
}
