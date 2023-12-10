import 'package:calculator/constant/colors.dart';
import 'package:calculator/widgets/textfield.dart';
import 'package:flutter/material.dart';

import '../widgets/cal_button.dart';
import 'widgets_data..dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    final padding = EdgeInsets.symmetric(horizontal: 25, vertical:30);
    final decoration = BoxDecoration(color: AppColors.primaryColor, borderRadius: BorderRadius.vertical(top:Radius.circular(30)));

    return Scaffold(
        backgroundColor: AppColors.secondaryColor,
        appBar: AppBar(
          title: Center(child: Text("Kalkulator")),
          backgroundColor: AppColors.thirdColor
          ),
        body: Column(
          children: [
            const CustomTextField(),
            const Spacer(),
            Container(height:screenHeight * 0.7,
              width: double.infinity,
              padding: padding,
              decoration: decoration, 
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    4, (index) => buttonList[index]),
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    4, (index) => buttonList[index + 4]),
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    4, (index) => buttonList[index + 8]),
                  ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: List.generate(
                                  3, (index) => buttonList[index + 12]),
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: List.generate(
                                  3, (index) => buttonList[index + 15]),
                                )   
                                 
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                      ),
                    CalculateButton()
                ],)
              ] ),
            )
        ],  
        ),
      );
  }
}



