import 'package:car_rental_system/bottom_navbar.dart';
import 'package:car_rental_system/firebase_options.dart';
import 'package:car_rental_system/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );


  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
 void initState() {
   
    super.initState();
    initializerFirebaseMessaging();
    notify();
   
  }

  initializerFirebaseMessaging() async {
     FirebaseMessaging messaging = FirebaseMessaging.instance;
 messaging.getToken().then((value){
  print("Token is :: :: $value");
 }) ;
NotificationSettings settings = await messaging.requestPermission(
  alert: true,
  announcement: false,
  badge: true,
  carPlay: false,
  criticalAlert: false,
  provisional: false,
  sound: true,
);

print('User granted permission: ${settings.authorizationStatus}');
  }


  void notify(){
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    print("Title is ${message.notification?.title}");
});
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home:BottomNavbar1(),
    );
  }
}
