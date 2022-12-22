import 'dart:convert';
/// error : false
/// message : "Registered Successfully"
/// data : [{"id":"810","username":"Ok User","email":"u35@gmail.com","mobile":"555555552","city_name":null,"area_name":null}]

SignUpModel signUpModelFromJson(String str) => SignUpModel.fromJson(json.decode(str));
String signUpModelToJson(SignUpModel data) => json.encode(data.toJson());
class SignUpModel {
  SignUpModel({
      bool? error, 
      String? message, 
      List<Data>? data,}){
    _error = error;
    _message = message;
    _data = data;
}

  SignUpModel.fromJson(dynamic json) {
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
SignUpModel copyWith({  bool? error,
  String? message,
  List<Data>? data,
}) => SignUpModel(  error: error ?? _error,
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

/// id : "810"
/// username : "Ok User"
/// email : "u35@gmail.com"
/// mobile : "555555552"
/// city_name : null
/// area_name : null

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String? id, 
      String? username, 
      String? email, 
      String? mobile, 
      dynamic cityName, 
      dynamic areaName,}){
    _id = id;
    _username = username;
    _email = email;
    _mobile = mobile;
    _cityName = cityName;
    _areaName = areaName;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _username = json['username'];
    _email = json['email'];
    _mobile = json['mobile'];
    _cityName = json['city_name'];
    _areaName = json['area_name'];
  }
  String? _id;
  String? _username;
  String? _email;
  String? _mobile;
  dynamic _cityName;
  dynamic _areaName;
Data copyWith({  String? id,
  String? username,
  String? email,
  String? mobile,
  dynamic cityName,
  dynamic areaName,
}) => Data(  id: id ?? _id,
  username: username ?? _username,
  email: email ?? _email,
  mobile: mobile ?? _mobile,
  cityName: cityName ?? _cityName,
  areaName: areaName ?? _areaName,
);
  String? get id => _id;
  String? get username => _username;
  String? get email => _email;
  String? get mobile => _mobile;
  dynamic get cityName => _cityName;
  dynamic get areaName => _areaName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['username'] = _username;
    map['email'] = _email;
    map['mobile'] = _mobile;
    map['city_name'] = _cityName;
    map['area_name'] = _areaName;
    return map;
  }

}