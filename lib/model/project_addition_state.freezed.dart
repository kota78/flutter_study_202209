// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'project_addition_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProjectAdditionState {
  List<Project> get projectList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjectAdditionStateCopyWith<ProjectAdditionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectAdditionStateCopyWith<$Res> {
  factory $ProjectAdditionStateCopyWith(ProjectAdditionState value,
          $Res Function(ProjectAdditionState) then) =
      _$ProjectAdditionStateCopyWithImpl<$Res>;
  $Res call({List<Project> projectList});
}

/// @nodoc
class _$ProjectAdditionStateCopyWithImpl<$Res>
    implements $ProjectAdditionStateCopyWith<$Res> {
  _$ProjectAdditionStateCopyWithImpl(this._value, this._then);

  final ProjectAdditionState _value;
  // ignore: unused_field
  final $Res Function(ProjectAdditionState) _then;

  @override
  $Res call({
    Object? projectList = freezed,
  }) {
    return _then(_value.copyWith(
      projectList: projectList == freezed
          ? _value.projectList
          : projectList // ignore: cast_nullable_to_non_nullable
              as List<Project>,
    ));
  }
}

/// @nodoc
abstract class _$$_ProjectAdditionStateCopyWith<$Res>
    implements $ProjectAdditionStateCopyWith<$Res> {
  factory _$$_ProjectAdditionStateCopyWith(_$_ProjectAdditionState value,
          $Res Function(_$_ProjectAdditionState) then) =
      __$$_ProjectAdditionStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Project> projectList});
}

/// @nodoc
class __$$_ProjectAdditionStateCopyWithImpl<$Res>
    extends _$ProjectAdditionStateCopyWithImpl<$Res>
    implements _$$_ProjectAdditionStateCopyWith<$Res> {
  __$$_ProjectAdditionStateCopyWithImpl(_$_ProjectAdditionState _value,
      $Res Function(_$_ProjectAdditionState) _then)
      : super(_value, (v) => _then(v as _$_ProjectAdditionState));

  @override
  _$_ProjectAdditionState get _value => super._value as _$_ProjectAdditionState;

  @override
  $Res call({
    Object? projectList = freezed,
  }) {
    return _then(_$_ProjectAdditionState(
      projectList: projectList == freezed
          ? _value._projectList
          : projectList // ignore: cast_nullable_to_non_nullable
              as List<Project>,
    ));
  }
}

/// @nodoc

class _$_ProjectAdditionState implements _ProjectAdditionState {
  const _$_ProjectAdditionState({final List<Project> projectList = const []})
      : _projectList = projectList;

  final List<Project> _projectList;
  @override
  @JsonKey()
  List<Project> get projectList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projectList);
  }

  @override
  String toString() {
    return 'ProjectAdditionState(projectList: $projectList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProjectAdditionState &&
            const DeepCollectionEquality()
                .equals(other._projectList, _projectList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_projectList));

  @JsonKey(ignore: true)
  @override
  _$$_ProjectAdditionStateCopyWith<_$_ProjectAdditionState> get copyWith =>
      __$$_ProjectAdditionStateCopyWithImpl<_$_ProjectAdditionState>(
          this, _$identity);
}

abstract class _ProjectAdditionState implements ProjectAdditionState {
  const factory _ProjectAdditionState({final List<Project> projectList}) =
      _$_ProjectAdditionState;

  @override
  List<Project> get projectList;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectAdditionStateCopyWith<_$_ProjectAdditionState> get copyWith =>
      throw _privateConstructorUsedError;
}
