import 'package:flutter/material.dart';
import 'package:travel_app_ui/core/enums.dart';
import 'package:travel_app_ui/ui/pages/notification/widget/notification_widget.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: size.width,
      child: ListView(
        children: notificationList,
      ),
    );
  }

  List<Widget> notificationList = [
    NotificationWidget(notificationType: NotificationType.follow),
    NotificationWidget(notificationType: NotificationType.like),
    NotificationWidget(notificationType: NotificationType.comment),
    NotificationWidget(notificationType: NotificationType.comment),
    NotificationWidget(notificationType: NotificationType.like),
    NotificationWidget(notificationType: NotificationType.like),
    NotificationWidget(notificationType: NotificationType.comment),
    NotificationWidget(notificationType: NotificationType.follow),
    NotificationWidget(notificationType: NotificationType.like),
    NotificationWidget(notificationType: NotificationType.follow),
    NotificationWidget(notificationType: NotificationType.like),
  ];
}
