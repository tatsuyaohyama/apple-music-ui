import 'package:apple_music_ui/widgets/custom_app_bar.dart';
import 'package:apple_music_ui/widgets/library_list_view.dart';
import 'package:apple_music_ui/widgets/song_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LibraryScreen extends StatelessWidget {
  final imageList = [
    'assets/images/sample1.jpg',
    'assets/images/sample2.jpg',
    'assets/images/sample3.jpg',
    'assets/images/sample4.jpg',
    'assets/images/sample5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomAppBar(
        title: 'ライブラリ',
        rightActionOnTap: () {},
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 14.0,
          ),
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    LibraryListView(),
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: 10.0,
                      ),
                      child: Text(
                        '最近追加した項目',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: (1 / 1.2),
                ),
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return SongTile(
                      index: index + 1,
                      imageUrl: imageList[index],
                    );
                  },
                  childCount: imageList.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
