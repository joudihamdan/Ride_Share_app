class ApiUrls {
  static const baseUrl = 'http://199.192.19.220:3012/api/v1/';
  static const register = '${baseUrl}auth/register';
  static const login = '${baseUrl}auth/authenticate';
  static const hubs = '${baseUrl}hubs';
  static hubContent(String category, int hubId) =>
      "${baseUrl}hub-content/$hubId?bicycleCategory=$category";
  static const wallet = '${baseUrl}wallet';
  static const validCode = '${baseUrl}wallet/All-valid-codes';
}

String token =
    "eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIwOTM2NzA2MTY5IiwiaWF0IjoxNzMzODUzNzU3LCJleHAiOjE3MzM5NDAxNTd9.h0OtYo1Pc8PRSOi0c2lpZ9b-xX3Lx9LlI26WgVmqGgg";
