import 'json_http_client.dart';
import 'models/category.dart';
import 'models/company_detail.dart';
import 'models/products.dart';
import 'models/profile.dart';
import 'models/response.dart';

extension Endpoints on Never {
  static const hostProducts = '/api/products';
  static const hostConnectUser = '/api/v1/auth/';
  static const hostCategoryId = '/api/v1/category-detail/{id}/';
  static const hostCategory = '/api/v1/category/';
  static const hostCompanyId = '/api/v1/company-detail/{id}/';
  static const hostCompanyList = '/api/v1/company-list';
  static const hostProductsV1 = '/api/v1/products';
  static const hostProfiles = '/api/v1/profiles';
  static const hostRegister = '/api/v1/register/';
  static const hostUserProfile = '/api/v1/user-profile/';
  static const validateEmail = '/api/v1/validate_email';
  static const signUp = '/api/v1/register/';
  static const login = '/api/v1/auth/';
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
      mapper: (dynamic data) =>
          LoginResponse.fromJson(data as Map<String, dynamic>),
    );
  }

  Future<UserRegistrationResponse> signUp({
    required String? firstName,
    required String? lastName,
    required String? username,
    required String? password,
    required String? email,
  }) async {
    final postData = <String, dynamic>{
      'firstName': firstName,
      'lastName': lastName,
      'username': username,
      'password': password,
      'email': email,
    };
    return _httpClient.post(
      Endpoints.signUp,
      body: postData,
      mapper: (dynamic data) =>
          UserRegistrationResponse.fromJson(data as Map<String, dynamic>),
    );
  }

  Future<List<Products>> getProducts() async {
    return _httpClient.get(
      Endpoints.hostProducts,
      mapper: (dynamic data) => (data as List<dynamic>)
          .map((dynamic e) => Products.fromJson(e as Map<String, dynamic>))
          .toList(growable: false),
    );
  }

  Future<List<Category>> getCategory() async {
    return _httpClient.get(
      Endpoints.hostCategory,
      mapper: (dynamic data) => (data as List<dynamic>)
          .map((dynamic e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(growable: false),
    );
  }

  Future<List<CompanyDetail>> getCompany() async {
    return _httpClient.get(
      Endpoints.hostCompanyList,
      mapper: (dynamic data) => (data as List<dynamic>)
          .map((dynamic e) => CompanyDetail.fromJson(e as Map<String, dynamic>))
          .toList(growable: false),
    );
  }
  Future<List<Profile>> getProfile() async {
    return _httpClient.get(
      Endpoints.hostUserProfile,
      mapper: (dynamic data) => (data as List<dynamic>)
          .map((dynamic e) => Profile.fromJson(e as Map<String, dynamic>))
          .toList(growable: false),
    );
  }
}
