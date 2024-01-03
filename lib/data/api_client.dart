import 'json_http_client.dart';
import 'response.dart';

extension Endpoints on Never {
  static const hostProducts = '/api/products/';
  static const hostConnectUser = '/api/v1/auth/';
  static const hostCategoryId = '/api/v1/category-detail/{id}/';
  static const hostCategory = '/api/v1/category/';
  static const hostCompanyId = '/api/v1/company-detail/{id}/';
  static const hostCompanyList = '/api/v1/company-list/';
  static const hostProductsV1 = '/api/products';
  static const hostRegister = '/api/v1/register/';
  static const validateEmail = '/api/v1/validate_email';
  static const signUp = '/api/v1/signup';
  static const login = '/api/v1/login';
  static const getAllProducts = '/api/products';
}

class ApiClient {
  final JsonHttpClient _httpClient;

  ApiClient(this._httpClient);

  Future<LoginResponse> signIn({
    required String username,
    required String password,
  }) async {
    final postData = <String, dynamic>{
      'username': username,
      'password': password,
    };
    return _httpClient.post(
      Endpoints.login,
      body: postData,
      mapper: (dynamic data) => LoginResponse.fromJson(data as Map<String, dynamic>),
    );
  }
}
