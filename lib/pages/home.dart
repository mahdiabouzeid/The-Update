import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/services/data.dart';
import 'package:newsapp/services/slider_data.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
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
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              SizedBox(
                height: 30.0,
              ),
              Padding(
              padding: const EdgeInsets.only(left: 10.0,right: 10.0),
              child :Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Breaking News!",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 18.0),),
              Text("View All",style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w500,fontSize: 16.0),),
                ],
              ),
              ),
        
              SizedBox(
                height: 10.0,
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
             Center(child:buildIndicator(), ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Trending News!",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 18.0),),
              Text("View All",style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w500,fontSize: 16.0),),
                ],
              ),
              Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child:Material(
                elevation: 3.0,
                borderRadius: BorderRadius.circular(10),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                  child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: ClipRRect(borderRadius: BorderRadius.circular(10),
                      child: Image.asset("images/sport.jpg",height: 120,width: 120,fit: BoxFit.cover,),
                      ),
                    
                    ),
                    SizedBox(width: 5.0,),
                    Column(
                      children: [
                    Container(
                      width: MediaQuery.of(context).size.width/1.8,
                      child: Text(
                        "Rui Costa outsprints breakway to win stage 15",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 17.0
                        ),
                      ),
                    ),
                    SizedBox(height:8.0 ,),
                    Container(
                      width: MediaQuery.of(context).size.width/1.8,
                      child: Text(
                        "Then a final kick to beat lennard kanna",
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                          fontSize: 15.0
                        ),
                      ),
                    )
                      ],
                    ),
                    
                  ],
                              ),
                ),
              ),
        
              ),
              SizedBox(height: 20.0),
              Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child:Material(
                elevation: 3.0,
                borderRadius: BorderRadius.circular(10),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                  child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: ClipRRect(borderRadius: BorderRadius.circular(10),
                      child: Image.asset("images/sport.jpg",height: 120,width: 120,fit: BoxFit.cover,),
                      ),
                    
                    ),
                    SizedBox(width: 5.0,),
                    Column(
                      children: [
                    Container(
                      width: MediaQuery.of(context).size.width/1.8,
                      child: Text(
                        "Rui Costa outsprints breakway to win stage 15",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 17.0
                        ),
                      ),
                    ),
                    SizedBox(height:8.0 ,),
                    Container(
                      width: MediaQuery.of(context).size.width/1.8,
                      child: Text(
                        "Then a final kick to beat lennard kanna",
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                          fontSize: 15.0
                        ),
                      ),
                    )
                      ],
                    ),
                    
                  ],
                              ),
                ),
              ),
        
              ),
            ],
          ),
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
   Widget buildIndicator()=>AnimatedSmoothIndicator(activeIndex: activeIndex, count: slider.length,effect:JumpingDotEffect(), );
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

}