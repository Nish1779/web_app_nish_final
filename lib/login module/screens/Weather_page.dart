import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_app_nish/login%20module/screens/Weatherresponse.dart';
import 'package:web_app_nish/login%20module/screens/dataService.dart';


class Weather_page extends StatefulWidget {
  const Weather_page({Key? key}) : super(key: key);

  @override
  State<Weather_page> createState() => _Weather_pageState();
}

class _Weather_pageState extends State<Weather_page> {
  final _cityTC = TextEditingController();
  final _dataservice = DataService();

   late WeatherResponse _response;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if(_response !=null)
              Column(children: [
                Image.network(_response.iconUrl),
                Text('${_response.tempinfo.temperature}°', style: TextStyle(fontSize: 40),),
                Text(_response.weatherinfo.description)
              ],),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 50),
              child: SizedBox(
                width: 150,
                child: TextField(
                  controller: _cityTC,
                  decoration: InputDecoration(labelText: 'City'),
                ),
              ),
            ),
            ElevatedButton(onPressed: _search, child:Text('Search'))
          ],
        ),
      ),
    );
  }

  void _search() async{
    final response = await _dataservice.getWeather(_cityTC.text);
    setState(() => _response = response);
  }
}
