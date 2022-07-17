import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ActiveAvatar extends StatefulWidget {
  String img;
  bool isActive;
  ActiveAvatar({Key? key, required this.img, this.isActive = false})
      : super(key: key);

  @override
  State<ActiveAvatar> createState() => _ActiveAvatarState();
}

class _ActiveAvatarState extends State<ActiveAvatar> {
  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      CircleAvatar(
        radius: 25,
        backgroundImage: NetworkImage(widget.img),
      ),
      widget.isActive == true
          ? Positioned(
              bottom: 5,
              right: 5,
              child: Container(
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.white),
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(30)),
              ))
          : SizedBox()
    ]);
  }
}
