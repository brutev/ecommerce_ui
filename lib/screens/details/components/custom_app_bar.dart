import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../components/rounded_icon_btn.dart';
import '../../../size_config.dart';

class CustomAppBar extends StatelessWidget{
  final double rating;

  CustomAppBar({ required this.rating}) ;

  @override
  Size get preferredSize =>Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build (BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RoundedIconBtn(iconData: Icons.arrow_back_ios, press: ()=> Navigator.pop(context),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Text(
                    rating.toString(),
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(width: 3,),
                  SvgPicture.asset("assets/icons/Star Icon.svg"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
