class Career {
  final String title;
  final String period;
  final String content;
  final String frontEndGithubLink;
  final String backEndGithubLink;
  final String webDeployLink;
  final String playStoreLink;
  final String appStoreLink;
  Career({
    required this.title,
    required this.period,
    required this.content,
    this.frontEndGithubLink = "",
    this.backEndGithubLink = "",
    this.webDeployLink = "",
    this.playStoreLink = "",
    this.appStoreLink = "",
  });
}
