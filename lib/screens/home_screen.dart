import 'package:flutter/material.dart';
import 'package:spotify_clone/widgets/home/based_on_recent.dart';
import 'package:spotify_clone/widgets/home/header_category.dart';
import 'package:spotify_clone/widgets/home/jump_back.dart';
import 'package:spotify_clone/widgets/home/playedhistory/played_history_widget.dart';
import 'package:spotify_clone/widgets/home/recents_playlists.dart';
import 'package:spotify_clone/widgets/home/top_mix.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      body: Padding(
        padding: const EdgeInsets.only(top: 70),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderCategory(),
              SizedBox(height: 15),
              PlayedHistoryWidget(),
              SizedBox(height: 20,),
              JumpBack(),
              SizedBox(height: 10,),
              RecentsPlaylists(),
              SizedBox(height: 10,),
              BasedOnRecent(),
              SizedBox(height: 10,),
              TopMix(),
              SizedBox(height: 10,)
            ],
          ),
        ),
      ),
    );
  }
}