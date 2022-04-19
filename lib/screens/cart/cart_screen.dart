import 'package:ecommerce_ui/components/default_button.dart';
import 'package:ecommerce_ui/constants.dart';
import 'package:ecommerce_ui/models/cart.dart';
import 'package:ecommerce_ui/screens/cart/components/body.dart';
import 'package:ecommerce_ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/check_out_card.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  static String routeName = "/cart";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: CheckOutCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [Text("Your Cart",
        style: TextStyle(color: Colors.black),
        ),
          Text("${demoCarts.length} items",style: Theme.of(context).textTheme.caption,)
        ],
      ),

    );
  }
}

