import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_study_202209/model/notification_data.dart';
import 'package:flutter_study_202209/provider/notification_provider.dart';

class SlidableView extends ConsumerWidget {
  const SlidableView({Key? key}) : super(key: key);

  static NotificationData fetchNotification() {
    int id = Random().nextInt(100);
    String content = "内容${id.toString()}";
    DateTime dateTime = DateTime.now();
    NotificationData notificationData =
        NotificationData(id: id, content: content, dateTime: dateTime);
    return notificationData;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notificationList = ref.watch(notificationProvider);
    final notificationNotifier = ref.watch(notificationProvider.notifier);
    NotificationData newNotification;
    return Scaffold(
      appBar: AppBar(),
      body: SlidableAutoCloseBehavior(
        closeWhenTapped: true,
        child: ListView.builder(
          itemCount: notificationList.notificationList.length,
          itemBuilder: (context, index) {
            final notification = notificationList.notificationList[index];
            return Slidable(
              endActionPane: ActionPane(
                extentRatio: 0.2,
                motion: const ScrollMotion(),
                children: [
                  SlidableAction(
                    backgroundColor: Colors.red,
                    icon: Icons.delete_outlined,
                    autoClose: true,
                    onPressed: (_) {
                      notificationNotifier.removeProject(notification.id);
                    },
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.all(4.0),
                child: Card(
                  child: ListTile(
                    title: Text(
                      notification.content,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          newNotification = fetchNotification();
          notificationNotifier.addProject(newNotification);
          print(notificationList.toString());
        },
      ),
    );
  }
}
