import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:travel_app_ui/core/enums.dart';
import 'package:travel_app_ui/ui/widget/circle_avatar.dart';

class NotificationWidget extends StatelessWidget {
  NotificationWidget({super.key, required this.notificationType});

  NotificationType notificationType;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    switch (notificationType) {
      case NotificationType.comment:
        {
          return commentNotification(size, context);
        }
      case NotificationType.follow:
        {
          return followNotification(size, context);
        }
      case NotificationType.like:
        {
          return likeNotification(size, context);
        }
      default:
        {
          return const SizedBox.shrink();
        }
    }
  }

  Widget likeNotification(Size size, BuildContext context) => SizedBox(
        height: size.height * 0.1,
        width: size.width,
        child: ListTile(
          leading: const CircleAvatar(),
          title: _rowWidget('Name', 'liked your reel', context),
          trailing: Image.network(
            'https://www.befunky.com/images/prismic/5ddfea42-7377-4bef-9ac4-f3bd407d52ab_landing-photo-to-cartoon-img5.jpeg?auto=avif,webp&format=jpg&width=863',
            fit: BoxFit.cover,
            height: size.shortestSide * 0.1,
            width: size.shortestSide * 0.1,
          ),
        ),
      );

  Widget commentNotification(Size size, BuildContext context) => SizedBox(
        height: size.height * 0.1,
        width: size.width,
        child: ListTile(
          leading: const CircleAvatar(),
          title: _rowWidget('Name', 'commented:', context),
          subtitle: AutoSizeText(
            'nice one',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          trailing: Image.network(
            'https://www.befunky.com/images/prismic/5ddfea42-7377-4bef-9ac4-f3bd407d52ab_landing-photo-to-cartoon-img5.jpeg?auto=avif,webp&format=jpg&width=863',
            fit: BoxFit.cover,
            height: size.shortestSide * 0.1,
            width: size.shortestSide * 0.1,
          ),
        ),
      );

  Widget followNotification(Size size, BuildContext context) => SizedBox(
        height: size.height * 0.1,
        width: size.width,
        child: ListTile(
          leading: const CircleAvatar(),
          title: _rowWidget('Name', 'start to following you.', context),
          trailing: _notificationButton('Confirm', context,
              size.shortestSide * 0.1, size.shortestSide * 0.25),
        ),
      );

  Widget _notificationButton(
          String text, BuildContext context, double height, double width) =>
      SizedBox(
        height: height,
        width: width,
        child: ElevatedButton(
            onPressed: () {},
            child: AutoSizeText(
              text,
              style: Theme.of(context).textTheme.bodyMedium,
            )),
      );

  Widget _rowWidget(String name, String text, BuildContext context) => Row(
        children: [
          AutoSizeText(
            '$name ',
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(fontSize: 10.0),
          ),
          AutoSizeText(
            text,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(fontSize: 10.0, fontWeight: FontWeight.w300),
          ),
        ],
      );
}
