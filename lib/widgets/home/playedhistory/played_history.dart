import 'package:flutter/material.dart';

class PlayedHistory extends StatelessWidget {
  final String thumbnail;
  final String textHistory;
  final bool isPlaying;
  final bool isUpdated;

  const PlayedHistory({
    super.key,
    required this.thumbnail,
    required this.textHistory,
    required this.isPlaying,
    required this.isUpdated,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Color(0xFF2a2a2a),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(6),
                          bottomLeft: Radius.circular(6),
                        ),
                        child: Image.asset(
                          thumbnail,
                          width: 60,
                          height: 60,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 10),
                      SizedBox(
                        width: 80,
                        child: Text(
                          textHistory,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(width: 25),
                    ],
                  ),
                ],
              ),
            ),
            if (isUpdated)
              Positioned(
                top: 0,
                bottom: 0,
                right: 15,
                child: Container(
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.lightBlue,
                  ),
                ),
              ),
            if (isPlaying)
              Positioned(
                top: 0,
                bottom: 0,
                right: 1,
                child: Image.asset(
                  'assets/gifs/current.gif',
                  width: 50,
                  color: Color(0xFF1ed760),
                ),
              ),
          ],
        ),
      ),
    );
  }
}