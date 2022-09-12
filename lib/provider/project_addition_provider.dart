import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_study_202209/model/project.dart';
import 'package:flutter_study_202209/model/project_addition_state.dart';

final projectAdditionProvider =
    StateNotifierProvider<ProjectAdditionProvider, ProjectAdditionState>(
  (ref) => ProjectAdditionProvider(),
);

class ProjectAdditionProvider extends StateNotifier<ProjectAdditionState> {
  ProjectAdditionProvider() : super(const ProjectAdditionState());

  addProject(Project project) {
    state = state.copyWith(projectList: state.projectList + [project]);
  }

  removeProject(int id) {
    List<Project> projectList = [];
    projectList.addAll(state.projectList);
    projectList.removeWhere((element) => element.id == id);
    state = state.copyWith(projectList: projectList);
  }
}
