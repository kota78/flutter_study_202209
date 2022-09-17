import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_study_202209/model/notification_data.dart';
import 'package:flutter_study_202209/model/notification_list.dart';

final notificationProvider =
    StateNotifierProvider<NotificationProvider, NotificationList>(
  (ref) => NotificationProvider(),
);

class NotificationProvider extends StateNotifier<NotificationList> {
  NotificationProvider() : super(const NotificationList());

  addProject(NotificationData notificationData) {
    state = state.copyWith(
        notificationList: state.notificationList + [notificationData]);
  }

  removeProject(int id) {
    List<NotificationData> notificationList = [];
    notificationList.addAll(state.notificationList);
    notificationList.removeWhere((element) => element.id == id);
    state = state.copyWith(notificationList: notificationList);
  }
}
