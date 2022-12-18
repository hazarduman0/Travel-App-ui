import 'package:flutter/material.dart';
import 'package:travel_app_ui/ui/pages/detail/widget/comment_widget.dart';

class SliverCommentField extends StatelessWidget {
  const SliverCommentField({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
            childCount: 5, (context, index) => const CommentWidget()));
  }
}
