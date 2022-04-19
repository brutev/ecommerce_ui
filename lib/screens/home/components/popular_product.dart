import 'package:ecommerce_ui/screens/details/details_screen.dart';
import 'package:ecommerce_ui/screens/home/components/section_title.dart';
import 'package:flutter/material.dart';

import '../../../components/product_card.dart';
import '../../../models/product.dart';
import '../../../size_config.dart';

class PopularProduct extends StatelessWidget {
  const PopularProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: SectionTitle(text: "Popular Products", press: () {}),
        ),
        SizedBox(
          height: getProportionateScreenWidth(20),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) {
                  if (demoProducts[index].isPopular) {
                    return ProductCard(
                      product: demoProducts[index],
                      press: () => Navigator.pushNamed(context, DetailsScreen.routeName,
                      arguments: ProductDetailsArguments(product: demoProducts[index]),
                      ),
                    );
                  }

                  return SizedBox
                      .shrink();
                },
              ),
              SizedBox(
                width: getProportionateScreenWidth(20),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
