import 'package:attendy_sample_1/Ui_designs_1/scrollCards.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class WarAndPiece extends StatefulWidget {
  const WarAndPiece({super.key});

  @override
  State<WarAndPiece> createState() => _WarAndPieceState();
}

class _WarAndPieceState extends State<WarAndPiece> {
  String _selectedSegment = "Global";
  final List<Map<String, dynamic>> _data = [
    {'name': 'Mirza', 'score': "88,242", 'avatar': 'assets/prashant.jpeg'},
    {'name': 'Suraj', 'score': "88,230", 'avatar': 'assets/prashant1.jpeg'},
    {'name': 'Rashmi', 'score': "88,205", 'avatar': 'assets/prashant.jpeg'},
    {'name': 'Prashant', 'score': "88,242", 'avatar': 'assets/prashant1.jpeg'},
    {'name': 'Master', 'score': "88,185", 'avatar': 'assets/prashant.jpeg'},
    {
      'name': 'Siddheshwar',
      'score': "88,170",
      'avatar': 'assets/prashant1.jpeg'
    },
    {'name': 'Hari', 'score': "88,150", 'avatar': 'assets/prashant.jpeg'},
    {'name': 'Krishna', 'score': "88,120", 'avatar': 'assets/prashant1.jpeg'},
    {'name': 'Ramesh', 'score': "88,090", 'avatar': 'assets/prashant.jpeg'},
    {'name': 'Sham', 'score': "88,050", 'avatar': 'assets/prashant1.jpeg'},
  ];

