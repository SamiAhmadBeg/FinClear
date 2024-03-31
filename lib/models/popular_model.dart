class PopularDietsModel {
  String name;
  String iconPath;
  String level;
  String duration;
  String calorie;
  bool boxIsSelected;

  PopularDietsModel({
    required this.name,
    required this.iconPath,
    required this.level,
    required this.duration,
    required this.calorie,
    required this.boxIsSelected
  });

  static List < PopularDietsModel > getPopularDiets() {
    List < PopularDietsModel > popularDiets = [];

    popularDiets.add(
      PopularDietsModel(
       name: 'Netflix',
       iconPath: 'assets/icons/natflix.svg',
       level: 'Entertainment',
       duration: '\$6.99',
       calorie: 'Month',
       boxIsSelected: true,
      )
    );

    popularDiets.add(
      PopularDietsModel(
       name: 'Hulu',
       iconPath: 'assets/icons/hoolo.svg',
       level: 'Entertainment',
       duration: '\$7.99',
       calorie: 'Month',
       boxIsSelected: false,
      )
    );

    popularDiets.add(
      PopularDietsModel(
       name: 'ScentBird',
       iconPath: 'assets/icons/pairofwings.svg',
       level: 'Fragrances',
       duration: '\$153.00',
       calorie: 'Year',
       boxIsSelected: false,
      )
    );

    return popularDiets;
  }
}