import 'package:flutter/material.dart';

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({super.key});

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}
bool isSecuured = true;
Widget EyeIcon = Icon(Icons.remove_red_eye);


class _MyLoginPageState extends State<MyLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF5FCFF) ,
     appBar : AppBar(
          elevation: 8.0,
          backgroundColor: const Color(0xFF050A68) ,
          title: const Text( 
            "Login Page" , 
             style: TextStyle(
               color: Colors.white ,
               fontSize: 25,
               fontWeight: FontWeight.w500 ,
               fontStyle: FontStyle.italic ,
               letterSpacing: 1.5,
             ),
          ),
             centerTitle: true,
            flexibleSpace: Container(
            decoration: const BoxDecoration(
            gradient: RadialGradient(
            colors: [Color(0xFF082C8D), Color(0xFF5C0606)],
            center: Alignment.center, 
            radius: 7.5, 
                 ),
              ),
            ),
        ),  


      body: SingleChildScrollView( 
          child: Center(
            child: Column (
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Image.asset(
                'assets/logo BR.png' ,
                width: 450,
                height: 400,
               ),
               const SizedBox(height: 2),
               Padding(
                 padding: const EdgeInsets.all(20.0),
                 child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Email Adress" ,
                        prefixIcon: Icon(
                          Icons.account_circle 
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(100))),
                        )
                      ),

                      const SizedBox(height: 20,) ,

                       TextFormField(
                      obscureText: isSecuured,

                      decoration: InputDecoration(
                        labelText: "Password" ,
                        prefixIcon: const Icon(
                          Icons.lock_outlined 
                        ),
                        suffixIcon: IconButton(
                          icon: EyeIcon, 
                          onPressed: () { 
                            setState(() {
                              isSecuured = !isSecuured;
                              if(isSecuured == true) {
                                EyeIcon = Icon(Icons.remove_red_eye);
                              } else {
                                EyeIcon = const Icon(Icons.visibility_off);
                              }
                            });
                           },
                          ),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(100))),
                        )
                      ),
                    
                   const SizedBox(height: 35,) ,

                   InkWell(
                    child: Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                     colors: [Color(0xFF42A5F5), Color(0xFF050A68)], 
                     begin: Alignment.centerLeft,
                     end: Alignment.centerRight,
                     ),
                     borderRadius: BorderRadius.circular(100)
                    ),
                    padding: const EdgeInsets.all(10),
                    width: 350 ,
                    height: 50,
                    child: const Row (
                      mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                         Icon(
                          Icons.login_rounded,
                          color: Colors.white,
                          ),
                        SizedBox(width: 10,),
                        Text ("Login" ,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                        ),
                        ),
                         ],
                    ),
                    ),
                    onTap: (){
                      print("Login Pressed");
                    },
                   ),
              



                  ],
                  
                 ),
               )
               ],
            ),
          ),
      ),
      );
  }
}