// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notification_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotificationData {
  DateTime get dateTime => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationDataCopyWith<NotificationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationDataCopyWith<$Res> {
  factory $NotificationDataCopyWith(
          NotificationData value, $Res Function(NotificationData) then) =
      _$NotificationDataCopyWithImpl<$Res>;
  $Res call({DateTime dateTime, String content, int id});
}

/// @nodoc
class _$NotificationDataCopyWithImpl<$Res>
    implements $NotificationDataCopyWith<$Res> {
  _$NotificationDataCopyWithImpl(this._value, this._then);

  final NotificationData _value;
  // ignore: unused_field
  final $Res Function(NotificationData) _then;

  @override
  $Res call({
    Object? dateTime = freezed,
    Object? content = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_NotificationDataCopyWith<$Res>
    implements $NotificationDataCopyWith<$Res> {
  factory _$$_NotificationDataCopyWith(
          _$_NotificationData value, $Res Function(_$_NotificationData) then) =
      __$$_NotificationDataCopyWithImpl<$Res>;
  @override
  $Res call({DateTime dateTime, String content, int id});
}

/// @nodoc
class __$$_NotificationDataCopyWithImpl<$Res>
    extends _$NotificationDataCopyWithImpl<$Res>
    implements _$$_NotificationDataCopyWith<$Res> {
  __$$_NotificationDataCopyWithImpl(
      _$_NotificationData _value, $Res Function(_$_NotificationData) _then)
      : super(_value, (v) => _then(v as _$_NotificationData));

  @override
  _$_NotificationData get _value => super._value as _$_NotificationData;

  @override
  $Res call({
    Object? dateTime = freezed,
    Object? content = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_NotificationData(
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_NotificationData extends _NotificationData {
  _$_NotificationData(
      {required this.dateTime, required this.content, required this.id})
      : super._();

  @override
  final DateTime dateTime;
  @override
  final String content;
  @override
  final int id;

  @override
  String toString() {
    return 'NotificationData(dateTime: $dateTime, content: $content, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationData &&
            const DeepCollectionEquality().equals(other.dateTime, dateTime) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dateTime),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_NotificationDataCopyWith<_$_NotificationData> get copyWith =>
      __$$_NotificationDataCopyWithImpl<_$_NotificationData>(this, _$identity);
}

abstract class _NotificationData extends NotificationData {
  factory _NotificationData(
      {required final DateTime dateTime,
      required final String content,
      required final int id}) = _$_NotificationData;
  _NotificationData._() : super._();

  @override
  DateTime get dateTime;
  @override
  String get content;
  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationDataCopyWith<_$_NotificationData> get copyWith =>
      throw _privateConstructorUsedError;
}
