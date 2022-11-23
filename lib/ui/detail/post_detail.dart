import 'package:flutter/material.dart';
import 'package:travel_app_ui/core/helper/theme_helper.dart';
import 'package:travel_app_ui/ui/detail/widget/sliver/sliver_appbar.dart';
import 'package:travel_app_ui/ui/detail/widget/sliver/sliver_post_info.dart';

class PostDetailPage extends StatefulWidget {
  const PostDetailPage({super.key});

  @override
  State<PostDetailPage> createState() => _PostDetailPageState();
}

class _PostDetailPageState extends State<PostDetailPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ThemeHelper.backgroundColor,
      body: const CustomScrollView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        slivers: [PostSliverAppBar(), SliverPostInfo()],
      ),
    );
  }
}
