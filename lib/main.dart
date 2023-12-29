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
                    backgroundImage: AssetImage('assets/icons/profilePhotoIcon.jpg'), // Replace 'image_name.png' with the actual file name of your image in the assets folder
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
            )
          ],
        ),
      //),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
