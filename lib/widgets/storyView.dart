import 'package:fbui/widgets/storyBox.dart';
import 'package:flutter/material.dart';

class StoryView extends StatefulWidget {
  const StoryView({Key? key}) : super(key: key);

  @override
  State<StoryView> createState() => _StoryViewState();
}

class _StoryViewState extends State<StoryView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      child: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 10),
        scrollDirection: Axis.horizontal,
        children: [
          StoryBox(
            isUser: true,
            isStory: false,
            proImg:
                'https://cdn.britannica.com/45/223045-050-A6453D5D/Telsa-CEO-Elon-Musk-2014.jpg?w=400&h=300&c=crop',
            storImg:
                'https://stimg.cardekho.com/images/carexteriorimages/930x620/Tesla/Model-S/5252/1611840999494/front-left-side-47.jpg',
            name: 'Elon Musk',
          ),
          SizedBox(
            width: 10,
          ),
          StoryBox(
            isUser: false,
            isStory: true,
            proImg:
                'https://assets.change.org/photos/3/pz/ur/IZPZUrJczRxOpDB-400x400-noPad.jpg',
            storImg:
                'https://i.pcmag.com/imagery/articles/04HUXgEu0I3mdCOejOjQpNE-5.fit_lim.v1620748900.jpg',
            name: 'Zuck',
          ),
          SizedBox(
            width: 10,
          ),
          StoryBox(
            isUser: false,
            isStory: true,
            proImg:
                'https://images.livemint.com/img/2022/05/16/1600x900/Jack_Ma_1652723925404_1652723925573.jpg',
            storImg:
                'https://play-lh.googleusercontent.com/D09AsmYSxDpMWRSXbu54j2R_8sR-1OgbV2DXSI9_HIuY2IMZ8b8JgscWol6mikknaks=w240-h480-rw',
            name: 'Jack',
          ),
          SizedBox(
            width: 10,
          ),
          StoryBox(
            isUser: false,
            isStory: true,
            proImg:
                'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/is-johnny-depp-actually-returning-to-pirates-of-the-caribbean-1656412274.jpg',
            storImg:
                'https://sm.mashable.com/t/mashable_in/photo/default/image-7_zs3h.720.jpg',
            name: 'Depp',
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
