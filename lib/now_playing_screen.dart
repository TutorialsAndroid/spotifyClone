import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:spotifyclone/strings.dart';

class NowPlayingScreen extends StatefulWidget {
  const NowPlayingScreen({super.key});

  @override
  State<NowPlayingScreen> createState() => _NowPlayingScreenState();
}

class _NowPlayingScreenState extends State<NowPlayingScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,

      body: Stack(
        children: [

          Image.asset(
            'assets/images/artist/cardib_image.jpg', // Replace with the path to your background image
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),

          // Apply the blur effect using BackdropFilter
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6), // Adjust the blur intensity
            child: Container(
              color: Colors.transparent,
            ),
          ),

          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              title: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ColorFiltered(
                      colorFilter: const ColorFilter.mode(
                        Colors.white, // Set your desired tint color
                        BlendMode.srcIn,
                      ),
                      child: Image.asset(
                        Strings.spotifyIcon, // Replace with the path to your image asset
                        width: 30.0, // Set the same width as the container
                        height: 30.0, // Set the same height as the container
                      ),
                    ),

                    const SizedBox(width: 8), // Add some spacing between image and text

                    const Column(
                      children: [
                        Text(
                          'PLAYING FROM ARTIST',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.white
                          ),
                        ),
                        Text(
                          'Cardi B',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ),
            body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      margin: const EdgeInsets.all(16.0),
                      color: Colors.transparent,
                      child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                                  border: Border.all(
                                    color: Colors.green, // Specify the border color
                                    width: 4.0, // Specify the border width
                                  ),
                                ),
                                child: Image.asset(
                                  'assets/images/artist/cardib_song_image.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),

                              const SizedBox(
                                height: 10,
                              ),

                              SizedBox(
                                height: 20,
                                child: Slider(
                                  value: 20.0,
                                  min: 0,
                                  max: 100,
                                  onChanged: (value) {
                                    setState(() {
                                    });
                                  },
                                ),
                              ),

                              const Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 16, 0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      '01:26',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w900
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    onPressed: null,
                                    icon: Icon(
                                      Icons.skip_previous_sharp,
                                      color: Colors.black,
                                    ),
                                    iconSize: 60.0,
                                  ),
                                  IconButton(
                                    onPressed: null,
                                    icon: Icon(
                                      Icons.play_arrow,
                                      color: Colors.pink,
                                    ),
                                    iconSize: 60.0,
                                  ),
                                  IconButton(
                                    onPressed: null,
                                    icon: Icon(
                                      Icons.skip_next_sharp,
                                      color: Colors.black),
                                    iconSize: 60.0,
                                  ),
                                ],
                              ),
                            ],
                          )
                      ),
                    ),
                  ],
                ),
            ),
          )
        ],
      )
    );
  }
}