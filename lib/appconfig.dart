import 'package:flutter/material.dart';

enum Flavor { prod, dev }

class AppConfig {
  String appName = "";
  String baseUrl = "";
  MaterialColor primaryColor = Colors.blue;
  Flavor flavor = Flavor.dev;
  String imageLocation;

  static AppConfig shared = AppConfig.create();
  factory AppConfig.create({
    String appName = "",
    String baseUrl = "",
    MaterialColor primaryColor = Colors.blue,
    Flavor flavor = Flavor.dev,
    String imageLocation =""
  }) {
    return shared = AppConfig(appName, baseUrl, primaryColor, flavor,imageLocation);
  }

  AppConfig(this.appName, this.baseUrl, this.primaryColor, this.flavor, this.imageLocation);
}