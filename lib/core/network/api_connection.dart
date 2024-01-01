class API {
  static const hostConnect = "http://216.250.8.232:4003/";
  static const hostProducts = "$hostConnect/api/products/";
  static const hostConnectUser = "$hostConnect/api/v1/auth/";
  //static const hostConnectAdmin = "$hostConnect/admin";
  static const hostCategoryId = "$hostConnect/api/v1/category-detail/{id}/";
  static const hostCategory = "$hostConnect/api/v1/category/";
  static const hostCompanyId = "$hostConnect/api/v1/company-detail/{id}/";
  static const hostCompanyList = "$hostConnect/api/v1/company-list/";
  static const hostProductsV1 = "$hostConnect/api/products";
  static const hostRegister = "$hostConnect/api/v1/register/";
  // static const hostCart = "$hostConnect/api/cart/";
  // static const hostFavorite = "$hostConnect/api/favorite/";
  // static const hostOrder = "$hostConnect/api/order/";
  // static const hostImages = "$hostConnect/api/images/";

  //signUp-Login user
  static const validateEmail = "$hostConnectUser/api/v1/validate_email";
  static const signUp = "$hostConnectUser/api/v1/signup";
  static const login = "$hostConnectUser/api/v1/login";

  //login admin

  //items
  // static const uploadNewItem = "$hostItem/";
  // static const searchItems = "$hostItem/";

  // CategoryId

  // Category

  // CompanyId

  // CompanyList


  //Products
  // static const getTrendingMostPopularClothes = "$hostProducts/api/";
  static const getAllProducts = "$hostProducts/api/products";

  //cart
  // static const addToCart = "$hostCart/";
  // static const deleteSelectedItemsFromCartList = "$hostCart/";
  // static const updateItemInCartList = "$hostCart/";

  //favorite
  // static const validateFavorite = "$hostFavorite/";
  // static const addFavorite = "$hostFavorite/";
  // static const deleteFavorite = "$hostFavorite/";
  // static const readFavorite = "$hostFavorite/";

  //order
  // static const addOrder = "$hostOrder/";
  // static const readOrders = "$hostOrder/";
  // static const updateStatus = "$hostOrder/";
}
