enum MyEndorsementsEnum {
  abraham,
  david,
  kuro,
  einstein;

  String get title {
    switch (this) {
      case abraham:
        return "A seasoned Software Engineer.";
      case david:
        return "Sir Serticode!";
      default:
        return "Lorem Ipsum Dolor";
    }
  }

  String get body {
    switch (this) {
      case abraham:
        return "A seasoned Software Engineer with a passion for crafting robust mobile and backend solutions. \nDrawing from extensive experience in Flutter development and backend architecture using Node.js and TypeScript, Serticode transforms complex business requirements into elegant, user-centric applications.";
      case david:
        return "Man like Serticode... \nHis commitment to clean code and scalable solutions has consistently delivered impactful results across diverse projects. \nAlways eager to embrace new technologies and solve challenging problems. Samuel brings both technical expertise and innovative thinking to every development endeavor";
      default:
        return "Lorem Ipsum Dolor";
    }
  }

  String get nameAndCareerBriefing {
    switch (this) {
      case abraham:
        return "Ogudu O. Abraham. \nConsultant and Data Analyst. \nErnst & Young Global Limited.";
      case david:
        return "Dedeke D. Iteoluwakiishi. \nSoftware Engineer. \nAccelerated Frontiers.";
      default:
        return "Lorem Ipsum Dolor - sit blah blah blah";
    }
  }
}
