import 'package:blue_ui/Screen/peopleScreen.dart';
import 'package:blue_ui/widget/buildAppbar.dart';
import 'package:blue_ui/widget/categorylist.dart';
import 'package:blue_ui/widget/modelCard.dart';
import 'package:blue_ui/widget/photoview.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String assetName = 'assets/icons/loupe.svg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CategoryList(),
            PhotoView(),
            SizedBox(
              height: 13,
            ),
            Row(
              children: [
                Transform.scale(
                  scale: 0.7,
                  child: IconButton(
                      icon: Image.asset('assets/icons/bookmark.png'),
                      onPressed: () {}),
                ),
                Transform.scale(
                  scale: 0.7,
                  child: IconButton(
                      icon: Image.asset(
                        'assets/icons/user.png',
                      ),
                      onPressed: () {}),
                ),
                Spacer(),
                IconButton(
                    icon: Icon(Icons.chevron_right),
                    color: Colors.grey[400],
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PeopleScreen()));
                    }),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            ModelCard(),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(children: [
                    Container(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        'Abby',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Text(
                      'PhotoGrapher',
                      style: TextStyle(fontSize: 10),
                    ),
                  ]),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      '\$450.11',
                      style: TextStyle(fontSize: 15,
                          color: Colors.blueAccent[100]),
                    ),
                  ),
                ],
              ),
              padding: EdgeInsets.only(
                left: 20,
              ),
              height: 60,
              width: MediaQuery.of(context).size.width / 1.1,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(5, 5),
                      blurRadius: 10,
                      color: Color(0xffe9e9e9).withOpacity(1)),
                ],
              ),
            ),
            SizedBox(
              height: 28,
            ),
          ],
        ),
      ),
    );
  }
}
