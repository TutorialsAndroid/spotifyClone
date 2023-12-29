import 'package:flutter/material.dart';

class NowPlayingBar extends StatelessWidget {
  const NowPlayingBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: Colors.black,
      child: Row(
        children: [
          // Album Artwork
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/images/artist/theUnstoppables_album.png'), // Replace with actual asset path
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          const SizedBox(width: 12),

          // Song Details
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Kashmakash',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text(
                  'The Unstoppables',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),

          // Playback Controls
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.skip_previous, color: Colors.white),
                onPressed: () {
                  // Handle skip previous action
                },
              ),
              IconButton(
                icon: const Icon(Icons.play_arrow, color: Colors.white, size: 32),
                onPressed: () {
                  // Handle play/pause action
                },
              ),
              IconButton(
                icon: const Icon(Icons.skip_next, color: Colors.white),
                onPressed: () {
                  // Handle skip next action
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}