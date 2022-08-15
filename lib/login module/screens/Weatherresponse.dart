



class Weatherinfo {
  final String description;
  final String icon;
  Weatherinfo({required this.description,required this.icon});

  factory Weatherinfo.fromJson(Map<String, dynamic> json){
    final description = json['description'];
    final icon = json['icon'];
    return Weatherinfo(description: description, icon: icon);
  }

}


class TempInfo{
  final double temperature;
  TempInfo({required this.temperature});

  factory TempInfo.fromJson(Map <String, dynamic> json){
    final temperature = json['temp'];
    return TempInfo(temperature: temperature);
  }

}


class WeatherResponse{

  final String cityName;
  final TempInfo tempinfo;
  final Weatherinfo weatherinfo;


  String get iconUrl {
    return 'https://openweathermap.org/img/wn/${weatherinfo.icon}@2x.png';
  }

  WeatherResponse({required this.cityName, required this.tempinfo, required this.weatherinfo});

  factory WeatherResponse.fromJson(Map<String,dynamic> json){
    final cityName = json['name'];

    final tempinfoJson = json['main'];
    final tempinfo = TempInfo.fromJson(tempinfoJson);

    final weatherinfoJson = json['weather'][0];
    final weatherinfo =  Weatherinfo.fromJson(weatherinfoJson);

    return WeatherResponse(cityName: cityName, tempinfo: tempinfo, weatherinfo: weatherinfo);
  }
}