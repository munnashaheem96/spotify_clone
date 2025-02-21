class JumpBackData {
  final String imagePath;
  final String title;
  final String description;

  JumpBackData({
    required this.imagePath,
    required this.title,
    required this.description,
  });
}

final List<JumpBackData> jumpBackDataList = [
  JumpBackData(
    imagePath: 'assets/images/vineethsreenivasan.jpg',
    title: 'Best of Vineeth Sreenivasan ❤️',
    description: 'Playlist for Vineeth Sreenivasan Fans 🔥',
  ),
  JumpBackData(
    imagePath: 'assets/images/chithraks.webp',
    title: 'Best of KS Chithra',
    description: 'Playlist for KS Chithra Fans',
  ),
];