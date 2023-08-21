import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:state/src/presentation/screens/navigation.dart';
import 'package:state/src/presentation/welcome_screen.dart';

class PinEntry extends StatefulWidget {
  const PinEntry({super.key});

  @override
  State<PinEntry> createState() => _PinEntryState();
}

class _PinEntryState extends State<PinEntry> {
  var pinCode = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Align items to the center vertically
          crossAxisAlignment: CrossAxisAlignment
              .center, // Align items to the center horizontally
          children: [
            Lottie.asset(
                'assets/welcome.json'),
            // Your items/widgets here
            Text(
              'Welcome To Kirungi Sacco',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Please provide your 4 digit pin to proceed',
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: PinCodeTextField(
                cursorColor: Colors.green,
                length: 4,
                obscureText: false,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 50,
                  fieldWidth: 40,
                  activeFillColor: Colors.white,
                ),
                animationDuration: Duration(milliseconds: 300),

                enableActiveFill: true,

                onCompleted: (v) {
                  print("Completed");
                },
                // onChanged: (value) {
                //   print(value);
                //   setState(() {
                //     currentText = value;
                //   });
                // },
                beforeTextPaste: (text) {
                  print("Allowing to paste $text");
                  //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                  //but you can show anything you want here, like your pop up saying wrong paste format or etc
                  return true;
                },
                appContext: (context),
              ),
            ),
            SizedBox(height: 40,),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff83e85a),
                    minimumSize: const Size.fromHeight(50),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return NavigationScreen();
                    }));
                  },
                  child: Text(
                    "CONFIRM",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            )
          ],
        ),
      ),

      // body: Column(
      //   crossAxisAlignment: CrossAxisAlignment.center,

      //   children: [

      //   Text("Welcome to Kirugi Sacco", style: TextStyle( fontWeight: FontWeight.w600, fontSize: 30),),
      //   SizedBox(height: 20,),
      //   Text("Enter your 4 digit pin to proceed", style: TextStyle(fontSize: 18),),
      //   SizedBox(height: 20,),
      //   Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: 16.0),
      //     child: PinCodeTextField(
      //       cursorColor: Colors.green,
      //     length: 4,
      //     obscureText: false,
      //     animationType: AnimationType.fade,
      //     pinTheme: PinTheme(
      //       shape: PinCodeFieldShape.box,
      //       borderRadius: BorderRadius.circular(5),
      //       fieldHeight: 50,
      //       fieldWidth: 40,
      //       activeFillColor: Colors.white,
      //     ),
      //     animationDuration: Duration(milliseconds: 300),

      //     enableActiveFill: true,

      //     onCompleted: (v) {
      //       print("Completed");
      //     },
      //     // onChanged: (value) {
      //     //   print(value);
      //     //   setState(() {
      //     //     currentText = value;
      //     //   });
      //     // },
      //     beforeTextPaste: (text) {
      //       print("Allowing to paste $text");
      //       //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
      //       //but you can show anything you want here, like your pop up saying wrong paste format or etc
      //       return true;

      //     }, appContext: (context),
      //   ),
      //   ),
      //     Expanded(
      //     child: Align(
      //       alignment: Alignment.bottomCenter,
      //       child: Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: ElevatedButton(
      //           style: ElevatedButton.styleFrom(
      //             backgroundColor: Color(0xff83e85a),
      //             minimumSize: const Size.fromHeight(50),
      //           ),
      //           onPressed: () {
      //             Navigator.push(context, MaterialPageRoute(builder: (context) {
      //               return NavigationScreen();
      //             }));
      //           },
      //           child: Text("CONFIRM", style: TextStyle(fontSize: 18),),
      //         ),
      //       ),
      //     ),
      //   )
      // ],),
    );
  }
}
