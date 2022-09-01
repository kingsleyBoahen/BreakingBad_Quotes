import 'package:breakingbad_quotes_app/quotes.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

main() => runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: QuotesApp(),
    ),
  ),
);