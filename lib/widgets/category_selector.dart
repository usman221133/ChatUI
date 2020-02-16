import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget{
  @override
 _CategorySelectorState createState() => _CategorySelectorState();
  }

class _CategorySelectorState extends State<CategorySelector>{
  int selectorIndex = 0;
  final List<String> categories = ['Messages', 'Online', 'Groups' , ' Request'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext contetx , int index) {
          return GestureDetector(
            onTap: ()
                {
                  setState(() {
                    selectorIndex= index;
                  });
                },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0 ),
              child: Text(categories[index],
                style: TextStyle(
                  color: index == selectorIndex ? Colors.white : Colors.white60,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
            )
          );
        }
      ),
    );
  }
}

