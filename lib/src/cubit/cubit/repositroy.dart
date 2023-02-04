import 'package:json/src/model/api_helper.dart';
import 'package:json/src/model/model.dart';

class DogRepo{
  Future <Dog>fetchData()async{
    String route="breeds/image/random";
    var response=await ApiHelper.internal().getRequest(route);
    return response;
  }
}