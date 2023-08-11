import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:state/src/presentation/number.dart';

@RoutePage()
class Homepage extends StatelessWidget {
  const Homepage({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
          child: Column(
            children: [
              Lottie.asset(
                  'assets/money.json'),
             
              Text("Welcome to Kirungi Sacco",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 30,
                  )),
              SizedBox(
                height: 20,
              ),
              Text(
                "Where smart finance meets effortless asset management\nEmpowering you to seize control of your financial journey!",
                style: TextStyle(
                    color: Color(0xff5d5d5a),
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
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
                          return NumberScreen();
                        }));
                      },
                      child: Text("Proceed", style: TextStyle(color: Colors.black54,fontSize: 18, fontWeight: FontWeight.bold )),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
