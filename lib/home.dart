import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/category_models.dart';
import 'package:flutter_application_1/models/diet_models.dart';
import 'package:flutter_application_1/models/popular_model.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_1/models/market.dart';

class HomePage extends StatefulWidget {
 HomePage({super.key});


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 List<CatergoryModel> categories = [];
 List<DietModel> diets = [];
 List<PopularDietsModel> popularDiets = [];
 List <MarketsModel>  markets = [];



void _getInitialInfo(){
  categories = CatergoryModel.getCategories();
  diets = DietModel.getDiets();
  popularDiets = PopularDietsModel.getPopularDiets();
  markets = MarketsModel.popularMarket();
}

  @override
  void initState(){
    super.initState();
    _getInitialInfo();
  }

  @override
  Widget build(BuildContext context) {
    _getInitialInfo();
   
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "FinClear",
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          ),
          ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {

          },
          child: Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            width: 37,
            decoration: BoxDecoration(
              color: Color(0xffF7F8F8),
              borderRadius: BorderRadius.circular(10)
            ),
            child: Icon(Icons.person)
            ),
        ),
        actions: [
          GestureDetector(
            onTap: () {

            },
          child: Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color(0xffF7F8F8),
            borderRadius: BorderRadius.circular(10)
          ),
          child: SvgPicture.asset(
            'assets/icons/sui-sui-logo.svg',
            height: 20,
            width: 20,
         ),
          ),
      ),
        ],
        ),
     body: ListView(
      
      children: [
        
        Container(
        
          margin: EdgeInsets.only(top: 40, right: 20, left: 20),
          decoration: BoxDecoration(
            boxShadow:[
              BoxShadow(
                color: Color(0xff1D1617).withOpacity(0.11),
                blurRadius: 40,
                spreadRadius: 0.0,
              )
            ],
          ),
          child: TextField(
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: EdgeInsets.all(12),
              child: Icon(Icons.search),
            ),
            suffixIcon: Icon(Icons.filter),
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.all(15),
            hintText: 'Search FinClear',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none,
            )
          ),
                ),
        ),
        SizedBox(height: 40,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                'Buy/Recieve',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                ),
            ),
            const SizedBox(height: 20,),
            Container(
              height: 120,
              child: ListView.separated(
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(
                  left: 20,
                  right:20,
                ),
                separatorBuilder: (context, index) => SizedBox(width: 25),
                itemBuilder: (context, index) {
                  return Container(
                    width: 100,
                    decoration: BoxDecoration(
                      color: categories[index].boxColor.withOpacity(0.4), 
                      borderRadius: BorderRadius.circular(16)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 55,
                            height: 55,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SvgPicture.asset(categories[index].iconpath),
                            ),
                          ),
                          Text(
                            categories[index].name,
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            )
                            ),
                          )
                        ],
                        )

                  );
                }
                ),
            )
          ],
        ),
        SizedBox(height: 40,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                'Payment Methods',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 240,
              child: ListView.separated(
                itemBuilder: (context, index){
                  return Container(
                    width: 210,
                    decoration: BoxDecoration(
                      color: diets[index].boxColor.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SvgPicture.asset(diets[index].iconPath),
                        Text(
                          diets[index].name,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          diets[index].level + ' | ' + diets[index].duration + ' | ' + diets[index].calorie,
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Container(
                          height: 45,
                          width: 130,
                          child: Center(
                            child: Text(
                              'View',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                diets[index].viewIsSelected? Color(0xff90ceff) : Colors.transparent,
                                diets[index].viewIsSelected? Color(0xff92a3fd) : Colors.transparent,
                              ]
                              ),
                              borderRadius: BorderRadius.circular(50),
                          ),
                        )
                      ],
                    ),
                    );
                },
                separatorBuilder: (context, index) => SizedBox(width: 25), 
                itemCount: diets.length,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                ),

            )
          ],
        ),
        SizedBox(height: 40,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                'Subscriptions',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
              ),
            ),
            SizedBox(height: 15,),
            ListView.separated(
              itemCount: popularDiets.length,
              shrinkWrap: true,
              separatorBuilder: (context, index) => SizedBox(height: 25,),
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              itemBuilder: (context, index){
                return Container(
                  height: 90,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset(popularDiets[index].iconPath,
                      width: 55,
                      height: 55,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              popularDiets[index].name,
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 16
                              ),
                            ),
                            Text(
                              popularDiets[index].level + ' | ' + popularDiets[index].duration + ' | ' + popularDiets[index].calorie,
                              style: const TextStyle(
                                color: Color(0xff7B6F72),
                                fontSize: 13,
                                fontWeight: FontWeight.w400
                              ),
                            ),
                        ],
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff1d1671).withOpacity(0.07),
                        offset: Offset(0, 10),
                        blurRadius: 40,
                        spreadRadius: 0
                      )
                    ]
                  ),
                );
              },
              )
            ],
          ),
         
          SizedBox(height: 40,),
         
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                'Market',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
              ),
            ),
            SizedBox(height: 15,),
            ListView.separated(
              itemCount: popularDiets.length,
              shrinkWrap: true,
              separatorBuilder: (context, index) => SizedBox(height: 25,),
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              itemBuilder: (context, index){
                return Container(
                  height: 90,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset(markets[index].iconPath,
                      width: 55,
                      height: 55,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              markets[index].name,
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 16
                              ),
                            ),
                            Text(
                              markets[index].level + ' | ' + markets[index].duration + ' | ' + markets[index].calorie,
                              style: const TextStyle(
                                color: Color(0xff7B6F72),
                                fontSize: 13,
                                fontWeight: FontWeight.w400
                              ),
                            ),
                        ],
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff1d1671).withOpacity(0.07),
                        offset: Offset(0, 10),
                        blurRadius: 40,
                        spreadRadius: 0
                      )
                    ]
                  ),
                );
              },
              )
            ],
          ),
           SizedBox(height: 40,),
      ]
      ),   
    );
  }
}