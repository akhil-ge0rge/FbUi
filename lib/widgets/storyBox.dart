import 'package:flutter/material.dart';

class StoryBox extends StatefulWidget {
  bool isStory;
  String? storImg;
  String proImg;
  bool isUser;
  String name;
  StoryBox(
      {Key? key,
      required this.isStory,
      required this.proImg,
      this.storImg,
      this.isUser = false,
      required this.name})
      : super(key: key);

  @override
  State<StoryBox> createState() => _StoryBoxState();
}

class _StoryBoxState extends State<StoryBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: widget.isStory == true
                      ? NetworkImage(widget.storImg!)
                      : NetworkImage(widget.proImg),
                ),
                color: Colors.black,
                borderRadius: BorderRadius.circular(18)),
            height: 200,
            width: 130,
          ),
          widget.isUser == false
              ? Positioned(
                  top: 8,
                  left: 5,
                  child: CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.blue,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(widget.proImg),
                    ),
                  ),
                )
              : Positioned(
                  top: 8,
                  left: 5,
                  child: CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.add),
                  ),
                ),
          widget.isUser == false
              ? Positioned(
                  bottom: 10,
                  left: 7,
                  child: Text(
                    widget.name,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ))
              : SizedBox(),
        ],
      ),
    );
  }
}
