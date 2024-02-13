class AppUrl {
  static const String baseUrl = "https://softwarewabi.com/uturnnews";
  static const String baseApiUrl = "/api-pacakage";

  static const String loginApi = "$baseUrl/login";
  static const String fetchNews = "$baseApiUrl/fetch_article?article=desc_1";

  static const String userListApi =
      "https://webhook.site/ca87a668-46ca-4037-8443-74134d6b3b51";

  static const headers = {'Content-Type': 'application/json; charset=UTF-8'};
}