  bool _showAll = false;
  @override
  Widget build(BuildContext context) {
    final int itemsToShow = _showAll ? _data.length : 4;
    return Scaffold(
      backgroundColor: const Color(0xFF222531),
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            centerTitle: true,
            automaticallyImplyLeading: false,
            backgroundColor: Color(0xFF222531),
            // AppBar configuration
            expandedHeight: 120.0, // Height when expanded
            floating: false, // Whether it floats during scrolling
            pinned: true, // Whether it remains visible at the top
            flexibleSpace: FlexibleSpaceBar(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage("assets/prashant.jpeg"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Flutter reader stats ',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ],
              ),
              centerTitle: true,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: Image.asset("assets/harry.webp"),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        "War and Peace",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          color: Color(0xFF323645),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: const Icon(
                          size: 32,
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    height: 200,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 246, 217, 112),
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Text(
                              "PROGRESS",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900, fontSize: 20),
                            ),
                            const Spacer(),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: const BoxDecoration(
                                color: Color(0xFFefc843),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: const Icon(
                                size: 32,
                                Icons.upload,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        //2nd row
                        const Row(
                          children: [
                            Icon(
                              Icons.import_contacts,
                              size: 50,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "543",
                              style: TextStyle(
                                  fontSize: 40, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Out of 1,225 pages",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  "#5 among friends",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w900),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        LinearProgressIndicator(
                          borderRadius: BorderRadius.circular(30),
                          minHeight: 8,
                          value: 0.5,
                          backgroundColor: Colors.white,
                          valueColor:
                              const AlwaysStoppedAnimation<Color>(Colors.black),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            circleicons("assets/prashant.jpeg"),
                            const Spacer(
                              flex: 1,
                            ),
                            circleicons("assets/prashant1.jpeg"),
                            const Spacer(
                              flex: 4,
                            ),
                            circleicons("assets/harry.webp"),
                            const Spacer(flex: 2),
                            circleicons("assets/prashant.jpeg"),
                            const Spacer(
                              flex: 10,
                            ),
                            circleicons("assets/prashant1.jpeg"),
                            const Spacer(flex: 7),
                            circleicons("assets/harry.webp"),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //container 1
                      Expanded(
                        child: commonConatiner(
                            "TIME",
                            "6:24",
                            "Global avg read time \nfor your progress 7:28",
                            "23% Faster",
                            Icons.schedule,
                            0xFFff9a62,
                            0xFFec834a),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      //conatiner 2
                      Expanded(
                        child: commonConatiner(
                            "STREAK",
                            "7",
                            "Day streak, come back \ntommorow to keep up",
                            "19% more consistent",
                            Icons.bolt_outlined,
                            0xFFb5f16b,
                            0xFF9ae33c),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: commonConatiner(
                            "LEVEL",
                            "2",
                            "145 reader points to \n level up",
                            "Top 5% for his book",
                            Icons.military_tech,
                            0xFFc89fff,
                            0xFFb984fa),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(15),
                          height: 200,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color(0xFF93dafb),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    "BADGES",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 20),
                                  ),
                                  const Spacer(),
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFF70cbf5),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                    ),
                                    child: const Icon(
                                      size: 32,
                                      Icons.upload,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.emoji_objects,
                                    size: 40,
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.brightness_5_outlined,
                                    size: 40,
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.flare,
                                    size: 40,
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.hourglass_bottom_sharp,
                                    size: 40,
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.book_outlined,
                                    size: 40,
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.panorama_photosphere_select_rounded,
                                    size: 40,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0xFF787f99),
                          ),
                          child: const Center(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              Text(
                                " Add friends",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ],
                          )),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                          color: Color(0xFF323645),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: const Icon(
                          size: 32,
                          Icons.upload,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 5.0),
                    child: Text(
                      "Leaderboard",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 260,
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 20),
                    decoration: const BoxDecoration(
                        color: Color(0xFF323645),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Center(
                              child: CupertinoSlidingSegmentedControl<String>(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 7, horizontal: 7),
                                backgroundColor: const Color(0xFF222531),
                                thumbColor: const Color(
                                    0xFF6C717C), // Slider thumb color
                                groupValue: _selectedSegment,
                                onValueChanged: (String? value) {
                                  if (value != null) {
                                    setState(() {
                                      _selectedSegment = value;
                                    });
                                  }
                                },
                                children: {
                                  "Friends": Container(
                                    height: 40,
                                    width: 80,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: Center(
                                      child: Text(
                                        "Friends",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: _selectedSegment == "Friends"
                                              ? Colors.white
                                              : Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                  "Global": Container(
                                    height: 40,
                                    width: 80,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: Center(
                                      child: Text(
                                        "Global",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: _selectedSegment == "Global"
                                              ? Colors.white
                                              : Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                },
                              ),
                            ),
                            const Spacer(),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                color: Color(0xFF222531),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: const Icon(
                                size: 32,
                                Icons.upload,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundImage:
                                  AssetImage("assets/prashant.jpeg"),
                            ),
                            Icon(
                              Icons.language_sharp,
                              size: 55,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Rank #86",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900),
                            ),
                            Text(
                              "Top 1%",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "88,242 Points",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "Out of 88,275 readers",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),

                  /// Scrollable conatiner
                  Container(
                    height: _showAll ? 400 : 300,
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: const BoxDecoration(
                        color: Color(0xFF323645),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30))),
                    child: Column(
                      children: [
                        Expanded(
                          child: ListView.separated(
                            shrinkWrap: true,
                            itemCount: itemsToShow,
                            separatorBuilder: (context, index) => const Divider(
                              color: Colors.grey,
                              height: 8,
                            ),
                            itemBuilder: (context, index) {
                              final item = _data[index];
                              return ListTile(
                                leading: CircleAvatar(
                                  radius: 21,
                                  backgroundImage: AssetImage(item['avatar']),
                                ),
                                title: Text(
                                  item['name'],
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                trailing: Text(
                                  item['score'].toString(),
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                      fontSize: 18),
                                ),
                              );
                            },
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _showAll = !_showAll;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              _showAll ? "Show less" : "Show more",
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 5.0),
                    child: Text(
                      "All activity",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CardUI(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container commonConatiner(
      String text1, text2, text3, text4, IconData icon1, int color1, color2) {
    return Container(
      padding: const EdgeInsets.all(15),
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(color1),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                text1,
                style:
                    const TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
              ),
              const Spacer(),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Color(color2),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: const Icon(
                  size: 32,
                  Icons.upload,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                icon1,
                size: 40,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                text2,
                style:
                    const TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            text3,
            style: const TextStyle(
                height: 1.1, fontWeight: FontWeight.w500, fontSize: 13),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            text4,
            style: const TextStyle(
                height: 1, fontWeight: FontWeight.w900, fontSize: 15),
          ),
        ],
      ),
    );
  }

  CircleAvatar circleicons(String name) {
    return CircleAvatar(
      radius: 20,
      backgroundImage: AssetImage(name),
    );
  }
}
