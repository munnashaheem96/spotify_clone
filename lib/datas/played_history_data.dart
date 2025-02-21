class PlayedHistoryItem {
  final String thumbnail;
  final String title;
  final bool isPlaying;
  final bool isUpdated;

  PlayedHistoryItem({
    required this.thumbnail,
    required this.title,
    this.isPlaying = false,
    this.isUpdated = false,
  });
}

final List<PlayedHistoryItem> playedHistoryList = [
  PlayedHistoryItem(thumbnail: 'assets/images/dummy1.jfif', title: 'Fav', isPlaying: true, isUpdated: false),
  PlayedHistoryItem(thumbnail: 'assets/images/arjith.jpg', title: 'Arjith Singh All Songs ❤️', isPlaying: false, isUpdated: true),
  PlayedHistoryItem(thumbnail: 'assets/images/musli.jfif', title: 'pachayaYeah', isPlaying: false, isUpdated: false),
  PlayedHistoryItem(thumbnail: 'assets/images/sleepingmalayalam.jfif', title: 'Sleeping pills 💊(malayalam)', isPlaying: false, isUpdated: false),
  PlayedHistoryItem(thumbnail: 'assets/images/wittalks.jfif', title: 'WIT Talks - A Malayalam Standup Comedy Podcast', isPlaying: false, isUpdated: false),
  PlayedHistoryItem(thumbnail: 'assets/images/thesleepzone.jfif', title: 'The Sleep Zone Podcast', isPlaying: false, isUpdated: true),
  PlayedHistoryItem(thumbnail: 'assets/images/trendingmalayalam.jfif', title: 'Trending Now Malayalam', isPlaying: false, isUpdated: false),
  PlayedHistoryItem(thumbnail: 'assets/images/anirudh.jfif', title: 'Anirudh Ravichander', isPlaying: false, isUpdated: true),
];
