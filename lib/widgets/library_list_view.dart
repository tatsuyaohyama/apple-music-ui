import 'package:apple_music_ui/widgets/library_list_tile.dart';
import 'package:flutter/material.dart';

class LibraryListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Column(
        children: [
          LibraryListTile(
            title: 'プレイリスト',
            icon: Icons.queue_music,
            tapHandler: () {},
          ),
          LibraryListTile(
            title: 'アーティスト',
            icon: Icons.mic,
            tapHandler: () {},
          ),
          LibraryListTile(
            title: 'アルバム',
            icon: Icons.album,
            tapHandler: () {},
          ),
          LibraryListTile(
            title: '曲',
            icon: Icons.music_note,
            tapHandler: () {},
          ),
          LibraryListTile(
            title: 'ダウンロード済み',
            icon: Icons.download_sharp,
            tapHandler: () {},
          ),
        ],
      ),
    );
  }
}
