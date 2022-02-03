import 'package:flutter/material.dart';
import '../theme.dart';
// import 'package:flutter_basic/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      body: Center(
        child: SingleChildScrollView(
          
          child: Column(
            children: [ 
              const SizedBox(height: 50,),
              const Text('Profile Picture',
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w600
                )
              ),
              const SizedBox(height: 50,),
              Image.asset('assets/images/primary.png', width: 140),
              const SizedBox(height: 16,),
              const Text('Erico Lah...',
                style: TextStyle( 
                  color: primaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w500
                )
              ),
              const SizedBox(height: 4,),
              const Text('Front End Developer',
                style: TextStyle(
                  color: greyColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500
                )
              ),
              const SizedBox(height: 70,),
              Wrap(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                alignment: WrapAlignment.spaceAround,
                spacing: 38,
                runSpacing: 40,
                children:[
                  Image.asset('assets/images/item1.png', width: 80),
                  Image.asset('assets/images/item2.png', width: 80),
                  Image.asset('assets/images/item3.png', width: 80),
                  Image.asset('assets/images/item4.png', width: 80),
                  Image.asset('assets/images/item5.png', width: 80),
                  Image.asset('assets/images/item6.png', width: 80),
                ],
              ),
              const SizedBox(height: 70,),
              SizedBox(
                width: 224,
                height: 55,
                // ignore: deprecated_member_use
                child: RaisedButton(
                  onPressed: (){
                    showModalBottomSheet(
                      context: context,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)
                      ),
                      builder: (context){
                        return Container(
                          height: 290,
                          padding: const EdgeInsets.symmetric(vertical: 50),
                          child: Column(
                            children:[
                              const Text('Update Photo',
                                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500, color: primaryColor)
                              ),
                              const SizedBox(height: 12,),
                              const Text('You are only able to change\nthe picture profile once',
                                style: TextStyle(fontSize: 18, color: greyColor,),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 30,),
                              SizedBox(
                                width: 224,
                                height: 55,
                                // ignore: deprecated_member_use
                                child: RaisedButton(
                                  onPressed: ()=> Navigator.pop(context),
                                  color: orangeColor,
                                  child: const Text('Continue',
                                    style: TextStyle(color: whiteColor, fontSize: 16, fontWeight: FontWeight.w500)
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),
                              )
                            ]
                          ),
                        );
                      });
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  color: whiteColor,
                  child: const Text(
                    'Update Profile',
                    style:TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ) 
              ),
              const SizedBox(height: 70,),
            ]
          )
        )
      )
    );
  }
}