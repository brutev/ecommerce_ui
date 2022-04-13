import 'package:flutter/material.dart';

import '../size_config.dart';


class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key, required this.text, required this.press,
  }) : super(key: key);
  final String? text;
  final  Function? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(50),
      child: ElevatedButton(
        onPressed: press as void Function()?,
        style: ElevatedButton.styleFrom(
          primary: const Color(0xFFFF7643),shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        ),
        child:  Text(
          text!,
          style: const TextStyle(fontSize:30,color: Colors.white),
        ),
      ),
    );
  }
}
