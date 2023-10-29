import 'package:dio/dio.dart';
class DioServices {

  final baseUrl="https://www.googleapis.com/books/v1/";
  final Dio dio;
  DioServices(this.dio);
  Future<Map<String,dynamic>>get({required String endPoints})async{
    var response= await dio.get('$baseUrl$endPoints');
    return response.data;
  }

}