import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_study_202209/components/project_card.dart';
import 'package:flutter_study_202209/provider/project_addition_provider.dart';

class ProjectAddition extends ConsumerWidget {
  const ProjectAddition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final projectAdditionState = ref.watch(projectAdditionProvider);
    final projectAdditionNotifier = ref.watch(projectAdditionProvider.notifier);
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: projectAdditionState.projectList.length + 1,
        itemBuilder: (context, index) {
          if (index == projectAdditionState.projectList.length) {
            return TextButton(
              onPressed: () {
                projectAdditionNotifier.addProject(
                  ProjectCard(projectCount: projectAdditionState.projectCount),
                );
                projectAdditionNotifier.incrementProjectCount();
              },
              child: const Text("+プロジェクトを追加"),
            );
          }
          final item = projectAdditionState.projectList[index];
          return item;
        },
      ),
    );
  }
}
