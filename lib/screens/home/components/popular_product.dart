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
      children: [SectionTitle(
          text: "Popular Product",
          press: (){}
      ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                    (index) =>ProductCard(product: demoProducts[index],
                ),
              ),
              SizedBox(width: getProportionateScreenWidth(20),)
            ],
          ),
        ),
      ],
    );
  }
}

