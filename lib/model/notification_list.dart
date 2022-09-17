import 'package:flutter_study_202209/model/notification_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_list.freezed.dart';

@freezed
class NotificationList with _$NotificationList {
  const factory NotificationList({
    @Default([]) List<NotificationData> notificationList,
  }) = _NotificationList;
}
