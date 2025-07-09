import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app/config/dependency_injection/dependency_injection.dart';
import 'package:my_app/config/routes/app_routes.dart';
import 'package:my_app/core/utils/app_colors.dart';
import 'package:my_app/core/utils/assets.dart';
import 'package:my_app/core/widget/custom_app_bar.dart';
import 'package:my_app/features/banner/presentation/screens/banner_screen.dart';
import 'package:my_app/features/categories/data/models/category_model.dart';
import 'package:my_app/features/categories/presentation/cubit/categories_cubit.dart';
import 'package:my_app/features/categories/presentation/screens/categories_screen.dart';
import 'package:my_app/features/categories/presentation/widgets/categories_item.dart';
import 'package:my_app/features/products/presentation/cubit/product_cubit.dart';
import 'package:my_app/features/products/presentation/screens/product_card.dart';
import 'package:my_app/features/search/presentation/screens/search_screen.dart';
import 'package:my_app/generated/l10n.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final localization = S.of(context);

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.height * 0.06),
              _HeaderRow(
                size: size,
                text: localization.location,
              ),
              SizedBox(height: size.height * 0.01),
              _AddressText(
                size: size,
                text: localization.address,
              ),
              SearchScreen(),
              const SizedBox(
                height: 10,
              ),
              SizedBox(height: size.height * 0.03),
              _CategoryRow(
                title: localization.homeCategories,
                actionText: localization.homeViewAll,
              ),
              const SizedBox(height: 10),
              const CategoriesScreen(),
              const SizedBox(height: 10),
              const BannerScreen(),
              SizedBox(height: size.height * 0.03),
              SectionTitle(title: localization.homeHotDeals),
              ProductCard(),
            ],
          ),
        ),
      ),
    );
  }
}

// ------------------ COMPONENTS ----------------------

class _HeaderRow extends StatelessWidget {
  final Size size;
  final String text;

  const _HeaderRow({
    required this.size,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: size.width * 0.05,
            color: AppColors.myGeryColor,
          ),
        ),
        GestureDetector(
          onTap: () => context.goNamed(AppRoutes.notification),
          child: SvgPicture.asset(
            Assets.assetsIconsNotification,
            height: size.width * 0.07,
          ),
        ),
      ],
    );
  }
}

class _AddressText extends StatelessWidget {
  final Size size;
  final String text;

  const _AddressText({
    required this.size,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: size.width * 0.05,
        color: AppColors.myBlackColor,
      ),
    );
  }
}

class _CategoryRow extends StatelessWidget {
  final String title;
  final String actionText;

  const _CategoryRow({
    required this.title,
    required this.actionText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () => context.goNamed(AppRoutes.viewAll),
          child: Text(
            actionText,
            style: const TextStyle(
              color: AppColors.myGeryColor,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}

class SectionTitle extends StatefulWidget {
  final String title;

  const SectionTitle({super.key, required this.title});

  @override
  State<SectionTitle> createState() => _SectionTitleState();
}

class _SectionTitleState extends State<SectionTitle> {
  bool sort = true;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.title,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: size.width * 0.05,
            color: AppColors.myBlackColor,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: AppColors.myWhiteColor,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 6,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: IconButton(
            icon: Icon(
              Icons.sort,
              size: 26,
              color: Colors.black87,
            ),
            onPressed: () {
              setState(() {
                sort = !sort;
              });
              getIt<ProductCubit>().sortProducts(sort);
            },
            tooltip: sort ? 'asc' : 'desc',
          ),
        )
      ],
    );
  }
}

class ViewAll extends StatelessWidget {
  const ViewAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(namePage: S.of(context).homeViewAll),
      body: BlocBuilder<CategoriesCubit, CategoriesState>(
        builder: (context, state) {
          switch (state) {
            case CategoriesLoading():
              return const Center(
                child: CircularProgressIndicator(),
              );
            case CategoriesLoaded():
              return Padding(
                padding: const EdgeInsets.all(10),
                child: GridView.builder(
                  itemCount: categoriesData.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 0,
                    childAspectRatio: 0.99,
                  ),
                  itemBuilder: (_, index) {
                    final item = categoriesData[index];
                    return CategoriesItem(
                      width: 70,
                      height: 70,
                      categoryModel: item,
                      size: 33,
                    );
                  },
                ),
              );
            case CategoriesError():
              return Center(child: Text(state.message));
            default:
              return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
