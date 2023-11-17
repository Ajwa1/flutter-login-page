import 'package:flutter/material.dart';

void main() => runApp(
  const MaterialApp(
    home: HomePage(),
  )
);

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue[900]!,
              Colors.blue[800]!,
              Colors.blue[700]!,
          ]),
        ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 80,),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Text( 
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    'Welcome Back', 
                    style: TextStyle(
                    color: Colors.white,
                    fontSize: 40
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const SizedBox(height: 60),
                    Container(
                      padding: const EdgeInsets.all(30),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [BoxShadow(
                          color: Color.fromRGBO(225, 95, 27, .3),
                          blurRadius: 20,
                          offset: Offset(0, 10)
                        )]
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(
                                color: Colors.grey[200]!
                                ),
                                ),
                            ),
                            child: const TextField(
                                decoration: InputDecoration(
                                hintText:"Email or Phone Number",
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                color: Colors.grey[200]!,
                                )
                                ),
                            ),
                            child: const TextField(
                                decoration: InputDecoration(
                                hintText:" Password",
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40,),
                    const Text("Forget Password", style: TextStyle(color: Colors.grey),),
                    const SizedBox(height: 40,),
                    Container(
                      height: 50,
                      margin: const EdgeInsets.symmetric(horizontal: 50),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.blue[900],
                      ),
                      child: const Center(
                        child: Text("login",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold),),
                      ),
                    ),
                    const SizedBox(height: 50,),
                    const Text("Continue with social media",
                    style: TextStyle(color: Colors.grey),),
                    const SizedBox(height: 30,),
                    Row(
                      children: [
                        Expanded(child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.blue
                          ),
                          child: const Center(
                            child: Text("Facebook",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ),
                        ),
                        const SizedBox(width: 30,),
                        Expanded(child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.blue
                          ),
                          child: const Center(
                            child: Text("Github",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ),
                        ),
                      ],
                    )
                  ],
                ),
                ),
            )
            ),
          ]),
      ),
    );
  }
  }

