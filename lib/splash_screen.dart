import 'package:flutter/material.dart';
import 'package:splash_screen/registrationform.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  _Splash_ScreenState createState() => _Splash_ScreenState();
}



class _Splash_ScreenState extends State<Splash_Screen> {


  /////------******>>>>>>>> Animated Splash Screen using the Dependency
  /////------******>>>>>>>> this code use in the main.dart file home section

  // AnimatedSplashScreen(
  // duration: 3000,
  // splash: Icons.home,
  // nextScreen: RegistrationForm(),
  // splashTransition: SplashTransition.scaleTransition,
  // backgroundColor: Colors.blue
  // ),

//// custome page splash screen ***********>>>>>>>>>>>>>>>
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigatetoLandPage();
  }

  navigatetoLandPage() async{
    await Future.delayed(Duration(microseconds: 2000),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>RegistrationForm()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(color: Colors.red),
            ),
            SizedBox(height: 5,),
            Container(
              child: Text("Splash Screen",
              style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
