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
}
