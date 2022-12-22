class UpdateCompleteStatusModel {
  UpdateCompleteStatusModel({
      this.error, 
      this.message,});

  UpdateCompleteStatusModel.fromJson(dynamic json) {
    error = json['error'];
    message = json['message'];
  }
  bool? error;
  String? message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['error'] = error;
    map['message'] = message;
    return map;
  }

}