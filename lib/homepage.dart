import 'package:flutter/material.dart';
import 'package:post_test/section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> _topbar = [
      "For you",
      "Top charts",
      "Kids",
      "Events",
      "Premium",
      "Categories",
    ];

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 48, left: 27, right: 27, bottom: 10),
            child: Row(
              children: [
                //--- Search ---//
                Container(
                  height: 42,
                  width: 250,
                  padding: const EdgeInsets.only(left: 27, bottom: 2),
                  decoration: BoxDecoration(
                    color: const Color(0xFF2E3136),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: TextField(
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    cursorColor: Colors.white,
                    decoration: const InputDecoration(
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: "Search",
                      hintStyle: TextStyle(
                        color: Color(0xFFAAAAAA),
                      ),
                    ),
                    onTapOutside: (event) {
                      FocusScope.of(context).requestFocus(FocusNode());
                    },
                  ),
                ),

                const Expanded(child: SizedBox.shrink()),

                //--- Profile Avatar---//
                CircleAvatar(
                  radius: 21,
                  child: Image.asset("assets/avatar.png"),
                ),
              ],
            ),
          ),

          //--- TopBar ---//
          SizedBox(
            height: 44,
            child: ListView.builder(
              itemCount: _topbar.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                EdgeInsets pad = const EdgeInsets.only(left: 32.0);
                TextStyle textStyle = const TextStyle(
                  color: Color(0xFFAAAAAA),
                  fontSize: 14,
                );

                if (index == _topbar.length - 1) {
                  pad = const EdgeInsets.only(left: 32.0, right: 32.0);
                }

                if (index == 0) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 32.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          _topbar[index],
                          style: textStyle = const TextStyle(
                            color: Color(0xFFA8C8FB),
                            fontSize: 14,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 11),
                          child: SizedBox(
                            width: 50,
                            child: Divider(
                              height: 4,
                              thickness: 4,
                              color: Color(0xFFA8C8FB),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }
                return Padding(
                  padding: pad,
                  child: Center(
                    child: Text(
                      _topbar[index],
                      style: textStyle,
                    ),
                  ),
                );
              },
            ),
          ),

          const Divider(
            height: 1,
            color: Color(0xFF555555),
          ),

          Expanded(
            child: ListView(
              children: [
                //
                //--- Top-rated games ---//
                Padding(
                  padding: const EdgeInsets.fromLTRB(32, 0, 32, 18),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Top-rated games",
                        style: TextStyle(
                          color: Color(0xFFAAAAAA),
                          fontSize: 16,
                        ),
                      ),
                      Expanded(child: SizedBox.shrink()),
                      Icon(
                        Icons.keyboard_arrow_right,
                        opticalSize: 5,
                        size: 24,
                        color: Color(0xFFAAAAAA),
                      ),
                    ],
                  ),
                ),
                const Section(
                  preview: [
                    "assets/raw/top_rated/chess.jpg",
                    "assets/raw/top_rated/pocketland.jpg",
                    "assets/raw/top_rated/car.jpg",
                  ],
                  logo: [
                    "assets/raw/top_rated/chess_logo.jpg",
                    "assets/raw/top_rated/pocketland_logo.jpg",
                    "assets/raw/top_rated/car_logo.png",
                  ],
                ),

                //---Offline games ---//
                Padding(
                  padding: const EdgeInsets.fromLTRB(32, 0, 32, 18),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Offline games",
                        style: TextStyle(
                          color: Color(0xFFAAAAAA),
                          fontSize: 16,
                        ),
                      ),
                      Expanded(child: SizedBox.shrink()),
                      Icon(
                        Icons.keyboard_arrow_right,
                        opticalSize: 5,
                        size: 24,
                        color: Color(0xFFAAAAAA),
                      ),
                    ],
                  ),
                ),
                const Section(
                  preview: [
                    "assets/raw/offline/business.jpg",
                    "assets/raw/offline/brickmania.png",
                    "assets/raw/offline/survivor.jpg",
                  ],
                  logo: [
                    "assets/raw/offline/business_logo.jpg",
                    "assets/raw/offline/brickmania_logo.png",
                    "assets/raw/offline/survivor_logo.jpg",
                  ],
                ),

                //--- Casual games ---//
                Padding(
                  padding: const EdgeInsets.fromLTRB(32, 0, 32, 18),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Casual games",
                        style: TextStyle(
                          color: Color(0xFFAAAAAA),
                          fontSize: 16,
                        ),
                      ),
                      Expanded(child: SizedBox.shrink()),
                      Icon(
                        Icons.keyboard_arrow_right,
                        opticalSize: 5,
                        size: 24,
                        color: Color(0xFFAAAAAA),
                      ),
                    ],
                  ),
                ),
                const Section(
                  preview: [
                    "assets/raw/casual/brick.jpg",
                    "assets/raw/casual/car.jpg",
                    "assets/raw/casual/brickmania.png",
                  ],
                  logo: [
                    "assets/raw/casual/brick_logo.jpg",
                    "assets/raw/casual/car_logo.png",
                    "assets/raw/casual/brickmania_logo.png",
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
