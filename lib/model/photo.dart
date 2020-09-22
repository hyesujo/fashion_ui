import 'package:flutter/cupertino.dart';

class Photo {
  final String title;
  final String image;

  Photo({@required this.image, @required this.title});
}

List<Photo> images = [
  Photo(title: 'Ann', image: 'assets/images/blue1.jpg'),
  Photo(title: 'Mary', image: 'assets/images/blue2.jpg'),
  Photo(title: 'Mike', image: 'assets/images/blue3.jpg'),
];
