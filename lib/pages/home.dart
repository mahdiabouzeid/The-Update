import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/services/data.dart';
import 'package:newsapp/services/slider_data.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List categories=[];
  List slider=[];
  int activeIndex=0;
  @override
  void initState() {
    slider=getSliders();
    categories=getCategories();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text('Flutter'),
          Text('News',style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),)
          ],
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10.0),
              height: 70,
              child: Expanded (
             child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: categories.length,itemBuilder: (context,index){
                return CategoryTile(image: categories[index].image,categoryName: categories[index].categoryName);
              }),
              ),
            ),
            CarouselSlider.builder(itemCount:slider.length , itemBuilder: (context,index,RealIndex){
              String? res =slider[index].image;
              String res1=slider[index].name;
              return buildimage(res!, index, res1!);
            }, options: CarouselOptions(
              height: 200,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              autoPlay: true,
              enlargeCenterPage: true,
              onPageChanged: (index,reason){
                setState(() {
                  activeIndex=index;
                });
              }
            )),
            SizedBox(height: 30.0,),
           // buildIndicator()
            

            
          ],
        ),
      ),
    );
  }
    Widget buildimage(String image,int index,String name)=>Container(
    margin:EdgeInsets.symmetric(horizontal:5) ,
    child:Stack(
      children: [

     ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child :Image.asset(
    image,
    height: 200, 
    fit: BoxFit.cover,
    width: MediaQuery.of(context).size.width,),
    ),
    Container(
      height: 120,
      padding: EdgeInsets.only(left: 10.0),
      margin: EdgeInsets.only(top: 130.0),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.black26 ,
        borderRadius:BorderRadius.only(bottomLeft:Radius.circular(10) ,bottomRight:Radius.circular(10)) 
      ),
      child: Text(name,style: TextStyle(
        color: Colors.white,
        fontSize: 18.0,
        fontWeight: FontWeight.bold
      ),),
    ),
     ],)
  );
}
class CategoryTile extends StatelessWidget {
  final image,categoryName;
  CategoryTile({this.categoryName,this.image});


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right:16 ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
          child: Image.asset(
            image,
            width: 120,
            height: 60,
            fit: BoxFit.cover, 
           ),
          ),
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Colors.black26
              
            ),
            width: 120,
            height: 60,
            child: 
            Text(categoryName,style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w500

            ),),
          )
        ],
      ),
    );
    
  }
  //Widget buildIndicator()=>AnimatedSmoothIndicator();

}