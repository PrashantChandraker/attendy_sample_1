import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text(
          "Hey Prashant!",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        actions: const [
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage("assets/prashant1.jpeg"),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Row containing the two main cards
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Left Card - Withdraw
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black, // Shadow color with opacity
                              spreadRadius: 1, // How much the shadow spreads
                              blurRadius: 2, // Softness of the shadow
                              offset:
                                  Offset(2, 3), // Offset in X and Y directions
                            ),
                          ],
                          color: Color.fromARGB(255, 218, 196, 55),
                          borderRadius: BorderRadius.all(Radius.circular(50)
                              // topLeft: Radius.circular(30),
                              // bottomLeft: Radius.circular(30),
                              ),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 30),
                        child: const Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.download_rounded,
                                color: Colors.black, size: 30),
                            SizedBox(height: 8),
                            Text(
                              'Withdraw',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Right Card - Share
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black, // Shadow color with opacity
                              spreadRadius: 1, // How much the shadow spreads
                              blurRadius: 2, // Softness of the shadow
                              offset:
                                  Offset(2, 3), // Offset in X and Y directions
                            ),
                          ],
                          color: Color.fromARGB(255, 123, 183, 186),
                          borderRadius: BorderRadius.all(Radius.circular(50)
                              // topRight: Radius.circular(30),
                              // bottomRight: Radius.circular(30),
                              ),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 30),
                        child: const Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.share_rounded,
                                color: Colors.black, size: 30),
                            SizedBox(height: 8),
                            Text(
                              'Share',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                // Circular Plus Icon
                Positioned(
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white,
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Colors.black,
                        //     blurRadius: 1,
                        //     spreadRadius: 1,
                        //     offset: Offset(0, 1),
                        //   ),
                        // ],
                      ),
                      alignment: Alignment.center,
                      child:
                          const Icon(Icons.add, color: Colors.white, size: 40),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
