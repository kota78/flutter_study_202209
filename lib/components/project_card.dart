import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_study_202209/components/drop_down_list.dart';
import 'package:flutter_study_202209/components/time_picker.dart';
import 'package:flutter_study_202209/provider/project_addition_provider.dart';

class ProjectCard extends ConsumerWidget {
  const ProjectCard({Key? key, required this.projectCount}) : super(key: key);
  final int projectCount;
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
              const Text("プロジェクト"),
              Text((projectCount + 1).toString()),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.cancel_outlined),
                onPressed: () {
                  projectAdditionNotifier.removeProject(projectCount);
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
