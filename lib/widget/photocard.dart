import 'package:blue_ui/model/photo.dart';
import 'package:flutter/material.dart';

class PhotoCard extends StatelessWidget {
  final Photo photo;

  PhotoCard({
    this.photo,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 0.89,
            child: Container(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  photo.title,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 30),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(photo.image), fit: BoxFit.cover),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
