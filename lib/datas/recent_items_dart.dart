class RecentItems {
  final String thumbnail;
  final String title;
  final String description;
  final String type;
  final String creator;
  final bool isPlaying;
  final bool isUpdated;

  RecentItems({
    required this.thumbnail,
    required this.title,
    required this.description,
    required this.type,
    required this.creator,
    this.isPlaying = false,
    this.isUpdated = false,
  });
}

final List<RecentItems> recentItems = [
  RecentItems(
    thumbnail: 'assets/images/dummy1.jfif',
    title: 'Fav',
    description: 'Favorite songs collection',
    type: 'Playlist',
    creator: 'Munna Shaheem',
    isPlaying: true,
    isUpdated: false,
  ),
  RecentItems(
    thumbnail: 'assets/images/arjith.jpg',
    title: 'Arjith Singh All Songs ❤️',
    description: 'All songs by Arjith Singh',
    type: 'Playlist',
    creator: 'Indian Playlists',
    isPlaying: false,
    isUpdated: true,
  ),
  RecentItems(
    thumbnail: 'assets/images/musli.jfif',
    title: 'pachayaYeah',
    description: 'A collection of pachayaYeah songs',
    type: 'Playlist',
    creator: 'Musli',
    isPlaying: false,
    isUpdated: false,
  ),
  RecentItems(
    thumbnail: 'assets/images/sleepingmalayalam.jfif',
    title: 'Sleeping pills 💊(malayalam)',
    description: 'Malayalam songs to help you sleep',
    type: 'Playlist',
    creator: 'gauti',
    isPlaying: false,
    isUpdated: false,
  ),
  RecentItems(
    thumbnail: 'assets/images/wittalks.jfif',
    title: 'WIT Talks - A Malayalam Standup Comedy Podcast',
    description: 'A Malayalam standup comedy podcast',
    type: 'Podcast',
    creator: 'WIT Talks',
    isPlaying: false,
    isUpdated: false,
  ),
  RecentItems(
    thumbnail: 'assets/images/thesleepzone.jfif',
    title: 'The Sleep Zone Podcast',
    description: 'Podcast to help you sleep',
    type: 'Podcast',
    creator: 'The Sleep Zone',
    isPlaying: false,
    isUpdated: true,
  ),
  RecentItems(
    thumbnail: 'assets/images/trendingmalayalam.jfif',
    title: 'Trending Now Malayalam',
    description: 'Trending Malayalam songs',
    type: 'Playlist',
    creator: 'Spotify',
    isPlaying: false,
    isUpdated: false,
  ),
  RecentItems(
    thumbnail: 'assets/images/anirudh.jfif',
    title: 'Anirudh Ravichander',
    description: 'Songs by Anirudh Ravichander',
    type: 'Playlist',
    creator: 'Anirudh Ravichander',
    isPlaying: false,
    isUpdated: true,
  ),
];
