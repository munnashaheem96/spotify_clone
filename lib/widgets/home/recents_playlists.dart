import 'package:flutter/material.dart';
import 'package:spotify_clone/datas/recent_items_dart.dart';

class RecentsPlaylists extends StatelessWidget {
  const RecentsPlaylists({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recents',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              Text(
                'Show all',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: const Color.fromARGB(137, 255, 255, 255),
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 12),
        SizedBox(
            height: 170,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: recentItems.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(left: 20, right: 5),
                  child: _buildRecentPlaylistItems(recentItems[index].thumbnail, recentItems[index].title, recentItems[index].type, recentItems[index].creator),
                );
              },
            ),
          ),
      ],
    );
  }

  Widget _buildRecentPlaylistItems(String thumbnail,  String title, String type, dynamic creator) {
    return SizedBox(
      height: 170,
      width: 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 120,
            height: 120,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                thumbnail,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
          SizedBox(height: 2),
          Text(
            '$type • $creator',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: const Color.fromARGB(137, 255, 255, 255),
              fontWeight: FontWeight.w400,
              fontSize: 11,
              height: 1.0,
            ),
          ),
        ],
      ),
    );
  }
}