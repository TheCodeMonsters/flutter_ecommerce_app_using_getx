import 'package:flutter/material.dart';
import 'package:flutter_ecommerece_using_getx/utils/constants.dart';
import 'package:flutter_ecommerece_using_getx/view/categories_page/categoriesed_items.dart';
import 'package:get/get.dart';

class Categoriesslider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CategoriesWidget(
            icon: Icons.person,
            title: 'Men',
            onTapped: () {
              Get.to(CategorisedItems(
                category: 'Men',
              ));
            },
          ),
          CategoriesWidget(
            icon: Icons.pregnant_woman_outlined,
            title: 'Woman',
            onTapped: () {
              Get.to(CategorisedItems(
                category: 'Woman',
              ));
            },
          ),
          CategoriesWidget(
            icon: Icons.shopping_bag,
            title: 'Fashion',
            onTapped: () {
              Get.to(CategorisedItems(
                category: 'Fashion',
              ));
            },
          ),
          CategoriesWidget(
            icon: Icons.mobile_friendly,
            title: 'Mobiles & Tablets',
            onTapped: () {
              Get.to(CategorisedItems(
                category: 'Mobiles & Tablets',
              ));
            },
          ),
          CategoriesWidget(
            icon: Icons.laptop,
            title: 'Computers & Laptops',
            onTapped: () {
              Get.to(CategorisedItems(
                category: 'Computers & Laptops',
              ));
            },
          ),
          CategoriesWidget(
            icon: Icons.electrical_services,
            title: 'Electronics Accessories',
            onTapped: () {
              Get.to(CategorisedItems(
                category: 'Electronics Accessories',
              ));
            },
          ),
          CategoriesWidget(
            icon: Icons.tv,
            title: 'TV & Appliances',
            onTapped: () {
              Get.to(CategorisedItems(
                category: 'TV & Appliances',
              ));
            },
          ),
          CategoriesWidget(
            icon: Icons.audiotrack_outlined,
            title: 'Gadgets',
            onTapped: () {
              Get.to(CategorisedItems(
                category: 'Gadgets',
              ));
            },
          ),
          CategoriesWidget(
            icon: Icons.disc_full_outlined,
            title: 'Other',
            onTapped: () {
              Get.to(CategorisedItems(
                category: 'Other',
              ));
            },
          ),
        ],
      ),
    );
  }
}

class CategoriesWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function onTapped;
  CategoriesWidget({
    this.icon,
    this.onTapped,
    this.title,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapped,
      child: Container(
        width: 80,
        padding: EdgeInsets.all(3),
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: kPrimaryColor,
              ),
              SizedBox(
                height: 10,
              ),
              // Tamaño del texto de las categorias
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
