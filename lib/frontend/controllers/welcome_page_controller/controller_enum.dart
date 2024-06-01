// ignore_for_file: sort_constructors_first

enum ActionButtons {
  resume(
    pageName: "Resume",
  ),
  gitHub(
    pageName: "GitHub",
  ),
  contactMe(
    pageName: "Contact Me",
  );

  final String pageName;

  const ActionButtons({
    required this.pageName,
  });
}
