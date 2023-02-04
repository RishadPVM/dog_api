


import 'dart:convert'; 
 import 'package:http/http.dart';
import 'package:json/src/model/model.dart';
 // import 'package:ndzdogapi/src/model/model.dart'; 
   class ApiHelper{   
    static final ApiHelper _apiHelper=ApiHelper.internal(); 
     factory ApiHelper()=>_apiHelper;   
     ApiHelper.internal();  
       static const _baseURL="https://dog.ceo/api/";   
       Future<dynamic> getRequest(String route )async{  
            String url=_baseURL+route;   
             try{   
                 Response response=await get(Uri.parse(url));    
                   if(response.statusCode==200){       
                     return Dog.fromJson(jsonDecode(response.body));    
                    }         
                    else{       
                      throw Exception("Error");      
                    }   
                }catch(ex){      
                          throw Exception(ex); 
                       }
                       }
                       }