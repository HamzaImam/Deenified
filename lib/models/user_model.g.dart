// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'] as String,
      email: json['email'] as String,
      firstName: json['firstName'] as String? ?? '',
      lastName: json['lastName'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      userType: json['userType'] as String? ?? '',
      motivation: json['motivation'] as String? ?? '',
      barriers: (json['barriers'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      relationshipWithAllah: json['relationshipWithAllah'] as String? ?? '',
      learningStyle: json['learningStyle'] as String? ?? '',
      commitmentLevel: json['commitmentLevel'] as String? ?? '',
      subscriptionStatus: json['subscriptionStatus'] as String? ?? 'free',
      subscriptionExpiresAt: json['subscriptionExpiresAt'] == null
          ? null
          : DateTime.parse(json['subscriptionExpiresAt'] as String),
      currentStreak: (json['currentStreak'] as num?)?.toInt() ?? 0,
      longestStreak: (json['longestStreak'] as num?)?.toInt() ?? 0,
      lastActivityDate: json['lastActivityDate'] == null
          ? null
          : DateTime.parse(json['lastActivityDate'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'phone': instance.phone,
      'userType': instance.userType,
      'motivation': instance.motivation,
      'barriers': instance.barriers,
      'relationshipWithAllah': instance.relationshipWithAllah,
      'learningStyle': instance.learningStyle,
      'commitmentLevel': instance.commitmentLevel,
      'subscriptionStatus': instance.subscriptionStatus,
      'subscriptionExpiresAt':
          instance.subscriptionExpiresAt?.toIso8601String(),
      'currentStreak': instance.currentStreak,
      'longestStreak': instance.longestStreak,
      'lastActivityDate': instance.lastActivityDate?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
