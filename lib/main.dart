import 'dart:convert';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:state/providers/catprovider.dart';
import 'package:state/providers/counterProvider.dart';
import 'package:state/simple.dart';
import 'package:http/http.dart' as http;
import 'models/news.dart';
import 'models/users.dart';
import 'src/presentation/homepage.dart';

void main() {
  runApp( DevicePreview(
    enabled: false,
     tools: [
        ...DevicePreview.defaultTools,
         
      ],
    builder:(context) => MyApp()));
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

 

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Homepage(), 
        title: 'Flutter Demo',
        theme: ThemeData(
          textTheme: GoogleFonts.openSansTextTheme(Theme.of(context).textTheme),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        
      ),
    );
  }
}

 