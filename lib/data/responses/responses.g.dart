// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'responses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseReponse _$BaseReponseFromJson(Map<String, dynamic> json) => BaseReponse()
  ..status = (json['status'] as num?)?.toInt()
  ..message = json['message'] as String?;

Map<String, dynamic> _$BaseReponseToJson(BaseReponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

CustmerResponse _$CustmerResponseFromJson(Map<String, dynamic> json) =>
    CustmerResponse(
      json['id'] as String?,
      json['name'] as String?,
      (json['numberOfNotification'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CustmerResponseToJson(CustmerResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'numberOfNotification': instance.numberOfNotification,
    };

ContactResponse _$ContactResponseFromJson(Map<String, dynamic> json) =>
    ContactResponse(
      json['phone'] as String?,
      json['email'] as String?,
      json['link'] as String?,
    );

Map<String, dynamic> _$ContactResponseToJson(ContactResponse instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'email': instance.email,
      'link': instance.link,
    };

AuthenticationResponse _$AuthenticationResponseFromJson(
        Map<String, dynamic> json) =>
    AuthenticationResponse(
      json['contacts'] == null
          ? null
          : ContactResponse.fromJson(json['contacts'] as Map<String, dynamic>),
      json['customer'] == null
          ? null
          : CustmerResponse.fromJson(json['customer'] as Map<String, dynamic>),
    )
      ..status = (json['status'] as num?)?.toInt()
      ..message = json['message'] as String?;

Map<String, dynamic> _$AuthenticationResponseToJson(
        AuthenticationResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'contacts': instance.contacts,
      'customer': instance.customer,
    };
