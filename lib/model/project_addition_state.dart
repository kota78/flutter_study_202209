import 'package:flutter/material.dart';
import 'package:flutter_study_202209/components/project_card.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_addition_state.freezed.dart';

@freezed
class ProjectAdditionState with _$ProjectAdditionState {
  const factory ProjectAdditionState({
    @Default([]) List<ProjectCard> projectList,
    @Default(0) int projectCount,
  }) = _ProjectAdditionState;
}
