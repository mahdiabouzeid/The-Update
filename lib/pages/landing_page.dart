import 'package:flutter/material.dart';
class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Column(
          
            children: [
              Image.asset(
                "images/lan.jpg",
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/1.7,
                fit: BoxFit.cover
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "News from around\n  the world for you ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold
                )
              ),
              SizedBox(height: 20.0,),
              Text(
                "Best time to read, take your time to read\n    a little more of this world ",
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500
                )
              ),
              SizedBox(height: 40.0,),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30.0)
                    
                    ),
                    child: 
                    Center(
                      child: Text("Get Started",
                      style:  TextStyle(
                        color: Colors.white,
                        fontSize: 17.0,
                        fontWeight: FontWeight.w500
                      ),),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      
      ),
    );
  }
}