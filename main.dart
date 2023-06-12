dependencies:
  cupertino_icons: ^1.0.2
  device_frame: ^1.1.0 // Add this package 
  device_preview: ^1.1.0   // Add this package 
    
// Make Sure your Internet Connection is On Otherwise Device Preview Will not show
    
import 'package:device_preview/device_preview.dart';
import 'package:example/Screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      enabled: true,
      backgroundColor: Colors.red,
      // isToolbarVisible: false,
      devices: [
        ...DevicePreview.defaultDevices,
        // DeviceInfo.genericPhone(platform: TargetPlatform.iOS, id: '123',
        //  name: 'MyIphone', screenSize: Size(450,850)),
        //  DeviceInfo(identifier: identifier, name: name,
        //  safeAreas: safeAreas, screenPath: screenPath,
        //   pixelRatio: pixelRatio, framePainter: framePainter,
        //    frameSize: frameSize, screenSize: screenSize)
      ],
      builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        home: const HomePage());
  }
}
