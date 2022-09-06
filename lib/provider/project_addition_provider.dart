import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_study_202209/components/project_card.dart';
import 'package:flutter_study_202209/model/project_addition_state.dart';

final projectAdditionProvider =
    StateNotifierProvider<ProjectAdditionProvider, ProjectAdditionState>(
  (ref) => ProjectAdditionProvider(),
);

class ProjectAdditionProvider extends StateNotifier<ProjectAdditionState> {
  ProjectAdditionProvider() : super(const ProjectAdditionState());

  incrementProjectCount() {
    int projectCount = state.projectCount;
    projectCount++;
    state = state.copyWith(projectCount: projectCount);
  }

  addProject(ProjectCard project) {
    state = state.copyWith(projectList: state.projectList + [project]);
  }

  removeProject(int projectCount) {
    List<ProjectCard> projectList = [];
    projectList.addAll(state.projectList);
    projectList.removeWhere((element) => element.projectCount == projectCount);
    state = state.copyWith(projectList: projectList);
  }
}
