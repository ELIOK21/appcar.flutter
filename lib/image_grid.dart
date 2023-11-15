import 'package:flutter/material.dart';
import 'image1.dart'; // Import the Dart file for the first image page
import 'image2.dart'; // Import the Dart file for the second image page
import 'image3.dart'; // Import the Dart file for the third image page
import 'image4.dart'; // Import the Dart file for the fourth image page

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // The main entry point for the app
    return MaterialApp(
      home: ImageGrid(), // Sets the home page to the ImageGrid widget
      debugShowCheckedModeBanner: false,
    );
  }
}

class ImageGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // The main widget for displaying the image grid
    return Scaffold(
      appBar: AppBar(
        // App bar at the top of the screen
        title: Center(
          // Center-aligns the app bar title
          child: Text(
            'CARS',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
            ),
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: 4, // Number of items in the grid
              itemBuilder: (context, index) {
                // Builder function for creating grid items
                switch (index) {
                  case 0:
                    // First grid item
                    return GestureDetector(
                      onTap: () {
                        // Navigate to Image1Page on tap
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Image1Page()),
                        );
                      },
                      child: Center(
                        // Centers the image in the grid item
                        child: Image.asset(
                          'assets/IMG-20231109-WA0002.jpg',
                          fit: BoxFit.cover,
                          width: 200,
                          height: 200,
                        ),
                      ),
                    );
                  case 1:
                    // Second grid item
                    return GestureDetector(
                      onTap: () {
                        // Navigate to Image2Page on tap
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Image2Page()),
                        );
                      },
                      child: Center(
                        child: Image.asset(
                          'assets/IMG-20231109-WA0003.jpg',
                          fit: BoxFit.cover,
                          width: 200,
                          height: 200,
                        ),
                      ),
                    );
                  case 2:
                    // Third grid item
                    return GestureDetector(
                      onTap: () {
                        // Navigate to Image3Page on tap
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Image3Page()),
                        );
                      },
                      child: Center(
                        child: Image.asset(
                          'assets/IMG-20231109-WA0004.jpg',
                          fit: BoxFit.cover,
                          width: 200,
                          height: 200,
                        ),
                      ),
                    );
                  case 3:
                    // Fourth grid item
                    return GestureDetector(
                      onTap: () {
                        // Navigate to Image4Page on tap
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Image4Page()),
                        );
                      },
                      child: Center(
                        child: Image.asset(
                          'assets/IMG-20231109-WA0005.jpg',
                          fit: BoxFit.cover,
                          width: 200,
                          height: 200,
                        ),
                      ),
                    );
                  default:
                    return Container(); // Default case, returns an empty container
                }
              },
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Made By: Elio Korban, Elio Khoury, Charbel Achkar',
            style: TextStyle(fontSize: 25),
          ),
        ],
      ),
    );
  }
}
