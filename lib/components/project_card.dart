import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_study_202209/components/drop_down_list.dart';
import 'package:flutter_study_202209/components/time_picker.dart';
import 'package:flutter_study_202209/model/project.dart';
import 'package:flutter_study_202209/provider/project_addition_provider.dart';

class ProjectCard extends ConsumerWidget {
  const ProjectCard(
      {Key? key, required this.project, required this.projectNames})
      : super(key: key);
  final Project project;
  final List<String> projectNames;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final projectAdditionNotifier = ref.watch(projectAdditionProvider.notifier);
    return Card(
      color: Colors.grey[200],
      margin: const EdgeInsets.all(30),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(project.name),
              Text((project.id).toString()),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.cancel_outlined),
                onPressed: () {
                  projectAdditionNotifier.removeProject(project.id);
                },
              ),
            ],
          ),
          const DropDownList(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text("勤務時間"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              TimePicker(),
            ],
          ),
        ],
      ),
    );
  }
}
