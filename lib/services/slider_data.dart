import 'package:flutter/foundation.dart';
import 'package:newsapp/models/category_model.dart';
import 'package:newsapp/models/slider_model.dart';

List getSliders(){
  List slider=[];
 SliderModel categoryModel=new SliderModel();
  categoryModel.image="images/business.jpg";
  categoryModel.name="Bow To The Authority Silenforce ";
  slider.add(categoryModel);
  categoryModel=new SliderModel();


  categoryModel.image="images/entertainment.jpg";
  categoryModel.name="Bow To The Authority Silenforce";
  slider.add(categoryModel);
  categoryModel=new SliderModel();



  categoryModel.image="images/health.jpg";
  categoryModel.name="Bow To The Authority Silenforce";
  slider.add(categoryModel);
  categoryModel=new SliderModel();







 return slider;
}