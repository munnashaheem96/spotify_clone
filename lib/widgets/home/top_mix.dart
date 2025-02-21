import 'package:flutter/material.dart';
import 'package:spotify_clone/datas/based_on_recent_data.dart';

class TopMix extends StatelessWidget {
  const TopMix({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Your top mix',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
        SizedBox(height: 10,),
        SizedBox(
          height: 225,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: basedOnRecent.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(left: 20, right: 2),
                child: _buildRecentPlaylistItems(
                  basedOnRecent[index].thumbnail,
                  basedOnRecent[index].title,
                  basedOnRecent[index].artists,
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildRecentPlaylistItems(
      String thumbnail, String title, dynamic artists) {
    return SizedBox(
      width: 170,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 170,
            height: 170,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                thumbnail,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            artists.join(','),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: const Color.fromARGB(137, 255, 255, 255),
              fontWeight: FontWeight.w400,
              fontSize: 11,
              height: 1.2,
            ),
          ),
        ],
      ),
    );
  }
}