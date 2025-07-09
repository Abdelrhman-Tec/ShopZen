import 'package:flutter/material.dart';

class CategoryModel {
  final String name;
  final IconData icon;

  const CategoryModel({
    required this.name,
    required this.icon,
  });
}

const List<CategoryModel> categoriesData = [
  CategoryModel(name: 'smartphones', icon: Icons.smartphone),
  CategoryModel(name: 'laptops', icon: Icons.laptop_mac),
  CategoryModel(name: 'fragrances', icon: Icons.spa),
  CategoryModel(name: 'skincare', icon: Icons.face),
  CategoryModel(name: 'groceries', icon: Icons.shopping_cart),
  CategoryModel(name: 'decoration', icon: Icons.home),
  CategoryModel(name: 'furniture', icon: Icons.weekend),
  CategoryModel(name: 'tops', icon: Icons.checkroom),
  CategoryModel(name: 'dresses', icon: Icons.outbond),
  CategoryModel(name: 'shoes', icon: Icons.shopping_bag),
  CategoryModel(name: 'shirts', icon: Icons.checkroom),
  CategoryModel(name: 'shoes', icon: Icons.shopping_bag),
  CategoryModel(name: 'watches', icon: Icons.watch),
  CategoryModel(name: 'watches', icon: Icons.watch),
  CategoryModel(name: 'bags', icon: Icons.work),
  CategoryModel(name: 'jewellery', icon: Icons.star),
  CategoryModel(name: 'sunglasses', icon: Icons.wb_sunny),
  CategoryModel(name: 'automotive', icon: Icons.directions_car),
  CategoryModel(name: 'motorcycle', icon: Icons.motorcycle),
  CategoryModel(name: 'lighting', icon: Icons.lightbulb),
];
