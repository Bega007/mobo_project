import 'package:dio/dio.dart';

import '../providers.dart';
import 'json_http_client.dart';
import 'models/products.dart';
import 'models/response.dart';

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
      'first_name': firstName,
      'last_name': lastName,
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

  Future<Products> fetchData({
    required String? id,
    required String? category,
    required String? company,
    required String? image,
    required String? title, 
    required String? description, 
    required String? price, 
    required String? created, 
    required String? isNew, 
  }) async {
    final getData = <String, dynamic>{
      'id': id,
      'category': category,
      'company': company,
      'image': image,
      'title': title,
      'description': description,
      'price': price,
      'created': created,
      'isNew': isNew,
    };
    
    return _httpClient.get(
      Endpoints.hostCategory,
      body: getData,
      mapper: (dynamic data) => Products.fromJson(data as Map<String, dynamic>),
    );
  }
  Future<Products> getData() async {
    final response = await Dio().get(
      apiBaseUrlProvider as String,
    );
      return Products.fromJson(response.data[]);
    }
  
}
