import 'package:flutter/material.dart';

class PostBox extends StatefulWidget {
  String proImg;
  String name;
  String time;
  String desc;
  String postImg;
  String likeCount;
  String shareCount;
  String commentCount;
  PostBox(
      {Key? key,
      required this.proImg,
      required this.name,
      required this.time,
      required this.desc,
      required this.postImg,
      required this.likeCount,
      required this.commentCount,
      required this.shareCount})
      : super(key: key);

  @override
  State<PostBox> createState() => _PostBoxState();
}

class _PostBoxState extends State<PostBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundImage: NetworkImage(widget.proImg),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.name,
                          style: TextStyle(fontSize: 15),
                        ),
                        Row(
                          children: [
                            Text(
                              "${widget.time} · ",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                            Icon(
                              Icons.public,
                              color: Colors.grey,
                              size: 16,
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Icon(Icons.more_horiz),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            margin: EdgeInsets.only(left: 15),
            child: Text(widget.desc),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 260,
            child: Image(
              image: NetworkImage(widget.postImg),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 5, right: 5),
                    child: Icon(
                      Icons.thumb_up,
                      color: Colors.blue,
                    ),
                  ),
                  Text(
                    widget.likeCount,
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(right: 5),
                child: Text(
                  "${widget.commentCount} Comments ${widget.shareCount} Shares",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
          Divider(
            endIndent: 10,
            indent: 10,
            color: Colors.grey[300],
            thickness: .5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.thumb_up,
                  color: Colors.grey,
                ),
                label: Text(
                  "LIke",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.comment,
                  color: Colors.grey,
                ),
                label: Text(
                  "Comment",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.share,
                  color: Colors.grey,
                ),
                label: Text(
                  "Share",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
