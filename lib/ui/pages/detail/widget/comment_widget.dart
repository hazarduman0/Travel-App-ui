import 'package:flutter/material.dart';
import 'package:travel_app_ui/core/constants/keys.dart';

class CommentWidget extends StatelessWidget {
  const CommentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        ListTile(
          leading: const CircleAvatar(),
          title: Text("Hazar Duman",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontWeight: FontWeight.w700)),
          subtitle: Text(shortShortLorem,
              style: Theme.of(context).textTheme.bodyMedium),
        ),
        Divider(
          thickness: 1.5,
          indent: size.shortestSide * 0.1,
          endIndent: size.shortestSide * 0.1,
        )
      ],
    );
  }
}