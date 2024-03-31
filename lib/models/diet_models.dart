import 'dart:ui';

import 'package:flutter/material.dart';

class DietModel{
  String name;
  String iconPath;
  String level;
  String duration;
  String calorie;
  Color boxColor;
  bool viewIsSelected;

  DietModel({
    required this.name,
    required this.iconPath,
    required this.level,
    required this.duration,
    required this.calorie,
    required this.viewIsSelected,
    required this.boxColor,
    
  });

  static List < DietModel > getDiets(){
    List < DietModel > diets = [];

    diets.add(
      DietModel(
        name: 'Crypto',
        iconPath: 'assets/icons/de.svg',
        level: 'SUI',
        duration: 'Eth',
        calorie: 'BTC',
        viewIsSelected: true,
        boxColor: Colors.blue.shade100,
      )
    );

    diets.add(
      DietModel(
       name: 'Card',
       iconPath: 'assets/icons/cc.svg',
       level: 'Credit',
       duration: 'Debit',
       calorie: 'Gift',
       viewIsSelected: false,
       boxColor: Colors.blue.shade300,
      )
    );

    diets.add(
      DietModel(
        name: 'QuickPay',
        iconPath: 'assets/icons/quickpa.svg',
        level: 'Zelle',
        duration: 'PayPal',
        calorie: 'CashApp',
        viewIsSelected: true,
        boxColor: Colors.blue.shade100,
      )
    );

   
    return diets;
  }

}