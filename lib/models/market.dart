class MarketsModel {
  String name;
  String iconPath;
  String level;
  String duration;
  String calorie;
  bool boxIsSelected;

  MarketsModel({
    required this.name,
    required this.iconPath,
    required this.level,
    required this.duration,
    required this.calorie,
    required this.boxIsSelected
  });

  // ignore: non_constant_identifier_names
  static List < MarketsModel > popularMarket() {
    List < MarketsModel > popularMarket = [];

    popularMarket.add(
      MarketsModel(
       name: 'Bitcoin',
       iconPath: 'assets/icons/btc.svg',
       level: '\$70,653',
       duration: '0.66%',
       calorie: '\$1.4T',
       boxIsSelected: true,
      )
    );

    popularMarket.add(
      MarketsModel(
       name: 'Etherium',
       iconPath: 'assets/icons/eth.svg',
       level: '\$3621',
       duration: '2.24%',
       calorie: '434.7B',
       boxIsSelected: false,
      )
    );

    popularMarket.add(
      MarketsModel(
       name: 'SUI',
       iconPath: 'assets/icons/sui-sui-logo.svg',
       level: '\$1.89',
       duration: '-2.40%',
       calorie: '2.3B',
       boxIsSelected: false,
      )
    );

    return popularMarket;
  }
}