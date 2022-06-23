import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_player/songPage.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.white70,
        child: Stack(
          children: [
            Column(
              children: [
                ClipRRect(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(50)),
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://i1.sndcdn.com/artworks-000338233584-mhkue7-t500x500.jpg"),
                      ),
                    ),
                    width: double.infinity,
                    height: size.height / 2,
                  ),
                ),
                SizedBox(height: 80),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Popular",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(width: 40),
                      Text(
                        "Show all",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.blue.shade300),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50),
                SongDetails(
                  songName: "No tears left to cry",
                  duration: "5:20",
                ),
                SongDetails(
                  songName: "Imagine",
                  duration: "3:20",
                ),
                SongDetails(
                  songName: "Into you",
                  duration: "4:12",
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              margin: EdgeInsets.only(top: 60),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.density_medium,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.info_outline_rounded,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(15, 200, 0, 0),
                    child: Text(
                      "Ariana\nGrande",
                      style: GoogleFonts.dancingScript(
                          fontWeight: FontWeight.w700,
                          fontSize: 60,
                          height: 0.6,
                          color: Colors.white),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(250, 10, 0, 0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SongPage(),
                            ));
                      },
                      child: Icon(
                        Icons.play_circle_filled_outlined,
                        size: 80,
                        color: Color.fromARGB(255, 90, 103, 216),
                      ),
                    ),
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

class SongDetails extends StatefulWidget {
  final String songName;
  final String duration;

  const SongDetails({Key? key, required this.songName, required this.duration})
      : super(key: key);

  @override
  State<SongDetails> createState() => _SongDetailsState();
}

class _SongDetailsState extends State<SongDetails> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SongPage(),
            ));
      },
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 58),
                child: Text(
                  widget.songName,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(0.8)),
                ),
              ),
              Row(
                children: [
                  Text(
                    widget.duration,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                  SizedBox(width: 15),
                  Container(
                    margin: EdgeInsets.only(right: 55),
                    child: Icon(
                      Icons.more_horiz,
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 58),
            child: Divider(
              thickness: 1,
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
