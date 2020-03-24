import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Laptop.dart';

class listtab extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return ListState();
  }

}

class ListState extends State<listtab>{

  List<Laptop>laptoplist=getLaptops();

  Widget getListView(){
    return  ListView.builder(itemBuilder: (context,index){
      return Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                    height: 200,
                    child: Image.network(laptoplist[index].images,fit: BoxFit.fitWidth)),
                Center(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Text('${laptoplist[index].name}'),
                  ),
                )
              ],
            ),
          );
    },
        itemCount: laptoplist.length);



  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: getListView(),
      );
  }



}

List<Laptop> getLaptops(){
  List<Laptop>laptoplist=List<Laptop>();
  Laptop laptop=Laptop('Macbook','https://cnet1.cbsistatic.com/img/TV2F4pge6L_iPbR_qwVQqZKqFCQ=/1200x675/2019/07/10/47fce273-8bbc-47a9-a07f-1b1ad4d06a46/04-macbook-pro-2019.jpg');
  Laptop laptop1=Laptop('HP','https://cnet2.cbsistatic.com/img/rssXxNDSEqa4ed4JvA9drpCVyuM=/1200x675/2019/02/26/9edcf0d0-d0f8-4434-a2b2-0835afc4b27b/11-razer-blade-advanced-2019.jpg');
  Laptop laptop2=Laptop('Dell','https://www.doffitt.com/wp-content/uploads/2019/02/Best-Laptops-For-Computer-Engineering-Students-850x491.jpg');
  laptoplist.add(laptop);
  laptoplist.add(laptop1);
  laptoplist.add(laptop2);
  return laptoplist;
}
