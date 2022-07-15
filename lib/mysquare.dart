import 'package:flutter/Material.dart';

class MySquare extends StatelessWidget {
  List<Map> data = [
    {
      'url': 'https://www.youtube.com/watch?v=3R6KnQLvZNI',
      'thumbnail': "https://i.ytimg.com/vi/3R6KnQLvZNI/maxresdefault.jpg",
      'title': 'Complete flutter course with 14+ apps',
      'date': 'May 15, 2019',
      'creator': 'Christina peri',
      'profile_url':
          'https://images.unsplash.com/photo-1593104547489-5cfb3839a3b5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=853&q=80',
    },
    {
      'url': 'https://www.youtube.com/watch?v=sPW7nDBqt8w',
      'thumbnail': 'https://i.ytimg.com/vi/sPW7nDBqt8w/maxresdefault.jpg',
      'title': 'The Flutter YouTube Channel is Here!',
      'date': 'Feb 22, 2019',
      'creator': 'Flutter',
      'profile_url':
          'https://images.unsplash.com/photo-1544723795-3fb6469f5b39?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=389&q=80',
    },
    {
      'url': 'https://www.youtube.com/watch?v=vqPG1tU6-c0',
      'thumbnail': 'https://i.ytimg.com/vi/vqPG1tU6-c0/maxresdefault.jpg',
      'title': 'Introducing The Boring Show!',
      'date': 'Feb 22, 2019',
      'creator': 'Flutter',
      'profile_url':
          'https://yt3.ggpht.com/a/AGF-l7-pLWHhqjLR5ZVoKzV9_eU6IjYrDyhvSLRjsw=s88-mo-c-c0xffffffff-rj-k-no',
    },
    {
      'url': 'https://www.youtube.com/watch?v=frEG8f0Aa1c',
      'thumbnail': 'https://i.ytimg.com/vi/frEG8f0Aa1c/maxresdefault.jpg',
      'title': 'Flutter vs React native',
      'date': 'Apr 10, 2019',
      'creator': 'Hitesh Choudhary',
      'profile_url':
          'https://yt3.ggpht.com/a/AGF-l7-GpYFwHDMQVXkOcO3Ra8bIoZhhiU3oluiJBw=s88-mo-c-c0xffffffff-rj-k-no',
    },
    {
      'url': 'https://youtu.be/GE0oeBj9Cr0',
      'thumbnail': 'https://i.ytimg.com/vi/GE0oeBj9Cr0/maxresdefault.jpg',
      'title': 'How to create first flutter for web project   step by step',
      'date': 'May 11, 2019',
      'creator': 'Hitesh Choudhary',
      'profile_url':
          'https://yt3.ggpht.com/a/AGF-l7-GpYFwHDMQVXkOcO3Ra8bIoZhhiU3oluiJBw=s88-mo-c-c0xffffffff-rj-k-no',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Container(
            child: Column(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Image(
                    image: NetworkImage(data[index]['thumbnail']),
                    centerSlice: Rect.largest,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                      backgroundImage:
                          NetworkImage(data[index]['profile_url'])),
                  title: Text(
                    data[index]['title'],
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    data[index]['creator'],
                    style: TextStyle(color: Colors.grey),
                  ),
                  trailing: Text(
                    data[index]['date'],
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
