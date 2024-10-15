import 'package:json_annotation/json_annotation.dart';
part 'responses.g.dart';

@JsonSerializable() //used to create from json to json
class BaseReponse {
  //any response must be nullable
  @JsonKey(name: "status")
  int? status;
  @JsonKey(name: "message")
  String? message;
}

@JsonSerializable()
class CustmerResponse {
  //any response must be nullable
  @JsonKey(name: "id")
  String? id;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "numberOfNotification")
  int? numberOfNotification;
  CustmerResponse(this.id, this.name, this.numberOfNotification);
  factory CustmerResponse.fromJson(Map<String, dynamic> json) {
    return _$CustmerResponseFromJson(json);
  }
  //to json
  Map<String, dynamic> toJson() {
    return _$CustmerResponseToJson(this);
  }
}

@JsonSerializable()
class ContactResponse {
  //any response must be nullable
  @JsonKey(name: "phone")
  String? phone;
  @JsonKey(name: "email")
  String? email;
  @JsonKey(name: "link")
  String? link;
  ContactResponse(this.phone, this.email, this.link);
  factory ContactResponse.fromJson(Map<String, dynamic> json) {
    return _$ContactResponseFromJson(json);
  }
  //to json
  Map<String, dynamic> toJson() {
    return _$ContactResponseToJson(this);
  }
}

@JsonSerializable()
class AuthenticationResponse extends BaseReponse {
  @JsonKey(name: "contacts")
  ContactResponse? contacts;
  @JsonKey(name: "customer")
  CustmerResponse? customer;
  AuthenticationResponse(this.contacts, this.customer);

  //from json
  factory AuthenticationResponse.fromJson(Map<String, dynamic> json) {
    return _$AuthenticationResponseFromJson(json);
  }
  //to json
  Map<String, dynamic> toJson() {
    return _$AuthenticationResponseToJson(this);
  }
}
