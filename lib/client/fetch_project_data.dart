import 'dart:math';

import 'package:flutter_study_202209/model/project.dart';

class FetchData {
  static Project fetchProject() {
    int id = Random().nextInt(100);
    String name = "プロジェクト${id.toString()}";
    String workTime = "${id.toString()}:${id.toString()}";
    Project project = Project(id: id, name: name, workTime: workTime);
    return project;
  }

  static List<String> fetchProjectNames() {
    const List<String> projectNames = <String>[
      'プロジェクト1',
      'プロジェクト2',
      'プロジェクト3',
      'プロジェクト4',
      'プロジェクト5',
      'プロジェクト6',
    ];
    return projectNames;
  }
}
