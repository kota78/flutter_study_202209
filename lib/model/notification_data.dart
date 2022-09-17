import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_data.freezed.dart';

@freezed
class NotificationData with _$NotificationData {
  const NotificationData._();

  factory NotificationData({
    required DateTime dateTime,
    required String content,
    required int id,
  }) = _NotificationData;
}
