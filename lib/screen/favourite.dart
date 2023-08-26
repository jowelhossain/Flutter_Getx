
import 'package:flutter/material.dart';

class FavouriteTest extends StatefulWidget {
  const FavouriteTest({super.key});

  @override
  State<FavouriteTest> createState() => _FavouriteTestState();
}

class _FavouriteTestState extends State<FavouriteTest> {

  List<String>fruitList=['Mango','Orange','Water Melon','Pineapple','Litchi'];

List<String>temFruitList=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Favourite List"),),
      body: ListView.builder(
        shrinkWrap: true,
          itemCount: fruitList.length,
          itemBuilder: (context,index){
            return Card(
              child: ListTile(
                onTap:() {

                  if(temFruitList.contains(fruitList[index].toString())){
                    temFruitList.remove(fruitList[index].toString());
                  }
                  else{temFruitList.add(fruitList[index].toString());}
                  setState(() {

                  });
                  },
                title: Text(fruitList[index]),
                trailing: Icon(Icons.favorite, color: temFruitList.contains(fruitList[index].toString())?Colors.red:Colors.white,),
              ),
            );

          }),
    );
  }
}
