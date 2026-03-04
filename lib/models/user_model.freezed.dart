// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get phone =>
      throw _privateConstructorUsedError; // Onboarding responses
  String get userType => throw _privateConstructorUsedError;
  String get motivation => throw _privateConstructorUsedError;
  List<String> get barriers => throw _privateConstructorUsedError;
  String get relationshipWithAllah => throw _privateConstructorUsedError;
  String get learningStyle => throw _privateConstructorUsedError;
  String get commitmentLevel =>
      throw _privateConstructorUsedError; // Subscription
  String get subscriptionStatus => throw _privateConstructorUsedError;
  DateTime? get subscriptionExpiresAt =>
      throw _privateConstructorUsedError; // Streaks & Progress
  int get currentStreak => throw _privateConstructorUsedError;
  int get longestStreak => throw _privateConstructorUsedError;
  DateTime? get lastActivityDate => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {String id,
      String email,
      String firstName,
      String lastName,
      String phone,
      String userType,
      String motivation,
      List<String> barriers,
      String relationshipWithAllah,
      String learningStyle,
      String commitmentLevel,
      String subscriptionStatus,
      DateTime? subscriptionExpiresAt,
      int currentStreak,
      int longestStreak,
      DateTime? lastActivityDate,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? phone = null,
    Object? userType = null,
    Object? motivation = null,
    Object? barriers = null,
    Object? relationshipWithAllah = null,
    Object? learningStyle = null,
    Object? commitmentLevel = null,
    Object? subscriptionStatus = null,
    Object? subscriptionExpiresAt = freezed,
    Object? currentStreak = null,
    Object? longestStreak = null,
    Object? lastActivityDate = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String,
      motivation: null == motivation
          ? _value.motivation
          : motivation // ignore: cast_nullable_to_non_nullable
              as String,
      barriers: null == barriers
          ? _value.barriers
          : barriers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      relationshipWithAllah: null == relationshipWithAllah
          ? _value.relationshipWithAllah
          : relationshipWithAllah // ignore: cast_nullable_to_non_nullable
              as String,
      learningStyle: null == learningStyle
          ? _value.learningStyle
          : learningStyle // ignore: cast_nullable_to_non_nullable
              as String,
      commitmentLevel: null == commitmentLevel
          ? _value.commitmentLevel
          : commitmentLevel // ignore: cast_nullable_to_non_nullable
              as String,
      subscriptionStatus: null == subscriptionStatus
          ? _value.subscriptionStatus
          : subscriptionStatus // ignore: cast_nullable_to_non_nullable
              as String,
      subscriptionExpiresAt: freezed == subscriptionExpiresAt
          ? _value.subscriptionExpiresAt
          : subscriptionExpiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      currentStreak: null == currentStreak
          ? _value.currentStreak
          : currentStreak // ignore: cast_nullable_to_non_nullable
              as int,
      longestStreak: null == longestStreak
          ? _value.longestStreak
          : longestStreak // ignore: cast_nullable_to_non_nullable
              as int,
      lastActivityDate: freezed == lastActivityDate
          ? _value.lastActivityDate
          : lastActivityDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String email,
      String firstName,
      String lastName,
      String phone,
      String userType,
      String motivation,
      List<String> barriers,
      String relationshipWithAllah,
      String learningStyle,
      String commitmentLevel,
      String subscriptionStatus,
      DateTime? subscriptionExpiresAt,
      int currentStreak,
      int longestStreak,
      DateTime? lastActivityDate,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? phone = null,
    Object? userType = null,
    Object? motivation = null,
    Object? barriers = null,
    Object? relationshipWithAllah = null,
    Object? learningStyle = null,
    Object? commitmentLevel = null,
    Object? subscriptionStatus = null,
    Object? subscriptionExpiresAt = freezed,
    Object? currentStreak = null,
    Object? longestStreak = null,
    Object? lastActivityDate = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$UserModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String,
      motivation: null == motivation
          ? _value.motivation
          : motivation // ignore: cast_nullable_to_non_nullable
              as String,
      barriers: null == barriers
          ? _value._barriers
          : barriers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      relationshipWithAllah: null == relationshipWithAllah
          ? _value.relationshipWithAllah
          : relationshipWithAllah // ignore: cast_nullable_to_non_nullable
              as String,
      learningStyle: null == learningStyle
          ? _value.learningStyle
          : learningStyle // ignore: cast_nullable_to_non_nullable
              as String,
      commitmentLevel: null == commitmentLevel
          ? _value.commitmentLevel
          : commitmentLevel // ignore: cast_nullable_to_non_nullable
              as String,
      subscriptionStatus: null == subscriptionStatus
          ? _value.subscriptionStatus
          : subscriptionStatus // ignore: cast_nullable_to_non_nullable
              as String,
      subscriptionExpiresAt: freezed == subscriptionExpiresAt
          ? _value.subscriptionExpiresAt
          : subscriptionExpiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      currentStreak: null == currentStreak
          ? _value.currentStreak
          : currentStreak // ignore: cast_nullable_to_non_nullable
              as int,
      longestStreak: null == longestStreak
          ? _value.longestStreak
          : longestStreak // ignore: cast_nullable_to_non_nullable
              as int,
      lastActivityDate: freezed == lastActivityDate
          ? _value.lastActivityDate
          : lastActivityDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl(
      {required this.id,
      required this.email,
      this.firstName = '',
      this.lastName = '',
      this.phone = '',
      this.userType = '',
      this.motivation = '',
      final List<String> barriers = const [],
      this.relationshipWithAllah = '',
      this.learningStyle = '',
      this.commitmentLevel = '',
      this.subscriptionStatus = 'free',
      this.subscriptionExpiresAt,
      this.currentStreak = 0,
      this.longestStreak = 0,
      this.lastActivityDate,
      this.createdAt,
      this.updatedAt})
      : _barriers = barriers;

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final String id;
  @override
  final String email;
  @override
  @JsonKey()
  final String firstName;
  @override
  @JsonKey()
  final String lastName;
  @override
  @JsonKey()
  final String phone;
// Onboarding responses
  @override
  @JsonKey()
  final String userType;
  @override
  @JsonKey()
  final String motivation;
  final List<String> _barriers;
  @override
  @JsonKey()
  List<String> get barriers {
    if (_barriers is EqualUnmodifiableListView) return _barriers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_barriers);
  }

  @override
  @JsonKey()
  final String relationshipWithAllah;
  @override
  @JsonKey()
  final String learningStyle;
  @override
  @JsonKey()
  final String commitmentLevel;
