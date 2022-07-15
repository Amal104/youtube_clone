import 'package:flutter/material.dart';
import 'package:youtube/youtubebody.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff282828),
      appBar: AppBar(
        backgroundColor: Color(0xff282828),
        actions: [
          Container(
            width: MediaQuery.of(context).size.width - 200,
            child: Row(
              children: [
                Container(
                  width: 35,
                  child: Image.asset('assets/youtube.png'),
                ),
                Text(
                  'YouTube',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            width: 180,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.cast),
                SizedBox(
                  width: 15,
                ),
                Icon(Icons.notifications),
                SizedBox(
                  width: 15,
                ),
                Icon(Icons.search),
                SizedBox(
                  width: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage('assets/profile.jpg'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: youtube_body(),
      bottomNavigationBar: Container(
        height: 50,
        color: Color(0xff282828),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Expanded(
                      child: Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                  )),
                  Text('Home', style: TextStyle(color: Colors.white, fontSize: 10))
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                      child: Icon(
                    Icons.video_call,
                    color: Colors.white,
                  )),
                  Text('Shorts', style: TextStyle(color: Colors.white, fontSize: 10))
                ],
              ),
            ),
            Expanded(
                child: Icon(
              Icons.add_circle_outline,
              size: 50,
              color: Colors.white,
            )),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                      child: Icon(
                    Icons.subscriptions_outlined,
                    color: Colors.white,
                  )),
                  Text('Subscriptions',
                      style: TextStyle(color: Colors.white, fontSize: 10))
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                      child: Icon(
                    Icons.video_library_outlined,
                    color: Colors.white,
                  )),
                  Text('Library', style: TextStyle(color: Colors.white, fontSize: 10)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
