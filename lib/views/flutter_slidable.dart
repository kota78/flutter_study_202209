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

// class SlidableView extends StatefulWidget {
//   const SlidableView({Key? key}) : super(key: key);
//
//   @override
//   State<SlidableView> createState() => _SlidableViewState();
// }

// class _SlidableViewState extends State<SlidableView> {
//   final now = DateFormat('yyyy.MM.dd HH:mm').format(DateTime.now());
//   List names = List.generate(10, (index) => (index + 1).toString());
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(
//             elevation: 0,
//             backgroundColor: Colors.white,
//             title: const Text(
//               "お知らせ一覧",
//               style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 16,
//                   fontWeight: FontWeight.w700),
//             ),
//           ),
//           body: SlidableAutoCloseBehavior(
//             closeWhenTapped: true,
//             child: ListView.builder(
//               key: const ValueKey(0),
//               itemCount: names.length,
//               itemBuilder: (context, index) {
//                 return Slidable(
//                   endActionPane: ActionPane(
//                     extentRatio: 0.2,
//                     motion: ScrollMotion(),
//                     children: [
//                       SlidableAction(
//                         backgroundColor: Colors.red,
//                         icon: Icons.delete_outlined,
//                         autoClose: true,
//                         onPressed: (_) {
//                           setState(() {
//                             names.removeAt(index);
//                           });
//                         },
//                       ),
//                     ],
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(4.0),
//                     child: Card(
//                       child: ListTile(
//                         title: Text(
//                           "${now.toString()}\n${names[index]}内容内容内容内容内容内容内容内容",
//                           style: TextStyle(
//                             fontWeight: FontWeight.w400,
//                             fontSize: 12,
//                           ),
//                         ),
//                         trailing: Icon(
//                           Icons.arrow_forward_ios,
//                           size: 20,
//                         ),
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             ),
//           )),
//     );
//   }
// }
