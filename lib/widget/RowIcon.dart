import 'package:flutter/material.dart';

class RowIcon extends StatelessWidget {
  const RowIcon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: IconButton(
            icon: Icon(Icons.bookmark,
              color: Colors.grey,),
            onPressed: (){},
          ),
          padding: EdgeInsets.only(left: 10),
        ),
        Text('87',
          style: TextStyle(
              color: Colors.grey[800],
              fontSize: 12
          ),
        ),
        Container(
          child: IconButton(
            icon: Icon(Icons.account_circle,
              color: Colors.grey,),
            onPressed: (){},
          ),
        ),
        Text('2265',
          style: TextStyle(
              color: Colors.grey[800],
              fontSize: 12
          ),
        ),
        Container(
          child: IconButton(
            icon: Icon(Icons.favorite,
              color: Colors.grey,),
            onPressed: (){},
          ),
        ),
        Text('232',
          style: TextStyle(
              color: Colors.grey[800],
              fontSize: 12
          ),
        ),
        Container(
          child: IconButton(
            icon: Image.asset(
              'assets/icons/view.png',
            ),
            onPressed: (){},
          ),
          padding: EdgeInsets.only(left: 40),
        ),
        Text('4412',
          style: TextStyle(
            color: Colors.blue[400],
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
