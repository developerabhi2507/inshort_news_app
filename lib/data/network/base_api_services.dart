abstract class BaseApiServices {
  Future<dynamic> getApi(String url, Map<String, dynamic> queryParams);

  Future<dynamic> postApi(dynamic data, String url);
}
