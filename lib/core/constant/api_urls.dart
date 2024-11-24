class ApiUrls {
  static const baseUrl = 'https://rideshare.devscape.online/api/v1/';
  static const register = '${baseUrl}auth/register';
  static const login = '${baseUrl}auth/authenticate';
  static const hubs = '${baseUrl}hubs';
  static hubContent(String category, int hubId) =>
      "${baseUrl}hub-content/$hubId?bicycleCategory=$category";
  static const wallet = '${baseUrl}wallet';
  static const validCode = '${baseUrl}wallet/All-valid-codes';
}

String token =
 "eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIwOTM2NzA1MTY2IiwiaWF0IjoxNzI4OTk0MzE4LCJleHAiOjE3MjkwODA3MTh9.gmhDwL5FxcszmHMdd-WdcPplbPYCj52hikwWHh5fZWs";