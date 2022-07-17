import 'package:fbui/widgets/activeCircle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ActiveUSers extends StatefulWidget {
  const ActiveUSers({Key? key}) : super(key: key);

  @override
  State<ActiveUSers> createState() => _ActiveUSersState();
}

class _ActiveUSersState extends State<ActiveUSers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 12, bottom: 12),
      height: 70,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            height: 50,
            width: 120,
            child: OutlinedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30))),
                side: MaterialStateProperty.all(
                  BorderSide(
                    color: Colors.blue,
                    width: 2,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.video_call,
                    color: Colors.purple,
                  ),
                  Text("Create\nRoom"),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          ActiveAvatar(
            isActive: true,
            img:
                'https://assets.change.org/photos/3/pz/ur/IZPZUrJczRxOpDB-400x400-noPad.jpg',
          ),
          SizedBox(
            width: 10,
          ),
          ActiveAvatar(
            isActive: true,
            img:
                'https://images.livemint.com/img/2022/05/16/1600x900/Jack_Ma_1652723925404_1652723925573.jpg',
          ),
          SizedBox(
            width: 10,
          ),
          ActiveAvatar(
            isActive: false,
            img:
                'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/is-johnny-depp-actually-returning-to-pirates-of-the-caribbean-1656412274.jpg',
          ),
          SizedBox(
            width: 10,
          ),
          ActiveAvatar(
            isActive: false,
            img:
                'https://mlpnk72yciwc.i.optimole.com/cqhiHLc.WqA8~2eefa/w:600/h:904/q:75/https://bleedingcool.com/wp-content/uploads/2019/04/tobeymaguire.jpg',
          ),
        ],
      ),
    );
  }
}
