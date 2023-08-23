class UserModel {
  UserModel({
    required this.message,
    required this.accessToken,
    required this.tokenType,
    required this.name,
    required this.email,
    required this.phone,
  });
  late final String message;
  late final String accessToken;
  late final String tokenType;
  late final String name;
  late final String email;
  late final int phone;

    UserModel.fromJson(Map<String, dynamic> json){
    message = json['message'];
    accessToken = json['access_token'];
    tokenType = json['token_type'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['message'] = message;
    _data['access_token'] = accessToken;
    _data['token_type'] = tokenType;
    _data['name'] = name;
    _data['email'] = email;
    _data['phone'] = phone;
    return _data;
  }
}