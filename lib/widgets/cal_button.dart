
import 'package:flutter/material.dart';

import '../constant/colors.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // TODO: OnTap 2
      },
      child: Container(
          height: 190,
          width: 70,
          decoration: BoxDecoration(
            color: AppColors.blueColor,
            borderRadius: BorderRadius.circular(40)),
            child: Center(child: Text("=", style: TextStyle(fontSize: 40,),),),
        ),
    );
  }
}
