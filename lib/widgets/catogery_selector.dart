import 'package:flutter/material.dart';

class CatogerySelector extends StatefulWidget {
  const CatogerySelector({Key? key}) : super(key: key);

  @override
  State<CatogerySelector> createState() => _CatogerySelectorState();
}

class _CatogerySelectorState extends State<CatogerySelector> {
  int selectedIndex = 0;
  final List<String> catogries = ["Messages", "Online", "Groups", "Requests"];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
              child: Text(
                catogries[index],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                    color:
                        index == selectedIndex ? Colors.white : Colors.white60,
                    letterSpacing: 1.2),
              ),
            ),
          );
        },
        itemCount: catogries.length,
      ),
    );
  }
}
