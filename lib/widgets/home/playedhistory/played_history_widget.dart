import 'package:flutter/material.dart';
import 'package:spotify_clone/datas/played_history_data.dart';
import 'package:spotify_clone/widgets/home/playedhistory/played_history.dart';

class PlayedHistoryWidget extends StatelessWidget {
  const PlayedHistoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        spacing: 8,
        children: [
          for (int i = 0; i < playedHistoryList.length; i += 2)
            Row(
              spacing: 8,
              children: [
                if (i < playedHistoryList.length)
                  PlayedHistory(
                    thumbnail: playedHistoryList[i].thumbnail,
                    textHistory: playedHistoryList[i].title,
                    isPlaying: playedHistoryList[i].isPlaying,
                    isUpdated: playedHistoryList[i].isUpdated,
                  ),
                if (i + 1 < playedHistoryList.length)
                  PlayedHistory(
                    thumbnail: playedHistoryList[i + 1].thumbnail,
                    textHistory: playedHistoryList[i + 1].title,
                    isPlaying: playedHistoryList[i + 1].isPlaying,
                    isUpdated: playedHistoryList[i + 1].isUpdated,
                  ),
              ],
            ),
        ],
      ),
    );
  }
}
