import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb){
    await Firebase.initializeApp(options: FirebaseOptions(apiKey: "AIzaSyCVpLy1ki-26Ef0JLTMqoBB811KCSk0PDg",
        authDomain: "amjad-base.firebaseapp.com",
        projectId: "amjad-base",
        storageBucket: "amjad-base.firebasestorage.app",
        messagingSenderId: "226854017190",
        appId: "1:226854017190:web:f8eff11f67c29ab14ebc67",
        measurementId: "G-F4KNRSPZZ5"));
  }
  else{
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const FlashPage(),
    );
  }
}
class FlashPage extends StatelessWidget {
  const FlashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/logo.jpeg",width: 250,height: 250,),
              SizedBox(height: 10,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  LoadingAnimationWidget.inkDrop(color: Colors.green, size: 30),

                ]
              ),
              SizedBox(height: 30,),
              Text("إنتظار",style: GoogleFonts.reemKufiFun(fontSize: 25,fontWeight: FontWeight.normal,color: Colors.green),)


            ],
          )),

    );
  }
}

