import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:spotifyclone/strings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icons/spotify.png', // Replace with your image asset
                height: 30,
                width: 30,// Adjust the height as needed
              ),
              const SizedBox(width: 8), // Add some spacing between image and text
              const Text(
                'Spotify',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      body: //Center(
        //child:
        Column(
          children: <Widget>[
            Row(
              children: [
                //User Profile photo
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profilePhoto/akshay.jpg'), // Replace 'image_name.png' with the actual file name of your image in the assets folder
                    radius: 20, // You can adjust the radius as needed
                  ),
                ),

                //All music feed view
                SizedBox(
                  width: 70,
                  child: Card(
                    color: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0), // Adjust the value as needed
                    ),
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Text(
                          'All',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    )
                  ),
                ),

                //Music feed view
                Card(
                  color: Colors.black12,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0), // Adjust the value as needed
                    side: const BorderSide(
                      color: Colors.white, // Set the color of the border
                      width: 2.0, // Set the width of the border
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      'Music',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),

                //Podcast feed view
                Card(
                  color: Colors.black12,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0), // Adjust the value as needed
                    side: const BorderSide(
                      color: Colors.white, // Set the color of the border
                      width: 2.0, // Set the width of the border
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      'Podcast',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),

            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of columns in the grid
                ),
                itemCount: 4, // Number of items in the grid
                // Inside GridView.builder
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Stack(
                      children: [
                        //Image at the start
                        Positioned.fill(
                          child: Image.asset(
                            getImageAssetPath(index),
                            fit: BoxFit.cover,
                          ),
                        ),

                        // Glass effect overlay
                        Positioned.fill(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.3),
                            ),
                          ),
                        ),

                        // Text at the center
                        Center(
                          child: Text(
                            getCardText(index),
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

          ],
        ),
      //),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  String getImageAssetPath(int index) {
    // Replace the following logic with your own way of getting asset paths based on the index
    // For example, you might have a list of asset paths and use index to access the corresponding path.
    List<String> assetPaths = [
      'assets/images/artist/ariana_album.png',
      'assets/images/artist/avicii_album.png',
      'assets/images/artist/cardib_album.png',
      'assets/images/artist/shawn_album.png',
    ];

    return assetPaths[index];
  }

  String getCardText(int index) {
    // Replace the following logic with your own way of getting text based on the index
    // For example, you might have a list of texts and use index to access the corresponding text.
    List<String> cardTexts = [
      'Ariana',
      'Avicii',
      'Cardi B',
      'Shawn',
    ];

    return cardTexts[index];
  }
}
