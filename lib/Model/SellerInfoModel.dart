import 'dart:convert';
/// error : "false"
/// message : "Seller Data Retrived Successfully"
/// data : {"id":"69","ip_address":"49.36.17.227","username":"divya","password":"$2y$10$pfZbgzjPe/utGUSH6gaviOfPgDEmHdlp826BfEcU9nziV6bsQ9sZC","email":"divya@gmail.com","mobile":"8484559845","image":null,"balance":"0","activation_selector":"54ea48cc3f32f744989a","activation_code":"$2y$10$T/gzD9sulXz0nCSaOCGHneWeVuUkIDfincY02.zpYoCJwPM/ziPWm","forgotten_password_selector":null,"forgotten_password_code":null,"forgotten_password_time":null,"remember_selector":null,"remember_code":null,"created_on":"1666870768","last_login":null,"active":"1","company":null,"address":"Indore, Madhya Pradesh, India","bonus":null,"cash_received":"0.00","dob":null,"country_code":null,"city":null,"area":null,"street":null,"pincode":null,"serviceable_zipcodes":null,"apikey":null,"referral_code":null,"friends_code":null,"fcm_id":null,"otp":"0","verify_otp":"0","latitude":"22.7532848","longitude":"75.8936962","created_at":"2022-10-27 17:09:28","online":"1","user_id":"801","slug":"dev-online","category_ids":"1,5,8,10,12,14,16,18,20,22,24,26,28,29,31,33,35,37,39,41,43,45,46,48,50,52,54,56,58,60,62,64,66,68,70,73,75,77,79,81,83,85,87,89,91,93,95,97,99,101,103,105,107,109,111,113,115,117,119,121,123,125,127,129,131,133,135,137,139,141,143,145,147,148,149,151,153,","store_name":"dev online","store_description":"fdgdfgdgdgdfgf","logo":"uploads/seller/Hardware-1024x1024.jpg","store_url":"www.vikasMpOfline.com","no_of_ratings":"0","rating":"0.00","bank_name":"State Bank of India","bank_code":"SBIN0021615","account_name":"9876543210","account_number":"412563986655","national_identity_card":"uploads/seller/environment_thump3.jpg","address_proof":"uploads/seller/Hardware-1024x10241.jpg","pan_number":"7O41852KJO","tax_name":"GST","tax_number":"GSTN100","permissions":"{\"require_products_approval\":\"0\",\"customer_privacy\":\"0\",\"view_order_otp\":\"0\",\"assign_delivery_boy\":\"0\",\"online\":\"1\"}","commission":"5.00","estimated_time":"18:20","food_person":"1","open_close_status":"0","status":"1","date_added":"2022-10-27 17:09:28","no_of_table":"44","qr_code":"uploads/qrcode/1794820921.png"}

SellerInfoModel sellerInfoModelFromJson(String str) => SellerInfoModel.fromJson(json.decode(str));
String sellerInfoModelToJson(SellerInfoModel data) => json.encode(data.toJson());
class SellerInfoModel {
  SellerInfoModel({
      String? error, 
      String? message, 
      Data? data,}){
    _error = error;
    _message = message;
    _data = data;
}

