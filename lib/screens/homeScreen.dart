import 'package:fbui/widgets/activeUsers.dart';
import 'package:fbui/widgets/storyView.dart';
import 'package:flutter/material.dart';

import '../widgets/post.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 15, top: 10, right: 15, bottom: 10),
            height: 130,
            width: 400,
            // color: Colors.black,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          'https://cdn.britannica.com/45/223045-050-A6453D5D/Telsa-CEO-Elon-Musk-2014.jpg?w=400&h=300&c=crop'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: TextFormField(
                        controller: _textController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "What's on your mind ?",
                          hintStyle: TextStyle(color: Colors.grey[400]),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.grey[400],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.videocam,
                        color: Colors.red,
                      ),
                      label: Text('Live'),
                    ),
                    Container(
                      height: 20,
                      width: 1,
                      color: Colors.grey[300],
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.photo_library_rounded,
                        color: Colors.green,
                      ),
                      label: Text('Photos'),
                    ),
                    Container(
                      height: 20,
                      width: 1,
                      color: Colors.grey[300],
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.video_call,
                        color: Colors.purple,
                      ),
                      label: Text('Live'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            color: Colors.grey[300],
            height: 15,
          ),
          ActiveUSers(),
          Container(
            color: Colors.grey[300],
            height: 15,
          ),
          StoryView(),
          Container(
            color: Colors.grey[300],
            height: 15,
          ),
          Post(),
          Container(
            color: Colors.grey[300],
            height: 15,
          ),
        ],
      ),
    );
  }
}
