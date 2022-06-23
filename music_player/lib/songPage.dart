import 'package:flutter/material.dart';

class SongPage extends StatelessWidget {
  const SongPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.deepPurpleAccent,
        child: Column(
          children: [
            SizedBox(height: 50),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Artist",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                  Icon(
                    Icons.info_outline,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            SizedBox(height: 57),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
                color: Colors.white,
              ),
              height: 650,
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(height: 60),
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              "https://www.beautycrew.com.au/media/26519/ariana-grande-square.jpg?width=460&height=460"),
                        ),
                      ),
                      width: 200,
                      height: 200,
                    ),
                  ),
                  SizedBox(height: 60),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 35),
                        child: Divider(
                          thickness: 1,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 35),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "0:00",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                            Text(
                              "4:45",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      Text(
                        "One last time",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Ariana Grande",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color(0xff7E93CB),
                        ),
                      ),
                      SizedBox(height: 35),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.arrow_left_sharp,
                            size: 40,
                          ),
                          SizedBox(width: 30),
                          Icon(
                            Icons.pause_circle_outline,
                            size: 40,
                          ),
                          SizedBox(width: 30),
                          Icon(
                            Icons.arrow_right_sharp,
                            size: 40,
                          ),
                        ],
                      ),
                      SizedBox(height: 35),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.volume_mute,
                            color: Colors.grey.withOpacity(0.4),
                          ),
                          Container(
                            width: 250,
                            child: SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                trackShape: RectangularSliderTrackShape(),
                                trackHeight: 2.0,
                                thumbShape: RoundSliderThumbShape(
                                    enabledThumbRadius: 6.0),
                              ),
                              child: Slider(
                                max: 3,
                                activeColor: Colors.black,
                                inactiveColor: Colors.grey.withOpacity(0.4),
                                thumbColor: Colors.black,
                                value: 1,
                                onChanged: (double value) {},
                              ),
                            ),
                          ),
                          Icon(
                            Icons.volume_up_rounded,
                            color: Colors.grey.withOpacity(0.4),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
