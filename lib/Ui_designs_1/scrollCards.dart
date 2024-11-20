import 'package:flutter/material.dart';

class CardUI extends StatefulWidget {
  const CardUI({super.key});

  @override
  CardUIState createState() => CardUIState();
}

class CardUIState extends State<CardUI> {
  List<bool> cardOpenState = [false, false, false, false]; // Track card states

  void toggleCard(int index) {
    setState(() {
      cardOpenState[index] = !cardOpenState[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // First card
        Container(
          // margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.only(left: 8, right: 15, top: 20),
          decoration: BoxDecoration(
            color: const Color(0xFF323645),
            borderRadius: BorderRadius.circular(30),
          ),
          height: 150,
          // cardOpenState[0] ? 170 : 100,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("assets/prashant.jpeg"),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Prashant Chandraker",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  // cardOpenState[0]
                  // ?
                  const Text(
                    "Anyone else really really\nloves chapter 12?",
                    style: TextStyle(
                        height: 1.3,
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w400),
                  ),
                  // : const SizedBox(),
                  const SizedBox(
                    height: 8,
                  ),
                  InkWell(
                    onTap: () {
                      toggleCard(0);
                    },
                    child: const Text(
                      "Reply",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "4h",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ), // Adjust size based on state
        ),
        // Conditionally render smaller cards (Card 2 and 3) when Card 1 is clicked
        if (cardOpenState[0])
          Column(
            children: [
              // Card 2
              GestureDetector(
                onTap: () => toggleCard(1),
                child: AnimatedSize(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                  child: Container(
                    margin: const EdgeInsets.only(
                        left: 60, top: 10, bottom: 2, right: 5),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFF2c2f3e),
                      borderRadius:
                          BorderRadius.circular(cardOpenState[1] ? 30 : 10),
                      boxShadow: const [
                        BoxShadow(blurRadius: 4, color: Colors.black26)
                      ],
                    ),
                    height: cardOpenState[1] ? 115 : 60,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: cardOpenState[1] ? 20 : 25,
                          backgroundImage:
                              const AssetImage("assets/prashant1.jpeg"),
                        ),
                        cardOpenState[1]
                            ? const SizedBox(
                                width: 20,
                              )
                            : const SizedBox(
                                width: 1,
                              ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Rashmi Bahadure',
                              style: TextStyle(
                                  height: cardOpenState[1] ? 2.5 : 1.7,
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: cardOpenState[1]
                                      ? FontWeight.w800
                                      : FontWeight.w500),
                            ),
                            cardOpenState[1]
                                ? const Text(
                                    "I am not there yet\nwait for me",
                                    style: TextStyle(color: Colors.white),
                                  )
                                : const SizedBox()
                          ],
                        ),
                        const Spacer(),
                        Text(
                          "3h",
                          style: TextStyle(
                              height: cardOpenState[1] ? 2.1 : 1.8,
                              color: Colors.white,
                              fontSize: cardOpenState[1] ? 20 : 15,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ), // Adjust size based on state
                  ),
                ),
              ),
              // Card 3
              GestureDetector(
                onTap: () => toggleCard(2),
                child: AnimatedSize(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                  child: Container(
                    margin: const EdgeInsets.only(
                        left: 60, top: 10, bottom: 2, right: 5),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFF2c2f3e),
                      borderRadius:
                          BorderRadius.circular(cardOpenState[2] ? 30 : 10),
                      boxShadow: const [
                        BoxShadow(blurRadius: 4, color: Colors.black26)
                      ],
                    ),
                    height: cardOpenState[2] ? 115 : 60,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: cardOpenState[2] ? 20 : 25,
                          backgroundImage:
                              const AssetImage("assets/harry.webp"),
                        ),
                        cardOpenState[2]
                            ? const SizedBox(
                                width: 20,
                              )
                            : const SizedBox(
                                width: 1,
                              ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Suraj Gujrathi',
                              style: TextStyle(
                                  height: cardOpenState[2] ? 2.5 : 1.7,
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: cardOpenState[2]
                                      ? FontWeight.w800
                                      : FontWeight.w500),
                            ),
                            cardOpenState[2]
                                ? const Text(
                                    "I am not there yet\nwait for me",
                                    style: TextStyle(color: Colors.white),
                                  )
                                : const SizedBox()
                          ],
                        ),
                        const Spacer(),
                        Text(
                          "1h",
                          style: TextStyle(
                              height: cardOpenState[2] ? 2.1 : 1.8,
                              color: Colors.white,
                              fontSize: cardOpenState[2] ? 20 : 15,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ), // Adjust size based on state
                  ),
                ),
              ),
            ],
          ),
        const SizedBox(
          height: 10,
        ),
        // Card 4 (last card)
        Container(
          // margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.only(left: 8, right: 15, top: 20),
          decoration: BoxDecoration(
            color: const Color(0xFF323645),
            borderRadius: BorderRadius.circular(30),
          ),
          height: 150,
          // cardOpenState[0] ? 170 : 100,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("assets/harry.webp"),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Siddheshwar Shingare",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  // cardOpenState[0]
                  // ?
                  const Text(
                    "If you want I can join you\nguys?",
                    style: TextStyle(
                        height: 1.3,
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w400),
                  ),
                  // : const SizedBox(),
                  const SizedBox(
                    height: 8,
                  ),
                  InkWell(
                    onTap: () {
                      toggleCard(3);
                    },
                    child: const Text(
                      "Reply",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "4h",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ), // Adjust size based on state
        ),
        const SizedBox(
          height: 25,
        ),
      ],
    );
  }
}
