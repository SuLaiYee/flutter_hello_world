import 'package:flutter/material.dart';
import 'package:flutter_hello_world/category.dart';

/*Widget _buildCategoryWidgets(bool portrait) {
  if (portrait) {
    return ListView.builder(
        itemBuilder: (BuildContext context, int index) => _catgories[index],
        itemCount: _categories.length);
  }else{
    return  GridView.count(
      crossAxisCount: 2,
        childAspectRatio: 3.0,
        children : _categories,
    );
  }
}*/
final _backgroundColor = Colors.green[100];
final _rowHeight = 100.0;
final _borderRadius = BorderRadius.circular(_rowHeight / 2);

/*Widget _listItem(IconData icon, String title) =>
    InkWell(
      borderRadius: _borderRadius,
      highlightColor: Colors.cyan,
      splashColor: Colors.cyanAccent,
      onTap: () {
        print('I was tapped');
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Icon(
                icon,
                size: 60,
              ),
            ),
            Text(
              title,
              style: TextStyle(fontSize: 24),
            )
          ],
        ),
      ),
    );*/

class CategoryRoute extends StatelessWidget {
  const CategoryRoute();

  static const _categoryNames = <String>[
    'Share',
    'Close',
    'Calendar',
    'Video',
    'Folder',
    'Share',
    'Close',
    'Calendar',
    'Video',
    'Folder',
  ];

  static const _categoryColor = <Color>[
    Colors.cyanAccent,
    Colors.orange,
    Colors.cyan,
    Colors.amber,
    Colors.blue,
    Colors.cyanAccent,
    Colors.orange,
    Colors.cyan,
    Colors.amber,
    Colors.blue,
  ];

  Widget _buildCategoryWidgets(List<Widget> categories){
    return ListView.builder(
        itemBuilder: (BuildContext context, int index)=> categories[index],
        itemCount: categories.length);
  }



  @override
  Widget build(BuildContext context) {
    final categories = <Category>[];

    for(var i=0; i< _categoryNames.length; i++){
      categories.add(Category(
        name:_categoryNames[i],
        color: _categoryColor[i],
        iconLocation: Icons.cake,
      ));
    }


    final listView = Container(
      color: _backgroundColor ,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: _buildCategoryWidgets(categories),
    );


    final appBar = AppBar(
      elevation: 0.0,
      title: Text(
        'Unit Converter',
         style: TextStyle(color: Colors.black, fontSize: 30.0),
      ),
    );

    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }
}
