import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/class/status_request.dart';
import 'package:ecommerce_app/core/functions/checkinternet.dart';
import 'package:http/http.dart' as http;

class Crud{

  Future<Either<StatusRequest, Map>> postData(String url, Map data) async{
    try{
      if(checkInternet()){
        var response = await http.post(Uri.parse(url), body: data);

        if(response.statusCode == 200 || response.statusCode == 201){
          Map responseBody = jsonDecode(response.body);
          return Right(responseBody);
        }
        else{
          return const Left(StatusRequest.serverFailure);
        }
      }
      else{
        return const Left(StatusRequest.offlineFailure);
      }
    }catch(e){
      return const Left(StatusRequest.serverFailure);
    }
  }
}