import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:state/src/presentation/otp_screen.dart';

class NumberScreen extends StatefulWidget {
  const NumberScreen({super.key});

  @override
  State<NumberScreen> createState() => _NumberScreenState();
}

class _NumberScreenState extends State<NumberScreen> {

  final phoneNumberController = TextEditingController();

  @override
  void dispose() {
    
    super.dispose();
    phoneNumberController;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff17b978),
        title: Text(
          "Phone Number",
          style: TextStyle(fontWeight: FontWeight.w700, color: Colors.white),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top:16.0,left: 16 ),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            
            Text("Enter your mobile number"),
            SizedBox(
              height: 20,
            ),
            IntlPhoneField(
              controller: phoneNumberController,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      color: Color(0xff086972),
                      width: 1.0,
                    )),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      color: Colors.white,
                      width: 1.0,
                    )),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                // border: OutlineInputBorder(
                //   borderSide: BorderSide(),
                // ),
              ),
              initialCountryCode: 'KE',
              onChanged: (phone) {
                print(phone.completeNumber);
              },
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
                      print(phoneNumberController.text);
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return OtpScreen(phoneNumber: phoneNumberController.text,);
                      }));
                    },
                    child: Text("Proceed"),
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
