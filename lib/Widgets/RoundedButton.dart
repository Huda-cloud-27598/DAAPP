import 'package:flutter/material.dart';
import 'package:DAAPP/pallete.dart';
import 'package:flutter/widgets.dart';

class RoundedButton extends StatelessWidget {



  const RoundedButton({
    Key? key,
    required this.onPressed,
    required this.buttonName}) : super(key: key);

  final String buttonName;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.08,
      width: size.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.brown,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          buttonName,
          style: kBodyText.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}