import 'package:blue_ui/model/photo.dart';
import 'package:blue_ui/widget/photocard.dart';
import 'package:flutter/material.dart';

class PhotoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          clipBehavior: Clip.none,
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                images.length,
                (i) => Padding(
                  padding: EdgeInsets.only(left: 14),
                  child: PhotoCard(
                    photo: images[i],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