  SellerInfoModel.fromJson(dynamic json) {
    _error = json['error'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  String? _error;
  String? _message;
  Data? _data;
SellerInfoModel copyWith({  String? error,
  String? message,
  Data? data,
}) => SellerInfoModel(  error: error ?? _error,
  message: message ?? _message,
  data: data ?? _data,
);
  String? get error => _error;
  String? get message => _message;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['error'] = _error;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}

/// id : "69"
/// ip_address : "49.36.17.227"
/// username : "divya"
/// password : "$2y$10$pfZbgzjPe/utGUSH6gaviOfPgDEmHdlp826BfEcU9nziV6bsQ9sZC"
/// email : "divya@gmail.com"
/// mobile : "8484559845"
/// image : null
/// balance : "0"
/// activation_selector : "54ea48cc3f32f744989a"
/// activation_code : "$2y$10$T/gzD9sulXz0nCSaOCGHneWeVuUkIDfincY02.zpYoCJwPM/ziPWm"
/// forgotten_password_selector : null
/// forgotten_password_code : null
/// forgotten_password_time : null
/// remember_selector : null
/// remember_code : null
/// created_on : "1666870768"
/// last_login : null
/// active : "1"
/// company : null
/// address : "Indore, Madhya Pradesh, India"
/// bonus : null
/// cash_received : "0.00"
/// dob : null
/// country_code : null
/// city : null
/// area : null
/// street : null
/// pincode : null
/// serviceable_zipcodes : null
/// apikey : null
/// referral_code : null
/// friends_code : null
/// fcm_id : null
/// otp : "0"
/// verify_otp : "0"
/// latitude : "22.7532848"
/// longitude : "75.8936962"
/// created_at : "2022-10-27 17:09:28"
/// online : "1"
/// user_id : "801"
/// slug : "dev-online"
/// category_ids : "1,5,8,10,12,14,16,18,20,22,24,26,28,29,31,33,35,37,39,41,43,45,46,48,50,52,54,56,58,60,62,64,66,68,70,73,75,77,79,81,83,85,87,89,91,93,95,97,99,101,103,105,107,109,111,113,115,117,119,121,123,125,127,129,131,133,135,137,139,141,143,145,147,148,149,151,153,"
/// store_name : "dev online"
/// store_description : "fdgdfgdgdgdfgf"
/// logo : "uploads/seller/Hardware-1024x1024.jpg"
/// store_url : "www.vikasMpOfline.com"
/// no_of_ratings : "0"
/// rating : "0.00"
/// bank_name : "State Bank of India"
/// bank_code : "SBIN0021615"
/// account_name : "9876543210"
/// account_number : "412563986655"
/// national_identity_card : "uploads/seller/environment_thump3.jpg"
/// address_proof : "uploads/seller/Hardware-1024x10241.jpg"
/// pan_number : "7O41852KJO"
/// tax_name : "GST"
/// tax_number : "GSTN100"
/// permissions : "{\"require_products_approval\":\"0\",\"customer_privacy\":\"0\",\"view_order_otp\":\"0\",\"assign_delivery_boy\":\"0\",\"online\":\"1\"}"
/// commission : "5.00"
/// estimated_time : "18:20"
/// food_person : "1"
/// open_close_status : "0"
/// status : "1"
/// date_added : "2022-10-27 17:09:28"
/// no_of_table : "44"
/// qr_code : "uploads/qrcode/1794820921.png"

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());

class Data {
  Data({
      String? id, 
      String? ipAddress, 
      String? username, 
      String? password, 
      String? email, 
      String? mobile, 
      dynamic image, 
      String? balance, 
      String? activationSelector, 
      String? activationCode, 
      dynamic forgottenPasswordSelector, 
      dynamic forgottenPasswordCode, 
      dynamic forgottenPasswordTime, 
      dynamic rememberSelector, 
      dynamic rememberCode, 
      String? createdOn, 
      dynamic lastLogin, 
      String? active, 
      dynamic company, 
      String? address, 
      dynamic bonus, 
      String? cashReceived, 
      dynamic dob, 
      dynamic countryCode, 
      dynamic city, 
      dynamic area, 
      dynamic street, 
      dynamic pincode, 
      dynamic serviceableZipcodes, 
      dynamic apikey, 
      dynamic referralCode, 
      dynamic friendsCode, 
      dynamic fcmId, 
      String? otp, 
      String? verifyOtp, 
      String? latitude, 
      String? longitude, 
      String? createdAt, 
      String? online, 
      String? userId, 
      String? slug, 
      String? categoryIds, 
      String? storeName, 
      String? storeDescription, 
      String? logo, 
      String? storeUrl, 
      String? noOfRatings, 
      String? rating, 
      String? bankName, 
      String? bankCode, 
      String? accountName, 
      String? accountNumber, 
      String? nationalIdentityCard, 
      String? addressProof, 
      String? panNumber, 
      String? taxName, 
      String? taxNumber, 
      String? permissions, 
      String? commission, 
      String? estimatedTime,
      String? foodPerson, 
      String? openCloseStatus, 
      String? status, 
      String? dateAdded, 
      String? noOfTable, 
      String? qrCode,}){
    _id = id;
    _ipAddress = ipAddress;
    _username = username;
    _password = password;
    _email = email;
    _mobile = mobile;
    _image = image;
    _balance = balance;
    _activationSelector = activationSelector;
    _activationCode = activationCode;
    _forgottenPasswordSelector = forgottenPasswordSelector;
    _forgottenPasswordCode = forgottenPasswordCode;
    _forgottenPasswordTime = forgottenPasswordTime;
    _rememberSelector = rememberSelector;
    _rememberCode = rememberCode;
    _createdOn = createdOn;
    _lastLogin = lastLogin;
    _active = active;
    _company = company;
    _address = address;
    _bonus = bonus;
    _cashReceived = cashReceived;
    _dob = dob;
    _countryCode = countryCode;
    _city = city;
    _area = area;
    _street = street;
    _pincode = pincode;
    _serviceableZipcodes = serviceableZipcodes;
    _apikey = apikey;
    _referralCode = referralCode;
    _friendsCode = friendsCode;
    _fcmId = fcmId;
    _otp = otp;
    _verifyOtp = verifyOtp;
    _latitude = latitude;
    _longitude = longitude;
    _createdAt = createdAt;
    _online = online;
    _userId = userId;
    _slug = slug;
    _categoryIds = categoryIds;
    _storeName = storeName;
    _storeDescription = storeDescription;
    _logo = logo;
    _storeUrl = storeUrl;
    _noOfRatings = noOfRatings;
    _rating = rating;
    _bankName = bankName;
    _bankCode = bankCode;
    _accountName = accountName;
    _accountNumber = accountNumber;
    _nationalIdentityCard = nationalIdentityCard;
    _addressProof = addressProof;
    _panNumber = panNumber;
    _taxName = taxName;
    _taxNumber = taxNumber;
    _permissions = permissions;
    _commission = commission;
    _estimatedTime = estimatedTime;
    _foodPerson = foodPerson;
    _openCloseStatus = openCloseStatus;
    _status = status;
    _dateAdded = dateAdded;
    _noOfTable = noOfTable;
    _qrCode = qrCode;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _ipAddress = json['ip_address'];
    _username = json['username'];
    _password = json['password'];
    _email = json['email'];
    _mobile = json['mobile'];
    _image = json['image'];
    _balance = json['balance'];
    _activationSelector = json['activation_selector'];
    _activationCode = json['activation_code'];
    _forgottenPasswordSelector = json['forgotten_password_selector'];
    _forgottenPasswordCode = json['forgotten_password_code'];
    _forgottenPasswordTime = json['forgotten_password_time'];
    _rememberSelector = json['remember_selector'];
    _rememberCode = json['remember_code'];
    _createdOn = json['created_on'];
    _lastLogin = json['last_login'];
    _active = json['active'];
    _company = json['company'];
    _address = json['address'];
    _bonus = json['bonus'];
    _cashReceived = json['cash_received'];
    _dob = json['dob'];
    _countryCode = json['country_code'];
    _city = json['city'];
    _area = json['area'];
    _street = json['street'];
    _pincode = json['pincode'];
    _serviceableZipcodes = json['serviceable_zipcodes'];
    _apikey = json['apikey'];
    _referralCode = json['referral_code'];
    _friendsCode = json['friends_code'];
    _fcmId = json['fcm_id'];
    _otp = json['otp'];
    _verifyOtp = json['verify_otp'];
    _latitude = json['latitude'];
    _longitude = json['longitude'];
    _createdAt = json['created_at'];
    _online = json['online'];
    _userId = json['user_id'];
    _slug = json['slug'];
    _categoryIds = json['category_ids'];
    _storeName = json['store_name'];
    _storeDescription = json['store_description'];
    _logo = json['logo'];
    _storeUrl = json['store_url'];
    _noOfRatings = json['no_of_ratings'];
    _rating = json['rating'];
    _bankName = json['bank_name'];
    _bankCode = json['bank_code'];
    _accountName = json['account_name'];
    _accountNumber = json['account_number'];
    _nationalIdentityCard = json['national_identity_card'];
    _addressProof = json['address_proof'];
    _panNumber = json['pan_number'];
    _taxName = json['tax_name'];
    _taxNumber = json['tax_number'];
    _permissions = json['permissions'];
    _commission = json['commission'];
    _estimatedTime = json['estimated_time'];
    _foodPerson = json['food_person'];
    _openCloseStatus = json['open_close_status'];
    _status = json['status'];
    _dateAdded = json['date_added'];
    _noOfTable = json['no_of_table'];
    _qrCode = json['qr_code'];
  }
  String? _id;
  String? _ipAddress;
  String? _username;
  String? _password;
  String? _email;
  String? _mobile;
  dynamic _image;
  String? _balance;
  String? _activationSelector;
  String? _activationCode;
  dynamic _forgottenPasswordSelector;
  dynamic _forgottenPasswordCode;
  dynamic _forgottenPasswordTime;
  dynamic _rememberSelector;
  dynamic _rememberCode;
  String? _createdOn;
  dynamic _lastLogin;
  String? _active;
  dynamic _company;
  String? _address;
  dynamic _bonus;
  String? _cashReceived;
  dynamic _dob;
  dynamic _countryCode;
  dynamic _city;
  dynamic _area;
  dynamic _street;
  dynamic _pincode;
  dynamic _serviceableZipcodes;
  dynamic _apikey;
  dynamic _referralCode;
  dynamic _friendsCode;
  dynamic _fcmId;
  String? _otp;
  String? _verifyOtp;
  String? _latitude;
  String? _longitude;
  String? _createdAt;
  String? _online;
  String? _userId;
  String? _slug;
  String? _categoryIds;
  String? _storeName;
  String? _storeDescription;
  String? _logo;
  String? _storeUrl;
  String? _noOfRatings;
  String? _rating;
  String? _bankName;
  String? _bankCode;
  String? _accountName;
  String? _accountNumber;
  String? _nationalIdentityCard;
  String? _addressProof;
  String? _panNumber;
  String? _taxName;
  String? _taxNumber;
  String? _permissions;
  String? _commission;
  String? _estimatedTime;
  String? _foodPerson;
  String? _openCloseStatus;
  String? _status;
  String? _dateAdded;
  String? _noOfTable;
  String? _qrCode;
Data copyWith({  String? id,
  String? ipAddress,
  String? username,
  String? password,
  String? email,
  String? mobile,
  dynamic image,
  String? balance,
  String? activationSelector,
  String? activationCode,
  dynamic forgottenPasswordSelector,
  dynamic forgottenPasswordCode,
  dynamic forgottenPasswordTime,
  dynamic rememberSelector,
  dynamic rememberCode,
  String? createdOn,
  dynamic lastLogin,
  String? active,
  dynamic company,
  String? address,
  dynamic bonus,
  String? cashReceived,
  dynamic dob,
  dynamic countryCode,
  dynamic city,
  dynamic area,
  dynamic street,
  dynamic pincode,
  dynamic serviceableZipcodes,
  dynamic apikey,
  dynamic referralCode,
  dynamic friendsCode,
  dynamic fcmId,
  String? otp,
  String? verifyOtp,
  String? latitude,
  String? longitude,
  String? createdAt,
  String? online,
  String? userId,
  String? slug,
  String? categoryIds,
  String? storeName,
  String? storeDescription,
  String? logo,
  String? storeUrl,
  String? noOfRatings,
  String? rating,
  String? bankName,
  String? bankCode,
  String? accountName,
  String? accountNumber,
  String? nationalIdentityCard,
  String? addressProof,
  String? panNumber,
  String? taxName,
  String? taxNumber,
  String? permissions,
  String? commission,
  String? estimatedTime,
  String? foodPerson,
  String? openCloseStatus,
  String? status,
  String? dateAdded,
  String? noOfTable,
  String? qrCode,
}) => Data(  id: id ?? _id,
  ipAddress: ipAddress ?? _ipAddress,
  username: username ?? _username,
  password: password ?? _password,
  email: email ?? _email,
  mobile: mobile ?? _mobile,
  image: image ?? _image,
  balance: balance ?? _balance,
  activationSelector: activationSelector ?? _activationSelector,
  activationCode: activationCode ?? _activationCode,
  forgottenPasswordSelector: forgottenPasswordSelector ?? _forgottenPasswordSelector,
  forgottenPasswordCode: forgottenPasswordCode ?? _forgottenPasswordCode,
  forgottenPasswordTime: forgottenPasswordTime ?? _forgottenPasswordTime,
  rememberSelector: rememberSelector ?? _rememberSelector,
  rememberCode: rememberCode ?? _rememberCode,
  createdOn: createdOn ?? _createdOn,
  lastLogin: lastLogin ?? _lastLogin,
  active: active ?? _active,
  company: company ?? _company,
  address: address ?? _address,
  bonus: bonus ?? _bonus,
  cashReceived: cashReceived ?? _cashReceived,
  dob: dob ?? _dob,
  countryCode: countryCode ?? _countryCode,
  city: city ?? _city,
  area: area ?? _area,
  street: street ?? _street,
  pincode: pincode ?? _pincode,
  serviceableZipcodes: serviceableZipcodes ?? _serviceableZipcodes,
  apikey: apikey ?? _apikey,
  referralCode: referralCode ?? _referralCode,
  friendsCode: friendsCode ?? _friendsCode,
  fcmId: fcmId ?? _fcmId,
  otp: otp ?? _otp,
  verifyOtp: verifyOtp ?? _verifyOtp,
  latitude: latitude ?? _latitude,
  longitude: longitude ?? _longitude,
  createdAt: createdAt ?? _createdAt,
  online: online ?? _online,
  userId: userId ?? _userId,
  slug: slug ?? _slug,
  categoryIds: categoryIds ?? _categoryIds,
  storeName: storeName ?? _storeName,
  storeDescription: storeDescription ?? _storeDescription,
  logo: logo ?? _logo,
  storeUrl: storeUrl ?? _storeUrl,
  noOfRatings: noOfRatings ?? _noOfRatings,
  rating: rating ?? _rating,
  bankName: bankName ?? _bankName,
  bankCode: bankCode ?? _bankCode,
  accountName: accountName ?? _accountName,
  accountNumber: accountNumber ?? _accountNumber,
  nationalIdentityCard: nationalIdentityCard ?? _nationalIdentityCard,
  addressProof: addressProof ?? _addressProof,
  panNumber: panNumber ?? _panNumber,
  taxName: taxName ?? _taxName,
  taxNumber: taxNumber ?? _taxNumber,
  permissions: permissions ?? _permissions,
  commission: commission ?? _commission,
  estimatedTime: estimatedTime ?? _estimatedTime,
  foodPerson: foodPerson ?? _foodPerson,
  openCloseStatus: openCloseStatus ?? _openCloseStatus,
  status: status ?? _status,
  dateAdded: dateAdded ?? _dateAdded,
  noOfTable: noOfTable ?? _noOfTable,
  qrCode: qrCode ?? _qrCode,
);
  String? get id => _id;
  String? get ipAddress => _ipAddress;
  String? get username => _username;
  String? get password => _password;
  String? get email => _email;
  String? get mobile => _mobile;
  dynamic get image => _image;
  String? get balance => _balance;
  String? get activationSelector => _activationSelector;
  String? get activationCode => _activationCode;
  dynamic get forgottenPasswordSelector => _forgottenPasswordSelector;
  dynamic get forgottenPasswordCode => _forgottenPasswordCode;
  dynamic get forgottenPasswordTime => _forgottenPasswordTime;
  dynamic get rememberSelector => _rememberSelector;
  dynamic get rememberCode => _rememberCode;
  String? get createdOn => _createdOn;
  dynamic get lastLogin => _lastLogin;
  String? get active => _active;
  dynamic get company => _company;
  String? get address => _address;
  dynamic get bonus => _bonus;
  String? get cashReceived => _cashReceived;
  dynamic get dob => _dob;
  dynamic get countryCode => _countryCode;
  dynamic get city => _city;
  dynamic get area => _area;
  dynamic get street => _street;
  dynamic get pincode => _pincode;
  dynamic get serviceableZipcodes => _serviceableZipcodes;
  dynamic get apikey => _apikey;
  dynamic get referralCode => _referralCode;
  dynamic get friendsCode => _friendsCode;
  dynamic get fcmId => _fcmId;
  String? get otp => _otp;
  String? get verifyOtp => _verifyOtp;
  String? get latitude => _latitude;
  String? get longitude => _longitude;
  String? get createdAt => _createdAt;
  String? get online => _online;
  String? get userId => _userId;
  String? get slug => _slug;
  String? get categoryIds => _categoryIds;
  String? get storeName => _storeName;
  String? get storeDescription => _storeDescription;
  String? get logo => _logo;
  String? get storeUrl => _storeUrl;
  String? get noOfRatings => _noOfRatings;
  String? get rating => _rating;
  String? get bankName => _bankName;
  String? get bankCode => _bankCode;
  String? get accountName => _accountName;
  String? get accountNumber => _accountNumber;
  String? get nationalIdentityCard => _nationalIdentityCard;
  String? get addressProof => _addressProof;
  String? get panNumber => _panNumber;
  String? get taxName => _taxName;
  String? get taxNumber => _taxNumber;
  String? get permissions => _permissions;
  String? get commission => _commission;
  String? get estimatedTime => _estimatedTime;
  String? get foodPerson => _foodPerson;
  String? get openCloseStatus => _openCloseStatus;
  String? get status => _status;
  String? get dateAdded => _dateAdded;
  String? get noOfTable => _noOfTable;
  String? get qrCode => _qrCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['ip_address'] = _ipAddress;
    map['username'] = _username;
    map['password'] = _password;
    map['email'] = _email;
    map['mobile'] = _mobile;
    map['image'] = _image;
    map['balance'] = _balance;
    map['activation_selector'] = _activationSelector;
    map['activation_code'] = _activationCode;
    map['forgotten_password_selector'] = _forgottenPasswordSelector;
    map['forgotten_password_code'] = _forgottenPasswordCode;
    map['forgotten_password_time'] = _forgottenPasswordTime;
    map['remember_selector'] = _rememberSelector;
    map['remember_code'] = _rememberCode;
    map['created_on'] = _createdOn;
    map['last_login'] = _lastLogin;
    map['active'] = _active;
    map['company'] = _company;
    map['address'] = _address;
    map['bonus'] = _bonus;
    map['cash_received'] = _cashReceived;
    map['dob'] = _dob;
    map['country_code'] = _countryCode;
    map['city'] = _city;
    map['area'] = _area;
    map['street'] = _street;
    map['pincode'] = _pincode;
    map['serviceable_zipcodes'] = _serviceableZipcodes;
    map['apikey'] = _apikey;
    map['referral_code'] = _referralCode;
    map['friends_code'] = _friendsCode;
    map['fcm_id'] = _fcmId;
    map['otp'] = _otp;
    map['verify_otp'] = _verifyOtp;
    map['latitude'] = _latitude;
    map['longitude'] = _longitude;
    map['created_at'] = _createdAt;
    map['online'] = _online;
    map['user_id'] = _userId;
    map['slug'] = _slug;
    map['category_ids'] = _categoryIds;
    map['store_name'] = _storeName;
    map['store_description'] = _storeDescription;
    map['logo'] = _logo;
    map['store_url'] = _storeUrl;
    map['no_of_ratings'] = _noOfRatings;
    map['rating'] = _rating;
    map['bank_name'] = _bankName;
    map['bank_code'] = _bankCode;
    map['account_name'] = _accountName;
    map['account_number'] = _accountNumber;
    map['national_identity_card'] = _nationalIdentityCard;
    map['address_proof'] = _addressProof;
    map['pan_number'] = _panNumber;
    map['tax_name'] = _taxName;
    map['tax_number'] = _taxNumber;
    map['permissions'] = _permissions;
    map['commission'] = _commission;
    map['estimated_time'] = _estimatedTime;
    map['food_person'] = _foodPerson;
    map['open_close_status'] = _openCloseStatus;
    map['status'] = _status;
    map['date_added'] = _dateAdded;
    map['no_of_table'] = _noOfTable;
    map['qr_code'] = _qrCode;
    return map;
  }

}