import 'package:calculator/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Buttom1 extends StatelessWidget {
  const Buttom1({super.key, required this.label, this.textColor=AppColors.whiteColor});

final String label;
final Color textColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // TODO: On Tap
      },
      child: Material(
        elevation: 6,
        color: AppColors.shadowColor,
        borderRadius: BorderRadius.circular(50),
        child: CircleAvatar(
          radius: 36, 
          backgroundColor: AppColors.buttomColor,
          child: Text(
              label,
              style: TextStyle(
               color:textColor, fontSize: 40, fontWeight: FontWeight.w600),
            ),
          ),
      ),
    );
  }
}