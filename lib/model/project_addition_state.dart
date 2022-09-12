import 'package:flutter_study_202209/model/project.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_addition_state.freezed.dart';

@freezed
class ProjectAdditionState with _$ProjectAdditionState {
  const factory ProjectAdditionState({
    @Default([]) List<Project> projectList,
  }) = _ProjectAdditionState;
}
