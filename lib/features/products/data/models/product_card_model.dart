class ProductCardModel {
  final List<ProductModel> products;
  final int total;
  final int skip;
  final int limit;

  ProductCardModel({
    required this.products,
    required this.total,
    required this.skip,
    required this.limit,
  });

  factory ProductCardModel.fromJson(Map<String, dynamic> json) {
    return ProductCardModel(
      products: (json['products'] as List<dynamic>?)
              ?.map((item) => ProductModel.fromJson(item))
              .toList() ??
          [],
      total: json['total'] ?? 0,
      skip: json['skip'] ?? 0,
      limit: json['limit'] ?? 0,
    );
  }
}

class ProductModel {
  final int id;
  final String title;
  final String description;
  final String category;
  final double price;
  final double rating;
  final List<String> images;
  final String thumbnail;

  ProductModel({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.price,
    required this.rating,
    required this.images,
    required this.thumbnail,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'] ?? 0,
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      category: json['category'] ?? '',
      price: (json['price'] as num?)?.toDouble() ?? 0.0,
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
      images: List<String>.from(json['images'] ?? []),
      thumbnail: json['thumbnail'] ?? '',
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'category': category,
      'price': price,
      'rating': rating,
      'images': images,
      'thumbnail': thumbnail,
    };
  }
}
