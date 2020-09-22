import 'package:blue_ui/constants.dart';
import 'package:blue_ui/model/model.dart';
import 'package:blue_ui/sizeConfig.dart';
import 'package:blue_ui/widget/RowIcon.dart';
import 'package:flutter/material.dart';

class PeopleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
              icon: Icon(Icons.chevron_left),
              iconSize: 38,
              onPressed: () {
                Navigator.of(context).pop();
              }),
        ),
      ),
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;

    return Stack(
      overflow: Overflow.visible,
      alignment: Alignment.center,
      children: [
        Image.asset(
          'assets/images/blueback.jpg',
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: screenHeight * 0.6),
            child: Material(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35), topRight: Radius.circular(35)),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: ClipOval(
                            child: Image.asset(
                              models[3].image,
                              height: 55,
                              width: 55,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 20),
                              child: Text(
                                'Tayilor swift',
                                style: TextStyle(
                                    color: kTextColor,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                'Senior Designer',
                                style: TextStyle(color: Colors.grey[600]),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    RowIcon(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 25,
                            vertical: 5,
                          ),
                          child: Text(
                            'Evaluation Zone',
                            style: TextStyle(
                                color: kTextColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 25),
                              child: Text(
                                'The world photography originates from the Greek\n'
                                'language phos(light..)',
                                style: TextStyle(
                                    color: Colors.grey[500],
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                width: 300,
                                decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.circular(20)),
                                child: TextField(
                                  onChanged: (value) {},
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.only(left: 10),
                                      border: InputBorder.none,
                                      hintText: 'Character Photography',
                                      hintStyle: TextStyle(
                                        fontSize: 12,
                                      )),
                                ),
                              ),
                            ),
                           IconButton(
                             icon: Icon(Icons.chat_bubble),
                             color: Colors.grey[300],
                             onPressed: (){},
                           ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
