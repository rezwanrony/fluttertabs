import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class gallerytab extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return gallerystate();
  }

}

class gallerystate extends State{

  List<String> getGrids(){
    List<String>imagelist=['images/mash.jpg','images/mushfiq.jpg','images/riad.jpg','images/shakib.jpg','images/tamim.jpg','images/liton.jpg','images/shanto.jpg','images/soumya.png','images/mustafiz.png','images/miraz.jpg','images/rubel.png'];
    return imagelist;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3
              ),
              itemBuilder: (context,index){
                return GestureDetector(child: Container(
                    child: Image.asset(getGrids()[index],fit: BoxFit.fitHeight),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.green,
                        )
                    )
                ),onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context){return showFullImage(getGrids()[index]);}));
                },);

              },itemCount: getGrids().length
          )
      )
    );

  }

}

class showFullImage extends StatelessWidget{
  String image;

  showFullImage(this.image);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        color: Colors.white,
        child: Image.asset(image,fit: BoxFit.cover),
      ),
    );
  }

}