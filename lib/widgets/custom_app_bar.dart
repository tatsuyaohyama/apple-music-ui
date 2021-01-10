import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final Widget body;
  final Function rightActionOnTap;

  CustomAppBar({
    this.title,
    this.body,
    this.rightActionOnTap,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            CupertinoSliverNavigationBar(
              largeTitle: Text(
                title,
              ),
              trailing: GestureDetector(
                onTap: rightActionOnTap,
                child: Container(
                  child: Text(
                    '編集',
                    style: TextStyle(
                      color: Colors.redAccent.shade200,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
            ),
          ];
        },
        body: body,
      ),
    );
  }
}
