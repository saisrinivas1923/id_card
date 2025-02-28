import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:idcard/configs/colors/app_colors.dart';
import 'package:idcard/widgets/background_screen.dart';

class Registrationscreen extends StatelessWidget {
  const Registrationscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("ID Card",style: TextStyle(color: AppColors.text),),centerTitle: true,),
      drawer: Drawer(),
      body: CurvedBackground(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 200,
                width: 250,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.people_alt_outlined,
                          size: 50,
                          color: AppColors.primary,
                        ),
                        Text("Student",style: TextStyle(color:AppColors.primary,fontSize: 20),),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.button,
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context,'/login');
                              },
                              child: Text("Login"),
                            ),
                            SizedBox(width: 10,),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.button,
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context,'/signup');
                              },
                              child: Text("Signup"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20), // Space between the cards
              SizedBox(
                height: 200,
                width: 250,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.person_outline,
                          size: 50,
                          color:AppColors.primary,
                        ),
                        Text("Faculty",style: TextStyle(color:AppColors.primary,fontSize: 20),),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.button,
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/login');
                              },
                              child: Text("Login"),
                            ),
                            SizedBox(width: 10,),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.button,
                                ),
                                onPressed: ()
                            {
                              Navigator.pushNamed(context,'/facsignup');
                            }, child: Text("Signup"))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