// Subscription
  @override
  @JsonKey()
  final String subscriptionStatus;
  @override
  final DateTime? subscriptionExpiresAt;
// Streaks & Progress
  @override
  @JsonKey()
  final int currentStreak;
  @override
  @JsonKey()
  final int longestStreak;
  @override
  final DateTime? lastActivityDate;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'UserModel(id: $id, email: $email, firstName: $firstName, lastName: $lastName, phone: $phone, userType: $userType, motivation: $motivation, barriers: $barriers, relationshipWithAllah: $relationshipWithAllah, learningStyle: $learningStyle, commitmentLevel: $commitmentLevel, subscriptionStatus: $subscriptionStatus, subscriptionExpiresAt: $subscriptionExpiresAt, currentStreak: $currentStreak, longestStreak: $longestStreak, lastActivityDate: $lastActivityDate, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.motivation, motivation) ||
                other.motivation == motivation) &&
            const DeepCollectionEquality().equals(other._barriers, _barriers) &&
            (identical(other.relationshipWithAllah, relationshipWithAllah) ||
                other.relationshipWithAllah == relationshipWithAllah) &&
            (identical(other.learningStyle, learningStyle) ||
                other.learningStyle == learningStyle) &&
            (identical(other.commitmentLevel, commitmentLevel) ||
                other.commitmentLevel == commitmentLevel) &&
            (identical(other.subscriptionStatus, subscriptionStatus) ||
                other.subscriptionStatus == subscriptionStatus) &&
            (identical(other.subscriptionExpiresAt, subscriptionExpiresAt) ||
                other.subscriptionExpiresAt == subscriptionExpiresAt) &&
            (identical(other.currentStreak, currentStreak) ||
                other.currentStreak == currentStreak) &&
            (identical(other.longestStreak, longestStreak) ||
                other.longestStreak == longestStreak) &&
            (identical(other.lastActivityDate, lastActivityDate) ||
                other.lastActivityDate == lastActivityDate) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      email,
      firstName,
      lastName,
      phone,
      userType,
      motivation,
      const DeepCollectionEquality().hash(_barriers),
      relationshipWithAllah,
      learningStyle,
      commitmentLevel,
      subscriptionStatus,
      subscriptionExpiresAt,
      currentStreak,
      longestStreak,
      lastActivityDate,
      createdAt,
      updatedAt);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {required final String id,
      required final String email,
      final String firstName,
      final String lastName,
      final String phone,
      final String userType,
      final String motivation,
      final List<String> barriers,
      final String relationshipWithAllah,
      final String learningStyle,
      final String commitmentLevel,
      final String subscriptionStatus,
      final DateTime? subscriptionExpiresAt,
      final int currentStreak,
      final int longestStreak,
      final DateTime? lastActivityDate,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  String get id;
  @override
  String get email;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get phone; // Onboarding responses
  @override
  String get userType;
  @override
  String get motivation;
  @override
  List<String> get barriers;
  @override
  String get relationshipWithAllah;
  @override
  String get learningStyle;
  @override
  String get commitmentLevel; // Subscription
  @override
  String get subscriptionStatus;
  @override
  DateTime? get subscriptionExpiresAt; // Streaks & Progress
  @override
  int get currentStreak;
  @override
  int get longestStreak;
  @override
  DateTime? get lastActivityDate;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
