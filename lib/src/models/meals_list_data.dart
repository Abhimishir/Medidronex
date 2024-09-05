class MealsListData {
  MealsListData({
    this.imagePath = '',
    this.titleTxt = '',
    this.startColor = '',
    this.endColor = '',
    this.meals,
    this.kacl = 0,
  });

  String imagePath;
  String titleTxt;
  String startColor;
  String endColor;
  List<String>? meals;
  int kacl;

  static List<MealsListData> tabIconsList = <MealsListData>[
    // MealsListData(
    //   imagePath: 'assets/fitness_app/breakfast.png',
    //   titleTxt: 'Antivenom ',
    //   kacl: 525,
    //   meals: <String>['For' ,'snake bites'],
    //   startColor: '#FA7D82',
    //   endColor: '#FFB295',
    // ),
    // MealsListData(
    //   imagePath: 'assets/fitness_app/lunch.png',
    //   titleTxt: 'Lunch',
    //   kacl: 602,
    //   meals: <String>['Salmon,', 'Mixed veggies,', 'Avocado'],
    //   startColor: '#738AE6',
    //   endColor: '#5C5EDD',
    // ),
    // MealsListData(
    //   imagePath: 'assets/fitness_app/snack.png',
    //   titleTxt: 'Snack',
    //   kacl: 0,
    //   meals: <String>['Recommend:', '800 kcal'],
    //   startColor: '#FE95B6',
    //   endColor: '#FF5287',
    // ),
    // MealsListData(
    //   imagePath: 'assets/fitness_app/dinner.png',
    //   titleTxt: 'Dinner',
    //   kacl: 0,
    //   meals: <String>['Recommend:', '703 kcal'],
    //   startColor: '#6F72CA',
    //   endColor: '#1E1466',
    // ),
    MealsListData(
    imagePath: 'assets/fitness_app/breakfast.png',
    titleTxt: 'Antivenom',
    kacl: 525,
    meals: <String>['For', 'snake bites'],
    startColor: '#FA7D82',
    endColor: '#FFB295',
  ),
  MealsListData(
    imagePath: 'assets/fitness_app/lunch.png',
    titleTxt: 'Orphan Drugs',
    kacl: 450,
    meals: <String>['Rare conditions', 'Dornase Alpha'],
    startColor: '#7D83FA',
    endColor: '#9B95FF',
  ),
  MealsListData(
    imagePath: 'assets/fitness_app/dinner.png',
    titleTxt: 'Cancer Drugs',
    kacl: 600,
    meals: <String>[ 'Imatinib'],
    startColor: '#82FA7D',
    endColor: '#95FF9B',
  ),
  MealsListData(
    imagePath: 'assets/fitness_app/snacks.png',
    titleTxt: 'Monoclonal Antibodies',
    kacl: 550,
    meals: <String>['For cancer', 'Rituximab'],
    startColor: '#82C9FA',
    endColor: '#95D1FF',
  ),
  MealsListData(
    imagePath: 'assets/fitness_app/dessert.png',
    titleTxt: 'Rare Vaccines',
    kacl: 490,
    meals: <String>['For diseases', 'Typhoid Fever'],
    startColor: '#FAF07D',
    endColor: '#F1FF95',
  ),
  MealsListData(
    imagePath: 'assets/fitness_app/drink.png',
    titleTxt: 'Enzyme Therapies',
    kacl: 520,
    meals: <String>['For Pompe disease', 'Alglucosidase Alfa'],
    startColor: '#7DFAA8',
    endColor: '#95FFB3',
  ),
  MealsListData(
    imagePath: 'assets/fitness_app/juice.png',
    titleTxt: 'Gene Therapies',
    kacl: 540,
    meals: <String>['For genetic disorders', 'e.g., Zolgensma'],
    startColor: '#82FAF2',
    endColor: '#95D1FF',
  ),
  ];
}
