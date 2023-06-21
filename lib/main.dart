import 'package:flutter/material.dart';
import 'package:mobil_app/locator.dart';
import 'package:mobil_app/services/provider/auth_provider.dart';
import 'package:provider/provider.dart';
import 'login_screen/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  setupLocator();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<AuthProvider>(create: (context) => locator.get<AuthProvider>(),)
  ], child: const MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase Auth',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.greenAccent,
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: Colors.deepOrange,
          fontFamily: 'Montserrat',
        ),
      ),
      home: const LoginScreen(),
    );
  }
}
