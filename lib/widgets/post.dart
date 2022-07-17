import 'package:fbui/widgets/postBox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Post extends StatefulWidget {
  const Post({Key? key}) : super(key: key);

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PostBox(
          proImg:
              'https://cdn.britannica.com/45/223045-050-A6453D5D/Telsa-CEO-Elon-Musk-2014.jpg?w=400&h=300&c=crop',
          name: 'Elon Musk',
          time: '40m',
          desc: 'Tesla Model S',
          postImg:
              'https://stimg.cardekho.com/images/carexteriorimages/930x620/Tesla/Model-S/5252/1611840999494/front-left-side-47.jpg',
          likeCount: '5k',
          commentCount: '800',
          shareCount: '200',
        ),
        Container(
          color: Colors.grey[300],
          height: 15,
        ),
        PostBox(
          proImg:
              'https://assets.change.org/photos/3/pz/ur/IZPZUrJczRxOpDB-400x400-noPad.jpg',
          name: 'Zuck',
          time: '4s',
          desc: 'Meta',
          postImg:
              'https://cdn.geekwire.com/wp-content/uploads/2019/05/DSC09426.jpg1.jpg',
          likeCount: '10k',
          commentCount: '8k',
          shareCount: '2k',
        ),
      ],
    );
  }
}
