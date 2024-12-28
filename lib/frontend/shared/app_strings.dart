final appStrings = AppStrings();

class AppStrings {
  factory AppStrings() => singleInstance;
  AppStrings._internal();
  static final AppStrings singleInstance = AppStrings._internal();

  //! FOR THE DEV
  final String appName = "Serti0x";
  final String developerName = "Serticode";
  final String nickName = "Adonis";
  final String githubURL = "https://github.com/Serticode";
  final String resumeURL = "https://github.com/Serticode";

  //! FONT FAMILY
  final String fontFamily = "Eudoxus Sans";

  //! IN APP PUBLIC KEYS
  final String appThemeKey = "appThemeKey";

  //!
  //!
  //! ICONS
  final String moon = "moon";
  final String sun = "sun";
  final String codeLogo = "codeLogo";
  final String menuIcon = "menuIcon";
  final String gridIcon = "gridIcon";

  //!
  //!
  //! BACK DROPS AND IMAGES
  final String welcomePageBackdrop = "assets/images/welcomePageBackdrop.png";
  final String myPhoto = "myPhoto";

  //!
  //!
  //! REGULAR WORDS
  final String welcome = "Welcome";
  final String fromSerticode = "from  Serticode.";
  final String salutation =
      "Hi👋🏽, I’m Samuel O. Akujor, \nyour Software Engineering craftsman \nweaving digital wonders as a \nFullstack developer.";
  final String works = "Works.";
  final String worksPageSalutation =
      "First, solve the problem. \nThen, write the code - (John Johnson). \nA couple of things I've worked on. \nThe more you use, the more you love ❤️.";
  final String articles = "Articles.";
  final String articlesRider =
      "Here in goes all articles I've written, \nI hope you learn something. 🙈";
}
