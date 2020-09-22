import 'package:blue_ui/model/model.dart';
import 'package:flutter/material.dart';

class ModelCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      clipBehavior: Clip.none,
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
              models.length,
              (i) => Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: UserCard(
                      model: models[i],
                    ),
                  ))
        ],
      ),
    );
  }
}

class UserCard extends StatelessWidget {
  final Model model;

  UserCard({
    this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ClipOval(
        child: Image.asset(
          model.image,
          fit: BoxFit.cover,
          height: 45,
          width: 45,
        ),
      ),
      SizedBox(
        height: 8,
      ),
      Text(
        model.name,
        style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
      )
    ]);
  }
}
