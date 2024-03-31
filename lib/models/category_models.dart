import 'dart:ui';

import 'package:flutter/material.dart';


class CatergoryModel{
  String name;
  String iconpath;
  Color boxColor; 


CatergoryModel({
  required this.name,
  required this.iconpath,
  required this.boxColor,
 });

 static List<CatergoryModel> getCategories(){
  List<CatergoryModel> categories = [];

  categories.add(
    CatergoryModel(
      name: 'Send',
      iconpath: 'assets/icons/tripleup.svg',
      boxColor: Colors.blue.shade300
      )
  );

  categories.add(
    CatergoryModel(
      name: 'Recieve',
      iconpath: 'assets/icons/realtick.svg',
      boxColor: Colors.blue.shade100
      )
  );

  categories.add(
    CatergoryModel(
      name: 'Buy',
      iconpath: 'assets/icons/pluss.svg',
      boxColor:Colors.blue.shade300
      )
  );

  categories.add(
    CatergoryModel(
      name: 'Swap',
      iconpath: 'assets/icons/up-down.svg',
      boxColor: Colors.blue.shade100
      )
  );

  return categories;
 }
}