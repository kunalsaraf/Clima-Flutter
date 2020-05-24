import 'package:http/http.dart';
import 'dart:convert';

class NetworkHelper {
  final String url;

  NetworkHelper({this.url});

  Future getData() async {
    Response response = await get(url);
    if (response.statusCode == 200) {
      String data = response.body;
      var decodedData = jsonDecode(response.body);
      return decodedData;
//      var id = jsonDecode(response.body)['weather'][0]['id'];
//      print('id = $id');
//      var cityName = jsonDecode(response.body)['name'];
//      print('city = $cityName');
//      var temp = jsonDecode(response.body)['main']['temp'];
//      print('temp = $temp');
    } else {
      print(response.statusCode);
    }
  }
}
