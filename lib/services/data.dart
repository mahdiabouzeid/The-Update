import 'package:newsapp/models/category_model.dart';

List getCategories(){
  List categories=[];
  CategoryModel categoryModel=new CategoryModel();
  categoryModel.categoryName="Business";
  categoryModel.image="images/business.jpg";
  categories.add(categoryModel);
 categoryModel=new CategoryModel();


  categoryModel.categoryName="Entertainment";
  categoryModel.image="images/entertainment.jpg";
  categories.add(categoryModel);
 categoryModel=new CategoryModel();






 categoryModel.categoryName="General";
  categoryModel.image="images/general.jpg";
  categories.add(categoryModel);
 categoryModel=new CategoryModel();





  categoryModel.categoryName="Health";
  categoryModel.image="images/health.jpg";
  categories.add(categoryModel);
 categoryModel=new CategoryModel();






 categoryModel.categoryName="Sports";
  categoryModel.image="images/sport.jpg";
  categories.add(categoryModel);


  return categories;

}