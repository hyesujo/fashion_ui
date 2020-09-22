import 'package:flutter/material.dart';
import 'package:blue_ui/constants.dart';

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedCategory = 0;
  List<String> categories = [
    'Recommend', 'people', 'Scenery','Aliment'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefalutPadding + 5),
      height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) =>
            buildCategory(index, context),
      ),
    );
  }

  Padding buildCategory(int index, BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefalutPadding / 2),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedCategory = index;

          });
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: Theme.of(context).textTheme.headline5.copyWith(
                    fontWeight: FontWeight.w800,
                    color: index == selectedCategory
                        ? kTextColor
                        : Colors.black.withOpacity(0.3),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

// SingleChildScrollView(
// scrollDirection: Axis.horizontal,
// child: Padding(
// padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
// child: Row(
// children: [
// CategoryItem(
// title: 'Recommend',
// isActive: true,
// press: () {
// setState(() {});
// }),
// CategoryItem(title: 'People', isActive: false, press: () {}),
// CategoryItem(title: 'Scenery', isActive: false, press: () {}),
// CategoryItem(title: 'Aliment', isActive: false, press: () {}),
// ],
// ),
// ),
// );
// }
// }
//
// class CategoryItem extends StatelessWidget {
//   final String title;
//   final bool isActive;
//   final Function press;
//
//   CategoryItem({this.title, this.isActive = false, this.press});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: kDefalutPadding / 2),
//       child: GestureDetector(
//         onTap: press,
//         child: Text(
//           title,
//           style: Theme.of(context).textTheme.headline5.copyWith(
//             fontWeight: FontWeight.w800,
//             color: isActive == true
//                 ? kTextColor
//                 : Colors.black.withOpacity(0.3),
//           ),
//         ),
//       ),
//     );
//   }
// }
