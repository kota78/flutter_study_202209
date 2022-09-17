// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notification_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotificationList {
  List<NotificationData> get notificationList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationListCopyWith<NotificationList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationListCopyWith<$Res> {
  factory $NotificationListCopyWith(
          NotificationList value, $Res Function(NotificationList) then) =
      _$NotificationListCopyWithImpl<$Res>;
  $Res call({List<NotificationData> notificationList});
}

/// @nodoc
class _$NotificationListCopyWithImpl<$Res>
    implements $NotificationListCopyWith<$Res> {
  _$NotificationListCopyWithImpl(this._value, this._then);

  final NotificationList _value;
  // ignore: unused_field
  final $Res Function(NotificationList) _then;

  @override
  $Res call({
    Object? notificationList = freezed,
  }) {
    return _then(_value.copyWith(
      notificationList: notificationList == freezed
          ? _value.notificationList
          : notificationList // ignore: cast_nullable_to_non_nullable
              as List<NotificationData>,
    ));
  }
}

/// @nodoc
abstract class _$$_NotificationListCopyWith<$Res>
    implements $NotificationListCopyWith<$Res> {
  factory _$$_NotificationListCopyWith(
          _$_NotificationList value, $Res Function(_$_NotificationList) then) =
      __$$_NotificationListCopyWithImpl<$Res>;
  @override
  $Res call({List<NotificationData> notificationList});
}

/// @nodoc
class __$$_NotificationListCopyWithImpl<$Res>
    extends _$NotificationListCopyWithImpl<$Res>
    implements _$$_NotificationListCopyWith<$Res> {
  __$$_NotificationListCopyWithImpl(
      _$_NotificationList _value, $Res Function(_$_NotificationList) _then)
      : super(_value, (v) => _then(v as _$_NotificationList));

  @override
  _$_NotificationList get _value => super._value as _$_NotificationList;

  @override
  $Res call({
    Object? notificationList = freezed,
  }) {
    return _then(_$_NotificationList(
      notificationList: notificationList == freezed
          ? _value._notificationList
          : notificationList // ignore: cast_nullable_to_non_nullable
              as List<NotificationData>,
    ));
  }
}

/// @nodoc

class _$_NotificationList implements _NotificationList {
  const _$_NotificationList(
      {final List<NotificationData> notificationList = const []})
      : _notificationList = notificationList;

  final List<NotificationData> _notificationList;
  @override
  @JsonKey()
  List<NotificationData> get notificationList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notificationList);
  }

  @override
  String toString() {
    return 'NotificationList(notificationList: $notificationList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationList &&
            const DeepCollectionEquality()
                .equals(other._notificationList, _notificationList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_notificationList));

  @JsonKey(ignore: true)
  @override
  _$$_NotificationListCopyWith<_$_NotificationList> get copyWith =>
      __$$_NotificationListCopyWithImpl<_$_NotificationList>(this, _$identity);
}

abstract class _NotificationList implements NotificationList {
  const factory _NotificationList(
      {final List<NotificationData> notificationList}) = _$_NotificationList;

  @override
  List<NotificationData> get notificationList;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationListCopyWith<_$_NotificationList> get copyWith =>
      throw _privateConstructorUsedError;
}
