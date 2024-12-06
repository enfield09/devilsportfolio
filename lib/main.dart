import 'package:devil/base/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'home/home_view.dart';


void main() async{
 await Supabase.initialize(url: "https://bkveqpsuhyukhbatsmvw.supabase.co",
     anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJrdmVxcHN1aHl1a2hiYXRzbXZ3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzM0MDEyMjEsImV4cCI6MjA0ODk3NzIyMX0.nOSKjTRrx9xdxJJeguD1rZfT1v40BDUWvKCC4k6bkuM');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "TitilliumWeb",
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor)
        ),
      home: const MyHomePage(),
    );
  }
}



