import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:state/src/presentation/pin_entry.dart';

class OtpScreen extends StatelessWidget {
  final String phoneNumber;
  const OtpScreen({super.key, required this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Verification Code",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              "We texted you a code please verify  by filling the spaces below",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: Color(0xff5d5d5a),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Text(
                  "Code sent to: ",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xff5d5d5a),
                  ),
                ),
                Text(phoneNumber, style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.blue,
                  ),)
              ],
            ),
            SizedBox(height: 40),
            OtpTextField(
              numberOfFields: 5,
              borderColor: Color(0xff086972),
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Verification Code"),
                        content: Text('Code entered is $verificationCode'),
                      );
                    });
              }, // end onSubmit
            ),
                SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Didn't receive a code? ", style: TextStyle(color: Colors.red),),
                  ElevatedButton(onPressed:(){}, child: Text("Resend")),
                ],
              ),
            ),
            
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff83e85a),
                      minimumSize: const Size.fromHeight(50),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return PinEntry();
                      }));
                    },
                    child: Text(
                      "CONFIRM",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
