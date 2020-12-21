import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final Widget body;

  CustomAppBar({
    this.title,
    this.body,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            CupertinoSliverNavigationBar(
              largeTitle: Text(title),
            ),
          ];
        },
        body: body,
      ),
    );
  }
}
