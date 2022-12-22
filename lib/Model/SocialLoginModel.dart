import 'dart:convert';
/// error : false
/// message : "Added Succesfully"
/// data : [{"id":"819","ip_address":"49.36.17.227","username":"roitt1","password":"$2y$10$zR5D2Kn8P3C0dC8SwjOvzuRZK3JxHr5nFx4oCupe9lZzCT35U/QT2","email":"check11321@gmail.com","mobile":"check11321@gmail.com","image":null,"balance":"0","activation_selector":"7dcbe56d8c103e693db5","activation_code":"$2y$10$xJpFC2QAwI2hLJz5r0QWf.YLE4vlt0iN4hLpdyfBIRsDwJpSD07w6","forgotten_password_selector":null,"forgotten_password_code":null,"forgotten_password_time":null,"remember_selector":null,"remember_code":null,"created_on":"1667399818","last_login":null,"active":"0","company":null,"address":null,"bonus":null,"cash_received":"0.00","dob":null,"country_code":null,"city":null,"area":null,"street":null,"pincode":null,"serviceable_zipcodes":null,"apikey":null,"referral_code":null,"friends_code":null,"fcm_id":null,"otp":"0","verify_otp":"0","latitude":null,"longitude":null,"created_at":"2022-11-02 20:06:58","online":""}]

SocialLoginModel socialLoginModelFromJson(String str) => SocialLoginModel.fromJson(json.decode(str));
String socialLoginModelToJson(SocialLoginModel data) => json.encode(data.toJson());
class SocialLoginModel {
  SocialLoginModel({
      bool? error, 
      String? message, 
      List<Data>? data,}){
    _error = error;
    _message = message;
    _data = data;
}

  SocialLoginModel.fromJson(dynamic json) {
    _error = json['error'];
    _message = json['message'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
  }
  bool? _error;
  String? _message;
  List<Data>? _data;
SocialLoginModel copyWith({  bool? error,
  String? message,
  List<Data>? data,
}) => SocialLoginModel(  error: error ?? _error,
  message: message ?? _message,
  data: data ?? _data,
);
  bool? get error => _error;
  String? get message => _message;
  List<Data>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['error'] = _error;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : "819"
/// ip_address : "49.36.17.227"
/// username : "roitt1"
/// password : "$2y$10$zR5D2Kn8P3C0dC8SwjOvzuRZK3JxHr5nFx4oCupe9lZzCT35U/QT2"
/// email : "check11321@gmail.com"
/// mobile : "check11321@gmail.com"
/// image : null
/// balance : "0"
/// activation_selector : "7dcbe56d8c103e693db5"
/// activation_code : "$2y$10$xJpFC2QAwI2hLJz5r0QWf.YLE4vlt0iN4hLpdyfBIRsDwJpSD07w6"
/// forgotten_password_selector : null
/// forgotten_password_code : null
/// forgotten_password_time : null
/// remember_selector : null
/// remember_code : null
/// created_on : "1667399818"
/// last_login : null
/// active : "0"
/// company : null
/// address : null
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
/// latitude : null
/// longitude : null
/// created_at : "2022-11-02 20:06:58"
/// online : ""

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
      dynamic address, 
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
      dynamic latitude, 
      dynamic longitude, 
      String? createdAt, 
      String? online,}){
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
  dynamic _address;
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
  dynamic _latitude;
  dynamic _longitude;
  String? _createdAt;
  String? _online;
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
  dynamic address,
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
  dynamic latitude,
  dynamic longitude,
  String? createdAt,
  String? online,
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
  dynamic get address => _address;
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
  dynamic get latitude => _latitude;
  dynamic get longitude => _longitude;
  String? get createdAt => _createdAt;
  String? get online => _online;

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
    return map;
  }

}