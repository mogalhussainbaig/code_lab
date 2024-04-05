import 'package:code_land/screens/login_screen.dart';
import 'package:code_land/utils/constants.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Navigate();
    super.initState();
  }

  void Navigate(){
    Future.delayed(const Duration(seconds: 2)).then((value){
      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Image.asset(codeLandLogo,width: MediaQuery.of(context).size.width/2,height: MediaQuery.of(context).size.height/2,),
      ),
    );
  }
}
