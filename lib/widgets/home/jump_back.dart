import 'package:flutter/material.dart';
import 'package:spotify_clone/datas/jump_back_data.dart';

class JumpBack extends StatelessWidget {
  const JumpBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Jump back in',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 220,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: jumpBackDataList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: _buildJumpBackItems(jumpBackDataList[index].imagePath, jumpBackDataList[index].title, jumpBackDataList[index].description),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildJumpBackItems(String imagePath, String title, String description) {
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
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 11
            ),
          ),
          SizedBox(height: 2),
          Text(
            description,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: const Color.fromARGB(137, 255, 255, 255),
              fontWeight: FontWeight.w400,
              fontSize: 10,
              height: 1.2,
            ),
          ),
        ],
      ),
    );
  }
}
